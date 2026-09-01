.class public Lcom/mediatek/internal/telephony/MtkWapPushOverSms;
.super Lcom/android/internal/telephony/WapPushOverSms;
.source "MtkWapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    }
.end annotation


# static fields
.field private static final blacklist ENG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "Mtk_WAP_PUSH"


# instance fields
.field private blacklist bundle:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 125
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method private blacklist decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    .locals 25
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 141
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;-><init>(Lcom/mediatek/internal/telephony/MtkWapPushOverSms;Lcom/mediatek/internal/telephony/MtkWapPushOverSms$1;)V

    move-object v3, v0

    .line 142
    .local v3, "result":Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    const-string v4, "Mtk_WAP_PUSH"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rx: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "index":I
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "index":I
    .local v5, "index":I
    const/4 v6, 0x2

    :try_start_0
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 147
    .local v0, "transactionId":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "index":I
    .local v7, "index":I
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 150
    .local v5, "pduType":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    .line 152
    .local v8, "phoneId":I
    const/4 v9, -0x1

    const/4 v10, 0x6

    const/4 v11, 0x1

    if-eq v5, v10, :cond_5

    const/4 v12, 0x7

    if-eq v5, v12, :cond_5

    .line 154
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e00c3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move v7, v13

    .line 156
    const-string v13, "Received non-PUSH WAP PDU. Type = "

    if-eq v7, v9, :cond_3

    .line 157
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "index":I
    .local v14, "index":I
    :try_start_1
    aget-byte v7, v2, v7

    and-int/lit16 v0, v7, 0xff

    .line 158
    add-int/lit8 v7, v14, 0x1

    .end local v14    # "index":I
    .restart local v7    # "index":I
    aget-byte v14, v2, v14

    and-int/lit16 v5, v14, 0xff

    .line 159
    sget-boolean v14, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v14, :cond_1

    .line 160
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "index = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " PDU Type = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " transactionID = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1
    if-eq v5, v10, :cond_5

    if-eq v5, v12, :cond_5

    .line 166
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/internal/telephony/OplusRlog$Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_2
    iput v11, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 168
    return-object v3

    .line 171
    :cond_3
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/internal/telephony/OplusRlog$Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_4
    iput v11, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 173
    return-object v3

    .line 178
    :cond_5
    move/from16 v24, v5

    move v5, v0

    move v0, v7

    move/from16 v7, v24

    .local v0, "index":I
    .local v5, "transactionId":I
    .local v7, "pduType":I
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v10

    const-class v12, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v10

    .line 179
    .local v10, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    nop

    .line 180
    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v12

    check-cast v12, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;

    .line 188
    .local v12, "pduDecoder":Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;
    invoke-virtual {v12, v0}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 189
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v9, :cond_6

    const-string v9, "Received PDU. Header Length error."

    invoke-static {v4, v9}, Lcom/android/internal/telephony/OplusRlog$Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_6
    iput v6, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 191
    return-object v3

    .line 193
    :cond_7
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValue32()J

    move-result-wide v13

    long-to-int v13, v13

    .line 194
    .local v13, "headerLength":I
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getDecodedDataLength()I

    move-result v14

    add-int/2addr v0, v14

    .line 196
    move v14, v0

    .line 210
    .local v14, "headerStartIndex":I
    invoke-virtual {v12, v0}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeContentType(I)Z

    move-result v15

    if-nez v15, :cond_9

    .line 211
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v9, :cond_8

    const-string v9, "Received PDU. Header Content-Type error."

    invoke-static {v4, v9}, Lcom/android/internal/telephony/OplusRlog$Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_8
    iput v6, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 213
    return-object v3

    .line 216
    :cond_9
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, "mimeType":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValue32()J

    move-result-wide v16

    .line 218
    .local v16, "binaryContentType":J
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getDecodedDataLength()I

    move-result v18

    add-int v6, v0, v18

    .line 220
    .end local v0    # "index":I
    .local v6, "index":I
    new-array v0, v13, [B

    move-object/from16 v18, v0

    .line 221
    .local v18, "header":[B
    move-object/from16 v9, v18

    .end local v18    # "header":[B
    .local v9, "header":[B
    array-length v0, v9

    const/4 v11, 0x0

    invoke-static {v2, v14, v9, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    sub-int v0, v13, v6

    add-int/2addr v0, v14

    invoke-virtual {v12, v6, v0}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeHeaders(II)V

    .line 228
    if-eqz v15, :cond_a

    const-string v0, "application/vnd.wap.coc"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 229
    move-object/from16 v0, p1

    move-object v11, v0

    move-object/from16 v20, v10

    move/from16 v21, v14

    .local v0, "intentData":[B
    goto :goto_0

    .line 231
    .end local v0    # "intentData":[B
    :cond_a
    add-int v0, v14, v13

    .line 232
    .local v0, "dataIndex":I
    array-length v11, v2

    sub-int/2addr v11, v0

    new-array v11, v11, [B

    .line 233
    .local v11, "intentData":[B
    move-object/from16 v20, v10

    .end local v10    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .local v20, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    array-length v10, v11

    move/from16 v21, v14

    const/4 v14, 0x0

    .end local v14    # "headerStartIndex":I
    .local v21, "headerStartIndex":I
    invoke-static {v2, v0, v11, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    .end local v0    # "dataIndex":I
    :goto_0
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    move-object v10, v0

    .line 237
    .local v10, "subIds":[I
    if-eqz v10, :cond_b

    array-length v0, v10

    if-lez v0, :cond_b

    const/4 v0, 0x0

    aget v0, v10, v0

    goto :goto_1

    .line 238
    :cond_b
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v14, v0

    .line 242
    .local v14, "subId":I
    const/16 v19, 0x0

    .line 244
    .local v19, "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :try_start_2
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v2

    invoke-direct {v0, v11, v2}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v19, v0

    .line 247
    move-object/from16 v22, v10

    move-object/from16 v0, v19

    goto :goto_2

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v10

    .end local v10    # "subIds":[I
    .local v22, "subIds":[I
    const-string v10, "Unable to parse PDU: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    .line 249
    .end local v19    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v0, "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_2
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    const/16 v10, 0x82

    if-ne v2, v10, :cond_e

    .line 250
    move-object v2, v0

    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;

    .line 251
    .local v2, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    if-eqz v10, :cond_d

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    move-object/from16 v23, v2

    .end local v2    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .local v23, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/internal/telephony/OplusRlog$BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 253
    const/4 v2, 0x1

    iput v2, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 257
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mContext:Landroid/content/Context;

    .line 258
    invoke-static {v10}, Lcom/android/internal/telephony/IOplusInboundSmsHandler;->checkMmsApkInstalled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 259
    iput-boolean v2, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->isBlock:Z

    goto :goto_3

    .line 263
    :cond_c
    return-object v3

    .line 251
    .end local v23    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v2    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    :cond_d
    move-object/from16 v23, v2

    .line 278
    .end local v2    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    :cond_e
    :goto_3
    add-int v2, v6, v13

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    invoke-virtual {v12, v6, v2}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 279
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValue32()J

    move-result-wide v1

    long-to-int v6, v1

    .line 280
    invoke-virtual {v12, v6}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 281
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "wapAppId":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 283
    move-object v10, v1

    .end local v1    # "wapAppId":Ljava/lang/String;
    .local v10, "wapAppId":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValue32()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .end local v10    # "wapAppId":Ljava/lang/String;
    .restart local v1    # "wapAppId":Ljava/lang/String;
    goto :goto_4

    .line 282
    :cond_f
    move-object v10, v1

    .line 285
    :goto_4
    iput-object v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    .line 286
    if-nez v15, :cond_10

    .line 287
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_10
    move-object v2, v15

    .line 288
    .local v2, "contentType":Ljava/lang/String;
    :goto_5
    iput-object v2, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    .line 289
    sget-boolean v10, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v10, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    .end local v6    # "index":I
    .local v18, "index":I
    const-string v6, "appid found: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/telephony/OplusRlog$Rlog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .end local v18    # "index":I
    .restart local v6    # "index":I
    :cond_11
    move/from16 v18, v6

    .line 292
    .end local v1    # "wapAppId":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v6    # "index":I
    .restart local v18    # "index":I
    :goto_6
    move/from16 v6, v18

    .end local v18    # "index":I
    .restart local v6    # "index":I
    :cond_12
    iput v14, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->subId:I

    .line 293
    iput v8, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->phoneId:I

    .line 294
    iput-object v0, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 295
    iput-object v15, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 296
    iput v5, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->transactionId:I

    .line 297
    iput v7, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->pduType:I

    .line 298
    iput-object v9, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->header:[B

    .line 299
    iput-object v11, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->intentData:[B

    .line 300
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    .line 301
    const/4 v1, -0x1

    iput v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 302
    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->headerList:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 308
    .end local v0    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v5    # "transactionId":I
    .end local v6    # "index":I
    .end local v7    # "pduType":I
    .end local v8    # "phoneId":I
    .end local v9    # "header":[B
    .end local v11    # "intentData":[B
    .end local v12    # "pduDecoder":Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;
    .end local v13    # "headerLength":I
    .end local v14    # "subId":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v16    # "binaryContentType":J
    .end local v20    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .end local v21    # "headerStartIndex":I
    .end local v22    # "subIds":[I
    goto :goto_7

    .line 303
    :catch_1
    move-exception v0

    .line 306
    .local v0, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x2

    iput v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 309
    .end local v0    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_7
    return-object v3
.end method


# virtual methods
.method public blacklist dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 18
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 322
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p3

    invoke-direct {v1, v2, v11}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;

    move-result-object v12

    .line 323
    .local v12, "result":Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    iget v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    const/4 v13, -0x1

    if-eq v0, v13, :cond_0

    .line 324
    iget v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    return v0

    .line 334
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 335
    .local v14, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v14, :cond_1

    .line 336
    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sget-object v3, Lcom/android/internal/telephony/IOplusInboundSmsHandler;->DEFAULT:Lcom/android/internal/telephony/IOplusInboundSmsHandler;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusInboundSmsHandler;

    .line 337
    .local v0, "impl":Lcom/android/internal/telephony/IOplusInboundSmsHandler;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IOplusInboundSmsHandler;->oemSetDefaultWappush(Landroid/content/Context;)V

    .line 345
    .end local v0    # "impl":Lcom/android/internal/telephony/IOplusInboundSmsHandler;
    :cond_1
    iget-object v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    const-string v3, "wspHeaders"

    const-string v4, "contentTypeParameters"

    const-string v5, "data"

    const-string v6, "header"

    const-string v7, "pduType"

    const-string v8, "transactionId"

    const-string v10, "service_center"

    const-string v15, "address"

    const-string v13, "Mtk_WAP_PUSH"

    if-eqz v0, :cond_a

    .line 347
    const/4 v0, 0x1

    .line 348
    .local v0, "processFurther":Z
    :try_start_0
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 350
    .local v9, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v9, :cond_3

    .line 351
    sget-boolean v16, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v16, :cond_2

    move/from16 v16, v0

    .end local v0    # "processFurther":Z
    .local v16, "processFurther":Z
    const-string v0, "wap push manager not found!"

    invoke-static {v13, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v16    # "processFurther":Z
    .restart local v0    # "processFurther":Z
    :cond_2
    move/from16 v16, v0

    .end local v0    # "processFurther":Z
    .restart local v16    # "processFurther":Z
    goto/16 :goto_1

    .line 353
    .end local v16    # "processFurther":Z
    .restart local v0    # "processFurther":Z
    :cond_3
    move/from16 v16, v0

    .end local v0    # "processFurther":Z
    .restart local v16    # "processFurther":Z
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v0, :cond_4

    const-string v0, "addPowerSaveTempWhitelistAppForMms - start"

    invoke-static {v13, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_4
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v0, :cond_5

    const-string v0, "addPowerSaveTempWhitelistAppForMms - end"

    invoke-static {v13, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 364
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 365
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 366
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 368
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->headerList:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 370
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    .line 371
    const-string v2, "put addr info into intent 1"

    invoke-static {v13, v2}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    :cond_6
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    iget-object v11, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    invoke-interface {v9, v2, v11, v0}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v2

    .line 381
    .local v2, "procRet":I
    sget-boolean v11, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    const-string v0, "procRet:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v17, v0

    .line 382
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    :goto_0
    and-int/lit8 v0, v2, 0x1

    if-lez v0, :cond_8

    const v0, 0x8000

    and-int/2addr v0, v2

    if-nez v0, :cond_8

    .line 384
    const/4 v0, 0x0

    .end local v16    # "processFurther":Z
    .local v0, "processFurther":Z
    goto :goto_2

    .line 387
    .end local v0    # "processFurther":Z
    .end local v2    # "procRet":I
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v16    # "processFurther":Z
    :cond_8
    :goto_1
    move/from16 v0, v16

    .end local v16    # "processFurther":Z
    .restart local v0    # "processFurther":Z
    :goto_2
    if-nez v0, :cond_9

    .line 388
    const/4 v2, 0x1

    return v2

    .line 392
    .end local v0    # "processFurther":Z
    .end local v9    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_9
    goto :goto_3

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v2, :cond_a

    const-string v2, "remote func failed..."

    invoke-static {v13, v2}, Lcom/android/internal/telephony/OplusRlog$Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_3
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v0, :cond_b

    const-string v0, "fall back to existing handler"

    invoke-static {v13, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_b
    iget-object v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 397
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v0, :cond_c

    const-string v0, "Header Content-Type error."

    invoke-static {v13, v0}, Lcom/android/internal/telephony/OplusRlog$Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_c
    const/4 v0, 0x2

    return v0

    .line 401
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 406
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 407
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 408
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 410
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->headerList:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 412
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_e

    .line 413
    const-string v2, "put addr info into intent 2"

    invoke-static {v13, v2}, Lcom/android/internal/telephony/OplusRlog$Rlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    :cond_e
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 426
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-boolean v3, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->isBlock:Z

    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/IOplusInboundSmsHandler;->romDealWithMtMms(ZLandroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v11

    .line 427
    .local v11, "romComponentName":Landroid/content/ComponentName;
    if-eqz v11, :cond_f

    .line 428
    move-object v2, v11

    .line 432
    :cond_f
    const/4 v15, 0x0

    .line 433
    .local v15, "options":Landroid/os/Bundle;
    if-eqz v2, :cond_10

    .line 435
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 436
    sget-boolean v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering MMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-static {v13, v3}, Lcom/android/internal/telephony/OplusRlog$Rlog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_10
    iget-object v3, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 449
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->getAppOpsStringPermissionForIntent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget v10, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->subId:I

    .line 448
    move-object/from16 v3, p3

    move-object v4, v0

    move-object v7, v15

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;I)V

    .line 451
    const/4 v3, -0x1

    return v3
.end method

.method public blacklist dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 489
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mtk_WAP_PUSH"

    const-string v1, "dispathchWapPdu!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OplusRlog$Rlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 492
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v0

    return v0
.end method

.method public blacklist romIsWapPushForMmsWithBlock([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 499
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;

    move-result-object v0

    .line 500
    .local v0, "result":Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->isBlock:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
