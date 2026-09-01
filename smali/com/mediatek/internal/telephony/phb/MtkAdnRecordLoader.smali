.class public Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
.super Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.source "MtkAdnRecordLoader.java"


# static fields
.field private static blacklist ADN_FILE_SIZE:I = 0x0

.field static final blacklist EVENT_PHB_LOAD_ALL_DONE:I = 0x68

.field static final blacklist EVENT_PHB_LOAD_DONE:I = 0x67

.field static final blacklist EVENT_PHB_QUERY_STAUTS:I = 0x69

.field static final blacklist EVENT_UPDATE_PHB_RECORD_DONE:I = 0x65

.field static final blacklist EVENT_VERIFY_PIN2:I = 0x66

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkRecordLoader"


# instance fields
.field private blacklist mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    const/16 v0, 0xfa

    sput v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->ADN_FILE_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 0
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 81
    return-void
.end method

.method private blacklist canUseGsm7Bit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alphaId"    # Ljava/lang/String;

    .line 498
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist encodeATUCS(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v0, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 508
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "hexInt":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_0

    .line 510
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 512
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .end local v2    # "hexInt":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAdnRecordFromPhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;)Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .locals 7
    .param p1, "entry"    # Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parse Adn entry :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRecordLoader"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 621
    .local v0, "ba":[B
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 622
    const-string v3, "entry.alphaId is null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-object v2

    .line 627
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string v6, "utf-16be"

    invoke-direct {v3, v0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 632
    .local v1, "alphaId":Ljava/lang/String;
    nop

    .line 636
    iget v2, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    const/16 v3, 0x91

    if-ne v2, v3, :cond_1

    .line 637
    iget-object v2, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "number":Ljava/lang/String;
    goto :goto_0

    .line 639
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    iget-object v2, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 643
    .restart local v2    # "number":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x3f

    const/16 v4, 0x4e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 645
    const/16 v3, 0x70

    const/16 v4, 0x2c

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 647
    const/16 v3, 0x77

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 649
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    iget v5, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 628
    .end local v1    # "alphaId":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 629
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v1, v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    return-object v2
.end method

.method private blacklist getPhbStorageType(I)I
    .locals 2
    .param p1, "ef"    # I

    .line 519
    const/4 v0, -0x1

    .line 520
    .local v0, "type":I
    const/16 v1, 0x6f3a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x6f3b

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    const/4 v0, 0x1

    .line 526
    goto :goto_0

    .line 522
    :cond_1
    const/4 v0, 0x0

    .line 523
    nop

    .line 533
    :goto_0
    return v0
.end method

.method private blacklist readEntryFromModem(I[I)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "readInfo"    # [I

    .line 594
    array-length v0, p2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readEntryToModem, invalid paramters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRecordLoader"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 606
    :cond_0
    const/4 v0, 0x0

    aget v1, p2, v0

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0x1

    .line 607
    .local v1, "eIndex":I
    const/4 v2, 0x2

    aget v3, p2, v2

    if-le v1, v3, :cond_1

    .line 608
    aget v1, p2, v2

    .line 611
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    aget v0, p2, v0

    const/16 v3, 0x68

    .line 612
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 611
    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->readPhbEntry(IIILandroid/os/Message;)V

    .line 613
    return-void
.end method

.method private blacklist updatePhb(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V
    .locals 3
    .param p1, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p2, "type"    # I

    .line 489
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPin2:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPin2:Ljava/lang/String;

    const/16 v2, 0x66

    invoke-virtual {p0, v2, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->writeEntryToModem(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V

    .line 495
    :goto_0
    return-void
.end method

.method private blacklist writeEntryToModem(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V
    .locals 7
    .param p1, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p2, "type"    # I

    .line 537
    const/16 v0, 0x81

    .line 538
    .local v0, "ton":I
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "alphaId":Ljava/lang/String;
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v5, ""

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 543
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 545
    const-string v3, "MtkRecordLoader"

    const-string v4, "There are multiple \'+\' in number"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    const/16 v0, 0x91

    .line 549
    const-string v3, "+"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 552
    :cond_1
    const/16 v3, 0x4e

    const/16 v4, 0x3f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 554
    const/16 v3, 0x2c

    const/16 v4, 0x70

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 556
    const/16 v3, 0x3b

    const/16 v4, 0x77

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->encodeATUCS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    new-instance v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/phb/PhbEntry;-><init>()V

    .line 568
    .local v3, "entry":Lcom/mediatek/internal/telephony/phb/PhbEntry;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x81

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 580
    :cond_2
    iput p2, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->type:I

    .line 581
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 582
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 583
    iput v0, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    .line 584
    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    goto :goto_1

    .line 570
    :cond_3
    :goto_0
    iput p2, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->type:I

    .line 571
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 574
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    iput-object v1, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 577
    iput v0, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    .line 578
    iput-object v2, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    .line 587
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v5, 0x65

    .line 588
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 587
    invoke-virtual {v4, v3, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->writePhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;Landroid/os/Message;)V

    .line 590
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 175
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "MtkRecordLoader"

    const/4 v4, 0x0

    :try_start_0
    iget v0, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "load failed"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1c

    const-string v8, ""

    if-eq v0, v6, :cond_1a

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eq v0, v9, :cond_16

    const/4 v5, 0x4

    const/4 v11, 0x5

    if-eq v0, v5, :cond_e

    if-eq v0, v11, :cond_b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 388
    :pswitch_0
    :try_start_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 389
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 391
    .local v5, "info":[I
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1

    .line 396
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v11

    .line 397
    .local v11, "type":I
    new-array v9, v9, [I

    .line 398
    .local v9, "readInfo":[I
    aput v7, v9, v10

    .line 399
    aget v10, v5, v10

    aput v10, v9, v7

    .line 400
    aget v10, v5, v7

    aput v10, v9, v6

    .line 402
    new-instance v10, Ljava/util/ArrayList;

    aget v12, v9, v6

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 403
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    aget v12, v9, v6

    if-ge v10, v12, :cond_0

    .line 405
    new-instance v12, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    iget v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    add-int/lit8 v14, v10, 0x1

    invoke-direct {v12, v13, v14, v8, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 406
    .local v12, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v13, v10, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 403
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 409
    .end local v10    # "i":I
    .end local v12    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_0
    invoke-direct {v1, v11, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->readEntryFromModem(I[I)V

    .line 410
    iput v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 411
    goto/16 :goto_5

    .line 392
    .end local v9    # "readInfo":[I
    .end local v11    # "type":I
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "PHB Query Info Error"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 414
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "info":[I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 415
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, [I

    .line 416
    .local v5, "readInfo":[I
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 418
    .local v8, "entries":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_7

    .line 423
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v11, v8

    if-ge v9, v11, :cond_3

    .line 424
    aget-object v11, v8, v9

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;)Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-result-object v11

    .line 425
    .local v11, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v11, :cond_2

    .line 426
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    iget v13, v11, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    sub-int/2addr v13, v7

    invoke-virtual {v12, v13, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    aget v12, v5, v7

    sub-int/2addr v12, v7

    aput v12, v5, v7

    .line 423
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 431
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v10, "getAdnRecordFromPhbEntry return null"

    .line 433
    invoke-static {v6}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    invoke-direct {v7, v10, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 437
    .end local v9    # "i":I
    .end local v11    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_3
    aget v9, v5, v10

    add-int/lit8 v9, v9, 0xa

    aput v9, v5, v10

    .line 439
    aget v9, v5, v7

    if-ltz v9, :cond_6

    .line 445
    aget v7, v5, v7

    if-eqz v7, :cond_5

    aget v7, v5, v10

    aget v6, v5, v6

    if-lt v7, v6, :cond_4

    goto :goto_2

    .line 450
    :cond_4
    iget v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v6

    .line 451
    .local v6, "type":I
    invoke-direct {v1, v6, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->readEntryFromModem(I[I)V

    .line 453
    goto/16 :goto_5

    .line 447
    .end local v6    # "type":I
    :cond_5
    :goto_2
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    iput-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 448
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_5

    .line 440
    :cond_6
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "the read entries is not sync with query status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 442
    invoke-static {v6}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    invoke-direct {v9, v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v9

    .line 419
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_7
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "PHB Read Entries Error"

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 367
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "readInfo":[I
    .end local v8    # "entries":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 370
    .local v5, "entries":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 375
    aget-object v6, v5, v10

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;)Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-result-object v6

    .line 376
    .local v6, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iput-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 377
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 379
    goto/16 :goto_5

    .line 371
    .end local v6    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_8
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "PHB Read an entry Error"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 354
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "entries":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 355
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 357
    .local v5, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_9

    .line 362
    iget v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->writeEntryToModem(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V

    .line 363
    iput v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 364
    goto/16 :goto_5

    .line 358
    :cond_9
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "PHB Verify PIN2 error"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 344
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 345
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_a

    .line 349
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 350
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 351
    goto/16 :goto_5

    .line 346
    :cond_a
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "update PHB EF record failed"

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v5

    .line 239
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 240
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v5, 0x0

    .line 241
    .local v5, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 242
    .local v6, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_d

    .line 246
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v7

    move-object v5, v7

    .line 247
    if-nez v5, :cond_c

    .line 252
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 253
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 254
    goto/16 :goto_5

    .line 248
    :cond_c
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "update EF adn record failed for sw"

    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 243
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_d
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "update EF adn record failed"

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 177
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v6    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 178
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 180
    .local v5, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_15

    .line 185
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    .line 191
    .local v8, "recordSize":[I
    iget v12, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    .line 193
    .local v12, "recordIndex":I
    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 194
    add-int/lit8 v13, v12, -0x1

    sget v14, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->ADN_FILE_SIZE:I

    rem-int/2addr v13, v14

    add-int/lit8 v12, v13, 0x1

    .line 197
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[AdnRecordLoader] recordIndex :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    array-length v13, v8

    if-ne v13, v9, :cond_14

    aget v6, v8, v6

    if-gt v12, v6, :cond_14

    .line 203
    const-string v6, "[AdnRecordLoader] EVENT_EF_LINEAR_RECORD_SIZE_DONE safe "

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v6, 0x1

    .line 206
    .local v6, "errorNum":I
    const-string v9, "in EVENT_EF_LINEAR_RECORD_SIZE_DONE,call adn.buildAdnString"

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    aget v9, v8, v10

    invoke-virtual {v5, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->buildAdnString(I)[B

    move-result-object v9

    .line 209
    .local v9, "data":[B
    if-nez v9, :cond_13

    .line 210
    const-string v7, "data is null"

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getErrorNumber()I

    move-result v7

    move v6, v7

    .line 212
    const/4 v7, -0x1

    if-eq v6, v7, :cond_12

    .line 216
    const/4 v7, -0x2

    if-eq v6, v7, :cond_11

    .line 220
    const/16 v7, -0xf

    if-eq v6, v7, :cond_10

    .line 226
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 227
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 228
    goto/16 :goto_5

    .line 222
    :cond_10
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v10, "wrong ADN format"

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 217
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_11
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v10, "data is null and TEXT_STRING_TOO_LONG"

    const/16 v11, 0x1f6

    .line 218
    invoke-static {v11}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 213
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_12
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v10, "data is null and DIAL_STRING_TOO_LONG"

    const/16 v11, 0x1f5

    .line 214
    invoke-static {v11}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 232
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_13
    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v14, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    iget v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v15

    iget-object v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 232
    move/from16 v16, v12

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 235
    iput v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 237
    goto/16 :goto_5

    .line 200
    .end local v6    # "errorNum":I
    .end local v9    # "data":[B
    :cond_14
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "get wrong EF record size format"

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 181
    .end local v8    # "recordSize":[I
    .end local v12    # "recordIndex":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_15
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "get EF record size failed"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 314
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 315
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    .line 317
    .local v8, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_19

    .line 321
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 322
    iput-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 323
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 325
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "s":I
    :goto_3
    if-ge v5, v9, :cond_18

    .line 326
    new-instance v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-direct {v10, v11, v12, v13}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(II[B)V

    .line 327
    .local v10, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->hasExtendedRecord()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 334
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    add-int/2addr v11, v7

    iput v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 336
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v12, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    iget v13, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    .line 338
    invoke-virtual {v1, v6, v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 336
    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 325
    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 341
    .end local v5    # "i":I
    .end local v9    # "s":I
    .end local v10    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_18
    goto/16 :goto_5

    .line 318
    :cond_19
    new-instance v6, Ljava/lang/RuntimeException;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 287
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 288
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 289
    .local v5, "data":[B
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 291
    .local v6, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_1b

    .line 292
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADN extension EF: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    .line 293
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 292
    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v6, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->appendExtRecord([B)V

    goto :goto_4

    .line 304
    :cond_1b
    const-string v9, "Failed to read ext record. Clear the number now."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v6, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setNumber(Ljava/lang/String;)V

    .line 308
    :goto_4
    iget v8, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    sub-int/2addr v8, v7

    iput v8, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 311
    goto :goto_5

    .line 256
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    .end local v6    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_1c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 257
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    .line 259
    .local v8, "data":[B
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_1f

    .line 270
    new-instance v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    iget v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    iget v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    invoke-direct {v5, v9, v10, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(II[B)V

    .line 271
    .local v5, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iput-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 273
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->hasExtendedRecord()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 278
    iput v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 280
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    iget v10, v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    .line 282
    invoke-virtual {v1, v6, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 280
    invoke-virtual {v7, v9, v10, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "data":[B
    :cond_1d
    :goto_5
    nop

    .line 477
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v0, :cond_1e

    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 478
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 481
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 482
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 484
    :cond_1e
    return-void

    .line 260
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v8    # "data":[B
    :cond_1f
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 458
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "data":[B
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 459
    .local v0, "exc":Ljava/lang/RuntimeException;
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v5, :cond_21

    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage RuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_20

    .line 463
    const-string v5, "handleMessage Null RuntimeException"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_6

    .line 467
    :cond_20
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 469
    :goto_6
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 472
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 474
    :cond_21
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist loadAllFromEF(IILandroid/os/Message;)V
    .locals 4
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 115
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    .line 116
    iput p2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    .line 117
    iput-object p3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 119
    const-string v0, "MtkRecordLoader"

    const-string v1, "Usim :loadEFLinearFixedAll"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 121
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x69

    .line 124
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->queryPhbStorageInfo(ILandroid/os/Message;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 127
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 128
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 126
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 130
    :goto_0
    return-void
.end method

.method public blacklist loadFromEF(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 90
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    .line 91
    iput p2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    .line 92
    iput p3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    .line 93
    iput-object p4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 96
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x67

    .line 99
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 97
    invoke-virtual {v1, v0, p3, p3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->readPhbEntry(IIILandroid/os/Message;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 102
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 103
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 101
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 105
    :goto_0
    return-void
.end method

.method public blacklist updateEF(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .line 147
    iput p2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    .line 148
    iput p3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    .line 149
    iput p4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    .line 150
    iput-object p6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 151
    iput-object p5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 153
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 154
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->updatePhb(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 158
    invoke-virtual {p0, v3, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 157
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 160
    :goto_0
    return-void
.end method
