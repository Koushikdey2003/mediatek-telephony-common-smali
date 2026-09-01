.class public final Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;
.super Ljava/lang/Object;
.source "MtkSMSDispatcherUtil.java"


# static fields
.field private static final blacklist ENG:Z

.field static final blacklist TAG:Ljava/lang/String; = "MtkSMSDispatcherUtil"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 66
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->ENG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "isCdma"    # Z
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .line 275
    if-eqz p0, :cond_0

    .line 276
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->calculateLengthCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLengthCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 305
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 291
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist checkPhoneNumber(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 479
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist checkPhoneNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .line 484
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 485
    return v0

    .line 488
    :cond_0
    const-string v1, "MtkSMSDispatcherUtil"

    const-string v2, "checkPhoneNumber"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 490
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->checkPhoneNumber(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    nop

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 497
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    return v0
.end method

.method public static blacklist getPackageNameViaProcessId(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 355
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 356
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 358
    .local v2, "rsp":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 359
    aget-object v1, v0, v4

    move-object/from16 v7, p0

    goto :goto_5

    .line 360
    :cond_0
    array-length v3, v0

    if-le v3, v5, :cond_6

    .line 361
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 362
    .local v3, "callingPid":I
    const/4 v5, 0x0

    .line 364
    .local v5, "index":Ljava/util/Iterator;
    const-string v6, "activity"

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 366
    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 367
    .local v8, "processList":Ljava/util/List;
    if-eqz v8, :cond_7

    .line 368
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 369
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 370
    nop

    .line 371
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 372
    .local v9, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v10, :cond_5

    .line 373
    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v10

    move v12, v4

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    .line 374
    .local v13, "pkgInProcess":Ljava/lang/String;
    array-length v14, v0

    move v15, v4

    :goto_2
    if-ge v15, v14, :cond_2

    aget-object v4, v0, v15

    .line 375
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 376
    move-object v1, v4

    .line 377
    goto :goto_3

    .line 374
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 380
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 381
    goto :goto_4

    .line 373
    .end local v13    # "pkgInProcess":Ljava/lang/String;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 384
    :cond_4
    :goto_4
    goto :goto_5

    .line 386
    .end local v9    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 360
    .end local v3    # "callingPid":I
    .end local v5    # "index":Ljava/util/Iterator;
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v8    # "processList":Ljava/util/List;
    :cond_6
    move-object/from16 v7, p0

    .line 390
    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    .line 391
    move-object v2, v1

    .line 394
    :cond_8
    sget-boolean v3, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->ENG:Z

    if-eqz v3, :cond_9

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageNameViaProcessId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkSMSDispatcherUtil"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_9
    return-object v2
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "isCdma"    # Z
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "destinationPort"    # I
    .param p4, "originalPort"    # I
    .param p5, "data"    # [B
    .param p6, "statusReportRequested"    # Z

    .line 327
    if-eqz p0, :cond_0

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 331
    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "isCdma"    # Z
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "message"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 225
    if-eqz p0, :cond_0

    .line 226
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "isCdma"    # Z
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 84
    if-eqz p0, :cond_0

    .line 85
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "isCdma"    # Z
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "priority"    # I
    .param p7, "validityPeriod"    # I

    .line 121
    if-eqz p0, :cond_0

    .line 122
    invoke-static/range {p1 .. p6}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    invoke-static {p1, p2, p3, p4, p7}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "isCdma"    # Z
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "header"    # [B
    .param p6, "encoding"    # I
    .param p7, "languageTable"    # I
    .param p8, "languageShiftTable"    # I
    .param p9, "validityPeriod"    # I

    .line 460
    if-nez p0, :cond_0

    .line 461
    invoke-static/range {p1 .. p9}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 465
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "isCdma"    # Z
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "smsHeaderData"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 415
    if-nez p0, :cond_0

    .line 416
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "message"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 244
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 180
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "priority"    # I

    .line 208
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originalPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 349
    invoke-static/range {p0 .. p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "message"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 260
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .line 142
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "validityPeriod"    # I

    .line 163
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .line 473
    invoke-static/range {p0 .. p8}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "smsHeaderData"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 439
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method
