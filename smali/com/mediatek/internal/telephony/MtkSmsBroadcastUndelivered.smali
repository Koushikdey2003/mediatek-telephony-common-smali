.class public Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;
.super Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.source "MtkSmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final blacklist MAX_PHONE_COUNT:I = 0x4

.field private static final blacklist PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "MtkSmsBroadcastUndelivered"

.field private static blacklist instance:[Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;


# instance fields
.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 84
    const-string v0, "pdu"

    const-string v1, "sequence"

    const-string v2, "destination_port"

    const-string v3, "date"

    const-string v4, "reference_number"

    const-string v5, "count"

    const-string v6, "address"

    const-string v7, "_id"

    const-string v8, "message_body"

    const-string v9, "display_originating_addr"

    const-string v10, "sub_id"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->instance:[Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    .line 135
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 138
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 140
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " register user unlock event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSmsBroadcastUndelivered"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-void
.end method

.method private static blacklist broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 3
    .param p0, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p1, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    move-object v0, p1

    .local v0, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    goto :goto_0

    .line 269
    .end local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_0
    move-object v0, p2

    .line 271
    .restart local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :goto_0
    if-eqz v0, :cond_1

    .line 272
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 274
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " format, can\'t deliver."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSmsBroadcastUndelivered"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_1
    return-void
.end method

.method public static blacklist initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p2, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 111
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 112
    .local v0, "phoneId":I
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->instance:[Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " call initialize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSmsBroadcastUndelivered"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->instance:[Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    aput-object v2, v1, v0

    .line 122
    :cond_0
    const/4 v1, 0x6

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    .line 125
    :cond_1
    if-eqz p2, :cond_2

    .line 126
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    .line 128
    :cond_2
    return-void
.end method

.method public static blacklist scanRawTable(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "oldMessageTimestamp"    # J

    .line 150
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;ZLcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V

    .line 152
    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;ZLcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V

    .line 154
    return-void
.end method

.method private static blacklist scanRawTable(Landroid/content/Context;ZLcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isCurrentFormat3gpp2"    # Z
    .param p2, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .param p3, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p4, "oldMessageTimestamp"    # J

    .line 160
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, " ms"

    const-string v5, "finished scanning raw table in "

    const-string v6, "MtkSmsBroadcastUndelivered"

    const-string v0, "scanning raw table for undelivered messages"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 162
    .local v7, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 163
    .local v15, "contentResolver":Landroid/content/ContentResolver;
    new-instance v0, Ljava/util/HashMap;

    const/4 v9, 0x4

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(I)V

    move-object v14, v0

    .line 165
    .local v14, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v9}, Ljava/util/HashSet;-><init>(I)V

    move-object v13, v0

    .line 166
    .local v13, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    const/16 v16, 0x0

    .line 169
    .local v16, "cursor":Landroid/database/Cursor;
    const-wide/32 v17, 0xf4240

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleted = 0"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 170
    const-string v19, " AND (destination_port & 262144=262144)"

    const-string v20, " AND (destination_port & 131072=131072)"

    if-eqz v1, :cond_0

    move-object/from16 v9, v19

    goto :goto_0

    .line 171
    :cond_0
    move-object/from16 v9, v20

    :goto_0
    :try_start_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, "nonDeleteWhere":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    const/4 v0, 0x0

    const/16 v21, 0x0

    move-object v9, v15

    move-object/from16 v22, v15

    move-object v15, v13

    .end local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v15, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v22, "contentResolver":Landroid/content/ContentResolver;
    move-object v13, v0

    move-object/from16 v23, v15

    move-object v15, v14

    .end local v14    # "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    .local v15, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    .local v23, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    move-object/from16 v14, v21

    :try_start_2
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    move-object v9, v0

    .line 174
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 175
    :try_start_3
    const-string v0, "error getting pending message cursor"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    if-eqz v9, :cond_1

    .line 252
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    div-long v10, v10, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 251
    .end local v12    # "nonDeleteWhere":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    goto/16 :goto_9

    .line 248
    :catch_0
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    goto/16 :goto_7

    .line 179
    .restart local v12    # "nonDeleteWhere":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    if-eqz v0, :cond_9

    .line 183
    :try_start_5
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v10, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    .line 184
    .local v0, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    move-object/from16 v10, p0

    invoke-virtual {v0, v10, v9, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 189
    .end local v0    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .local v11, "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    nop

    .line 191
    :try_start_6
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getMessageCount()I

    move-result v0
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const-string v13, "New sms on raw table, subId: "

    const/4 v14, 0x1

    if-ne v0, v14, :cond_4

    .line 196
    :try_start_7
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getSubId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v14

    if-ne v0, v14, :cond_3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getSubId()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v11, v2, v3}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v10, v23

    move-object/from16 v23, v12

    goto/16 :goto_3

    .line 196
    :cond_3
    move-object/from16 v10, v23

    move-object/from16 v23, v12

    goto/16 :goto_3

    .line 202
    :cond_4
    :try_start_8
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;)V

    .line 203
    .local v0, "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 204
    .local v16, "receivedCount":Ljava/lang/Integer;
    if-nez v16, :cond_6

    .line 205
    :try_start_9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getTimestamp()J

    move-result-wide v13
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    cmp-long v13, v13, p4

    if-gez v13, :cond_5

    .line 209
    move-object/from16 v13, v23

    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :try_start_a
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v23, v12

    move-object v10, v13

    goto/16 :goto_3

    .line 251
    .end local v0    # "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .end local v11    # "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    .end local v12    # "nonDeleteWhere":Ljava/lang/String;
    .end local v16    # "receivedCount":Ljava/lang/Integer;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v9

    move-object v10, v13

    move-object/from16 v1, v22

    goto/16 :goto_9

    .line 248
    :catch_1
    move-exception v0

    move-object/from16 v16, v9

    move-object v10, v13

    move-object/from16 v1, v22

    goto/16 :goto_7

    .line 206
    .end local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v0    # "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .restart local v11    # "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    .restart local v12    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v16    # "receivedCount":Ljava/lang/Integer;
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :cond_5
    move-object/from16 v13, v23

    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    move-object/from16 v23, v12

    move-object v10, v13

    goto/16 :goto_3

    .line 251
    .end local v0    # "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .end local v11    # "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    .end local v12    # "nonDeleteWhere":Ljava/lang/String;
    .end local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .end local v16    # "receivedCount":Ljava/lang/Integer;
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto/16 :goto_9

    .line 248
    .end local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catch_2
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto/16 :goto_7

    .line 212
    .end local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v0    # "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .restart local v11    # "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    .restart local v12    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v16    # "receivedCount":Ljava/lang/Integer;
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :cond_6
    move-object/from16 v24, v23

    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v24, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v14, v21, 0x1

    .line 213
    .local v14, "newCount":I
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getMessageCount()I

    move-result v10

    if-ne v14, v10, :cond_8

    .line 216
    const-string v10, "found complete multi-part message"

    invoke-static {v6, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getSubId()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    move-object/from16 v23, v12

    .end local v12    # "nonDeleteWhere":Ljava/lang/String;
    .local v23, "nonDeleteWhere":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v12
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-ne v10, v12, :cond_7

    .line 220
    :try_start_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getSubId()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 220
    invoke-static {v6, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {v11, v2, v3}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_2

    .line 251
    .end local v0    # "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .end local v11    # "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    .end local v14    # "newCount":I
    .end local v16    # "receivedCount":Ljava/lang/Integer;
    .end local v23    # "nonDeleteWhere":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move-object/from16 v10, v24

    goto/16 :goto_9

    .line 248
    :catch_3
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move-object/from16 v10, v24

    goto/16 :goto_7

    .line 226
    .restart local v0    # "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .restart local v11    # "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    .restart local v14    # "newCount":I
    .restart local v16    # "receivedCount":Ljava/lang/Integer;
    .restart local v23    # "nonDeleteWhere":Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v10, v24

    .end local v24    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v10, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :try_start_d
    invoke-virtual {v10, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 228
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .end local v23    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v12    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v24    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :cond_8
    move-object/from16 v23, v12

    move-object/from16 v10, v24

    .end local v12    # "nonDeleteWhere":Ljava/lang/String;
    .end local v24    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v23    # "nonDeleteWhere":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v0    # "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .end local v11    # "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    .end local v14    # "newCount":I
    .end local v16    # "receivedCount":Ljava/lang/Integer;
    :goto_3
    move-object/from16 v12, v23

    move-object/from16 v23, v10

    goto/16 :goto_1

    .line 251
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .end local v23    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v24    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v10, v24

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    .end local v24    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto/16 :goto_9

    .line 248
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v24    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catch_4
    move-exception v0

    move-object/from16 v10, v24

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    .end local v24    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto/16 :goto_7

    .line 251
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v23, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v10, v23

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto/16 :goto_9

    .line 248
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catch_5
    move-exception v0

    move-object/from16 v10, v23

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto/16 :goto_7

    .line 186
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v12    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catch_6
    move-exception v0

    move-object/from16 v10, v23

    move-object/from16 v23, v12

    .line 187
    .end local v12    # "nonDeleteWhere":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v23, "nonDeleteWhere":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error loading SmsTracker: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 188
    move-object/from16 v12, v23

    move-object/from16 v23, v10

    goto/16 :goto_1

    .line 251
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v23    # "nonDeleteWhere":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    goto/16 :goto_9

    .line 248
    :catch_7
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    goto/16 :goto_7

    .line 234
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v12    # "nonDeleteWhere":Ljava/lang/String;
    .local v23, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :cond_9
    move-object/from16 v10, v23

    move-object/from16 v23, v12

    .end local v12    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v23, "nonDeleteWhere":Ljava/lang/String;
    :try_start_e
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;

    .line 236
    .local v11, "message":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "address=? AND reference_number=? AND count=? AND deleted=0 AND sub_id=?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    if-eqz v1, :cond_a

    move-object/from16 v13, v19

    goto :goto_5

    .line 238
    :cond_a
    move-object/from16 v13, v20

    :goto_5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 239
    .local v12, "where":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 240
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v14
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 239
    move-object/from16 v1, v22

    .end local v22    # "contentResolver":Landroid/content/ContentResolver;
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    :try_start_f
    invoke-virtual {v1, v13, v12, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 241
    .local v13, "rows":I
    if-nez v13, :cond_b

    .line 242
    const-string v14, "No rows were deleted from raw table!"

    invoke-static {v6, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v0

    goto :goto_6

    .line 244
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "Deleted "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rows from raw table for incomplete "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " part message"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 247
    .end local v11    # "message":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .end local v12    # "where":Ljava/lang/String;
    .end local v13    # "rows":I
    :goto_6
    move-object/from16 v22, v1

    move-object/from16 v0, v16

    move/from16 v1, p1

    goto :goto_4

    .line 251
    .end local v23    # "nonDeleteWhere":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_9

    .line 248
    :catch_8
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_7

    .line 234
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v22    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v23    # "nonDeleteWhere":Ljava/lang/String;
    :cond_c
    move-object/from16 v1, v22

    .line 251
    .end local v22    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    if-eqz v9, :cond_d

    .line 252
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    div-long v11, v11, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    goto/16 :goto_8

    .line 251
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v22    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_8
    move-exception v0

    move-object/from16 v1, v22

    move-object/from16 v16, v9

    .end local v22    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    goto :goto_9

    .line 248
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v22    # "contentResolver":Landroid/content/ContentResolver;
    :catch_9
    move-exception v0

    move-object/from16 v1, v22

    move-object/from16 v16, v9

    .end local v22    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    goto :goto_7

    .line 251
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v22    # "contentResolver":Landroid/content/ContentResolver;
    .local v23, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catchall_9
    move-exception v0

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    move-object/from16 v16, v9

    .end local v22    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto :goto_9

    .line 248
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v22    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catch_a
    move-exception v0

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    move-object/from16 v16, v9

    .end local v22    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto :goto_7

    .line 251
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v16, "cursor":Landroid/database/Cursor;
    .restart local v22    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    .end local v22    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto :goto_9

    .line 248
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v22    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    :catch_b
    move-exception v0

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    .end local v22    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    goto :goto_7

    .line 251
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v13, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v14, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    .local v15, "contentResolver":Landroid/content/ContentResolver;
    :catchall_b
    move-exception v0

    move-object v10, v13

    move-object v1, v15

    move-object v15, v14

    .end local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .end local v14    # "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v15, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    goto :goto_9

    .line 248
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .restart local v14    # "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    .local v15, "contentResolver":Landroid/content/ContentResolver;
    :catch_c
    move-exception v0

    move-object v10, v13

    move-object v1, v15

    move-object v15, v14

    .line 249
    .end local v13    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .end local v14    # "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    .local v0, "e":Landroid/database/SQLException;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v10    # "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    .local v15, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    :goto_7
    :try_start_10
    const-string v9, "error reading pending SMS messages"

    invoke-static {v6, v9, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 251
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    if-eqz v16, :cond_e

    .line 252
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    div-long v11, v11, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v9, v16

    .line 257
    .end local v16    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :goto_8
    return-void

    .line 251
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_c
    move-exception v0

    :goto_9
    if-eqz v16, :cond_f

    .line 252
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    div-long v11, v11, v17

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    throw v0
.end method
