.class public final Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;
.super Ljava/lang/Object;
.source "MtkGsmCdmaCallTrackerHelper.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;


# static fields
.field protected static final blacklist EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final blacklist EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final blacklist EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final blacklist EVENT_DIAL_CALL_RESULT:I = 0x3ea

.field protected static final blacklist EVENT_ECT_RESULT:I = 0xd

.field protected static final blacklist EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final blacklist EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final blacklist EVENT_HANG_UP_RESULT:I = 0x3eb

.field protected static final blacklist EVENT_INCOMING_CALL_INDICATION:I = 0x3e8

.field protected static final blacklist EVENT_MTK_BASE:I = 0x3e8

.field protected static final blacklist EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final blacklist EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final blacklist EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final blacklist EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final blacklist EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3e9

.field protected static final blacklist EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final blacklist EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final blacklist EVENT_SWITCH_RESULT:I = 0x8

.field protected static final blacklist EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final blacklist EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final blacklist LOG_TAG:Ljava/lang/String; = "GsmCallTkrHlpr"

.field private static final blacklist MT_CALL_GWSD:I = 0xa

.field private static final blacklist MT_CALL_MISSED:I = 0x2

.field private static final blacklist MT_CALL_NUMREDIRECT:I = 0x3

.field private static final blacklist MT_CALL_REJECTED:I = 0x1


# instance fields
.field private blacklist mContainForwardingAddress:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mForwardingAddress:Ljava/lang/String;

.field private blacklist mForwardingAddressCallId:I

.field private blacklist mIncomingCallChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

.field private blacklist mIsGwsdCall:Z

.field private blacklist mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContainForwardingAddress:Z

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 103
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddressCallId:I

    .line 107
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIncomingCallChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 114
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIsGwsdCall:Z

    .line 118
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 120
    return-void
.end method

.method private blacklist addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "type"    # I

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 373
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    nop

    .line 374
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 375
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 377
    .local v3, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_0

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 379
    move-object v0, v3

    .line 380
    goto :goto_1

    .line 378
    :cond_0
    move-object/from16 v5, p2

    .line 382
    .end local v3    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 375
    :cond_2
    move-object/from16 v5, p2

    .line 384
    :goto_1
    if-nez p3, :cond_3

    .line 385
    const-string v3, ""

    .end local p3    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    goto :goto_2

    .line 384
    .end local v3    # "number":Ljava/lang/String;
    .restart local p3    # "number":Ljava/lang/String;
    :cond_3
    move-object/from16 v3, p3

    .line 390
    .end local p3    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 393
    :cond_4
    const/4 v4, 0x1

    .local v4, "presentationMode":I
    goto :goto_4

    .line 391
    .end local v4    # "presentationMode":I
    :cond_5
    :goto_3
    const/4 v4, 0x2

    .line 397
    .restart local v4    # "presentationMode":I
    :goto_4
    const/16 v17, 0x0

    .line 400
    .local v17, "features":I
    const/4 v6, 0x0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 403
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const/4 v15, 0x0

    new-instance v12, Ljava/lang/Long;

    const-wide/16 v7, 0x0

    invoke-direct {v12, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 400
    move-object/from16 v7, p1

    move-object v8, v3

    move v9, v4

    move/from16 v10, p4

    move/from16 v11, v17

    move-object/from16 v16, v12

    move-object v12, v0

    invoke-static/range {v6 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;

    .line 404
    return-void
.end method


# virtual methods
.method public blacklist CallIndicationEnd()V
    .locals 3

    .line 357
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 358
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method

.method public blacklist CallIndicationProcess(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->CallIndicationProcess(Landroid/os/AsyncResult;ZZ)V

    .line 222
    return-void
.end method

.method public blacklist CallIndicationProcess(Landroid/os/AsyncResult;ZZ)V
    .locals 18
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isIncomingNumberChecked"    # Z
    .param p3, "isBlocked"    # Z

    .line 231
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v0, "_"

    const-string v5, ")"

    const/4 v6, 0x0

    .line 232
    .local v6, "mode":I
    :try_start_0
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 233
    .local v7, "incomingCallInfo":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v9, v7, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 234
    .local v9, "callId":I
    const/4 v15, 0x1

    aget-object v10, v7, v15

    move-object v14, v10

    .line 235
    .local v14, "number":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v10, v7, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move/from16 v16, v10

    .line 236
    .local v16, "callMode":I
    const/4 v10, 0x4

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v12, v10

    .line 238
    .local v12, "seqNumber":I
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v10

    move v11, v10

    .line 239
    .local v11, "subId":I
    const/4 v10, 0x1

    .line 241
    .local v10, "rejectCause":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CallIndicationProcess "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " callId "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " seqNumber "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "(subId="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", isIncomingNumberChecked="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isBlocked="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 249
    const/4 v13, 0x0

    iput-object v13, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 250
    const/4 v15, 0x5

    aget-object v13, v7, v15

    if-eqz v13, :cond_0

    aget-object v13, v7, v15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 252
    iput-boolean v8, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContainForwardingAddress:Z

    .line 253
    aget-object v8, v7, v15

    iput-object v8, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 254
    iput v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddressCallId:I

    .line 255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EAIC message contains forwarding address - "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 260
    :cond_0
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v13, :cond_1

    .line 261
    const/4 v6, 0x1

    .line 262
    const/4 v10, 0x1

    .line 281
    :cond_1
    if-nez v6, :cond_4

    .line 282
    if-eqz v3, :cond_2

    .line 283
    if-eqz v4, :cond_4

    .line 284
    const/4 v6, 0x1

    .line 285
    const/16 v10, 0x10

    move v0, v10

    goto/16 :goto_0

    .line 288
    :cond_2
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    .line 289
    invoke-static {v8, v11}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->isMtkEnhancedCallBlockingEnabled(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 290
    new-instance v8, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13, v2}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIncomingCallChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 292
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13, v11, v14, v1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->startIncomingCallNumberCheck(Landroid/content/Context;ILjava/lang/String;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .local v8, "bCheckStart":Z
    const-string v13, ", number="

    const-string v15, ", subId="

    if-eqz v8, :cond_3

    .line 295
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startIncomingCallNumberCheck true. start check (callId_seqNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 298
    return-void

    .line 300
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startIncomingCallNumberCheck false, and flow continues. (callId_seqNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logE(Ljava/lang/String;)V

    .line 310
    .end local v8    # "bCheckStart":Z
    :cond_4
    move v0, v10

    .end local v10    # "rejectCause":I
    .local v0, "rejectCause":I
    :goto_0
    if-nez v6, :cond_6

    .line 313
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 314
    .local v2, "pid":I
    const/16 v3, -0xa

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adjust the priority of process - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 321
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 322
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContainForwardingAddress:Z

    goto :goto_1

    .line 321
    :cond_5
    const/4 v3, 0x1

    .line 326
    :goto_1
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v10, v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v5, -0x1

    const/4 v15, 0x0

    move v8, v11

    .end local v11    # "subId":I
    .local v8, "subId":I
    move v11, v6

    move/from16 v17, v12

    .end local v12    # "seqNumber":I
    .local v17, "seqNumber":I
    move v12, v9

    const/4 v3, 0x3

    move/from16 v13, v17

    move-object v3, v14

    .end local v14    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    move v14, v5

    const/4 v5, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallIndication(IIIILandroid/os/Message;)V

    goto :goto_2

    .line 310
    .end local v2    # "pid":I
    .end local v3    # "number":Ljava/lang/String;
    .end local v8    # "subId":I
    .end local v17    # "seqNumber":I
    .restart local v11    # "subId":I
    .restart local v12    # "seqNumber":I
    .restart local v14    # "number":Ljava/lang/String;
    :cond_6
    move v8, v11

    move/from16 v17, v12

    move-object v3, v14

    const/4 v5, 0x1

    .line 330
    .end local v11    # "subId":I
    .end local v12    # "seqNumber":I
    .end local v14    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v8    # "subId":I
    .restart local v17    # "seqNumber":I
    :goto_2
    if-ne v6, v5, :cond_9

    .line 331
    if-eq v0, v5, :cond_8

    .line 332
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v10, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v15, 0x0

    move v11, v6

    move v12, v9

    move/from16 v13, v17

    move v14, v0

    invoke-virtual/range {v10 .. v15}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallIndication(IIIILandroid/os/Message;)V

    .line 334
    const/16 v2, 0x10

    if-ne v0, v2, :cond_7

    .line 335
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x5

    invoke-direct {v1, v2, v5, v3, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 338
    :cond_7
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    invoke-direct {v1, v2, v5, v3, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 342
    :cond_8
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v10, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v14, -0x1

    const/4 v15, 0x0

    move v11, v6

    move v12, v9

    move/from16 v13, v17

    invoke-virtual/range {v10 .. v15}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallIndication(IIIILandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    .end local v0    # "rejectCause":I
    .end local v3    # "number":Ljava/lang/String;
    .end local v6    # "mode":I
    .end local v7    # "incomingCallInfo":[Ljava/lang/String;
    .end local v8    # "subId":I
    .end local v9    # "callId":I
    .end local v16    # "callMode":I
    .end local v17    # "seqNumber":I
    :cond_9
    :goto_3
    goto :goto_4

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GsmCallTkrHlpr"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public blacklist LogState()V
    .locals 6

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "callId":I
    const/4 v1, 0x0

    .line 199
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getMaxConnections()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 200
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    .line 202
    .end local v0    # "callId":I
    .local v4, "callId":I
    add-int/lit8 v1, v1, 0x1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "* conn id "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " existed"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logI(Ljava/lang/String;)V

    move v0, v4

    .line 199
    .end local v4    # "callId":I
    .restart local v0    # "callId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "* GsmCT has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logI(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public blacklist LogerMessage(I)V
    .locals 1
    .param p1, "msgType"    # I

    .line 140
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 189
    const-string v0, "handle XXXXX"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_0
    const-string v0, "handle EVENT_HANG_UP_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 177
    goto :goto_0

    .line 179
    :pswitch_1
    const-string v0, "handle EVENT_DIAL_CALL_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 180
    goto :goto_0

    .line 185
    :pswitch_2
    const-string v0, "handle EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 186
    goto :goto_0

    .line 182
    :pswitch_3
    const-string v0, "handle EVENT_INCOMING_CALL_INDICATION"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 183
    goto :goto_0

    .line 172
    :pswitch_4
    const-string v0, "handle EVENT_ECT_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 173
    goto :goto_0

    .line 169
    :pswitch_5
    const-string v0, "handle EVENT_SEPARATE_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 170
    goto :goto_0

    .line 166
    :pswitch_6
    const-string v0, "handle EVENT_CONFERENCE_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 167
    goto :goto_0

    .line 163
    :pswitch_7
    const-string v0, "handle EVENT_RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 164
    goto :goto_0

    .line 160
    :pswitch_8
    const-string v0, "handle EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 161
    goto :goto_0

    .line 157
    :pswitch_9
    const-string v0, "handle EVENT_SWITCH_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 158
    goto :goto_0

    .line 154
    :cond_0
    const-string v0, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 155
    goto :goto_0

    .line 151
    :cond_1
    const-string v0, "handle EVENT_OPERATION_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 152
    goto :goto_0

    .line 148
    :cond_2
    const-string v0, "handle EVENT_REPOLL_AFTER_DELAY"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 149
    goto :goto_0

    .line 145
    :cond_3
    const-string v0, "handle EVENT_CALL_STATE_CHANGE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 146
    goto :goto_0

    .line 142
    :cond_4
    const-string v0, "handle EVENT_POLL_CALLS_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 143
    nop

    .line 192
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist clearForwardingAddressVariables(I)V
    .locals 2
    .param p1, "index"    # I

    .line 468
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContainForwardingAddress:Z

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 471
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddressCallId:I

    .line 473
    :cond_0
    return-void
.end method

.method public blacklist getCurrentTotalConnections()I
    .locals 3

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getMaxConnections()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public blacklist handleCallAdditionalInfo(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 408
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 409
    .local v0, "callAdditionalInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "type":I
    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v2, :cond_0

    .line 414
    const-string v2, "handleCallAdditionalInfo not handle event"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 415
    return-void

    .line 418
    :cond_0
    aget-object v6, v0, v5

    .line 419
    .local v6, "number":Ljava/lang/String;
    aget-object v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 421
    .local v7, "callMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCallAdditionalInfo type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 424
    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 445
    :cond_1
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIsGwsdCall:Z

    .line 446
    goto :goto_0

    .line 434
    :cond_2
    aget-object v2, v0, v4

    .line 435
    .local v2, "redirectNumber":Ljava/lang/String;
    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 436
    .local v3, "callId":I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 437
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 438
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContainForwardingAddress:Z

    .line 439
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 440
    iput v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddressCallId:I

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forwarding address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    .end local v2    # "redirectNumber":Ljava/lang/String;
    .end local v3    # "callId":I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    goto :goto_0

    .line 430
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    nop

    .line 450
    :cond_5
    :goto_0
    return-void
.end method

.method public blacklist isGwsdCall()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIsGwsdCall:Z

    return v0
.end method

.method blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCallTkrHlpr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method blacklist logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCallTkrHlpr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method blacklist logI(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCallTkrHlpr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method blacklist logW(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCallTkrHlpr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public blacklist onCheckComplete(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "obj"    # Ljava/lang/Object;

    .line 366
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/os/AsyncResult;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->CallIndicationProcess(Landroid/os/AsyncResult;ZZ)V

    .line 367
    return-void
.end method

.method public blacklist setForwardingAddressToConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;

    .line 479
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    .line 481
    move-object v1, p2

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setForwardingAddress(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 484
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getForwardingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->clearForwardingAddressVariables(I)V

    .line 487
    :cond_0
    return-void
.end method

.method public blacklist setGwsdCall(Z)V
    .locals 0
    .param p1, "isGwsd"    # Z

    .line 459
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIsGwsdCall:Z

    .line 460
    return-void
.end method
