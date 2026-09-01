.class public Lcom/mediatek/internal/telephony/MtkSubscriptionController;
.super Lcom/android/internal/telephony/SubscriptionController;
.source "MtkSubscriptionController.java"


# static fields
.field private static final blacklist ENGDEBUG:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkSubCtrl"

.field private static blacklist sStickyIntent:Landroid/content/Intent;


# instance fields
.field private blacklist lastPhoneId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 102
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sStickyIntent:Landroid/content/Intent;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    .line 105
    const v0, 0x7fffffff

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->lastPhoneId:I

    .line 123
    return-void
.end method

.method private blacklist broadcastSimInfoContentChanged(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intentExt"    # Landroid/content/Intent;

    .line 692
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 694
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .end local v0    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    .line 703
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 704
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v1, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v6, v2

    .line 706
    .local v6, "subCount":I
    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->putSubinfoRecordUpdatedExtra(Landroid/content/Intent;IIILjava/lang/String;)V

    .line 710
    .end local v1    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v6    # "subCount":I
    :cond_1
    const-class v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-enter v1

    .line 711
    if-nez p1, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    :try_start_0
    sput-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sStickyIntent:Landroid/content/Intent;

    .line 712
    const-string v4, "simDetectStatus"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 714
    .local v0, "detectedType":I
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sStickyIntent:Landroid/content/Intent;

    const-string v4, "phone"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 715
    .local v2, "phoneId":I
    sget-boolean v4, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    if-eqz v4, :cond_3

    .line 716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast intent ACTION_SUBINFO_RECORD_UPDATED with detectType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 719
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sStickyIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 720
    .end local v0    # "detectedType":I
    .end local v2    # "phoneId":I
    monitor-exit v1

    .line 722
    return-void

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .locals 3

    .line 127
    const-class v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v1, :cond_0

    .line 129
    const-string v1, "MtkSubCtrl"

    const-string v2, "getMtkInstance null"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-exit v0

    return-object v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1023
    const-string v0, "MtkSubCtrl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1027
    const-string v0, "MtkSubCtrl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1014
    const-string v0, "MtkSubCtrl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void
.end method

.method protected static blacklist mtkInit(Landroid/content/Context;)Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .line 109
    const-class v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 112
    const-string v1, "MtkSubCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtkInit, sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->MtkInitStub(Landroid/content/Context;)V

    goto :goto_0

    .line 115
    :cond_0
    const-string v1, "MtkSubCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-exit v0

    return-object v1

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static blacklist mtkInvalidateActiveDataSubIdCaches()V
    .locals 0

    .line 1008
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->invalidateActiveDataSubIdCaches()V

    .line 1009
    return-void
.end method


# virtual methods
.method public blacklist addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 25
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "slotIndex"    # I
    .param p4, "subscriptionType"    # I

    .line 292
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    const-string v0, "card_id"

    const-string v4, "icc_id"

    const-string v5, "sim_id"

    const-string v6, "_id"

    move-object/from16 v7, p1

    .line 297
    .local v7, "fullIccid":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v2, v8}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 300
    .local v8, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    move-object/from16 v9, p1

    .line 301
    .local v9, "iccIdStr":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 303
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 306
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[addSubInfoRecord]+ iccid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", slotIndex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", subscriptionType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 311
    .end local v9    # "iccIdStr":Ljava/lang/String;
    const-string v9, "addSubInfo"

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 316
    .local v9, "identity":J
    const/4 v11, -0x1

    if-nez p1, :cond_1

    .line 317
    :try_start_0
    const-string v0, "[addSubInfo]- null iccId"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    nop

    .line 619
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    return v11

    .line 619
    :catchall_0
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v17, v2

    move-object/from16 v24, v7

    move-wide/from16 v21, v9

    goto/16 :goto_12

    .line 324
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    .line 327
    .end local p1    # "uniqueId":Ljava/lang/String;
    .local v12, "uniqueId":Ljava/lang/String;
    :try_start_2
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 328
    .local v13, "resolver":Landroid/content/ContentResolver;
    const-string v14, "icc_id=?"

    .line 330
    .local v14, "selection":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    if-eqz v15, :cond_2

    .line 331
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " AND subscription_type=?"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 332
    .end local v14    # "selection":Ljava/lang/String;
    .local v11, "selection":Ljava/lang/String;
    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v15, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v15, v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v14, v15

    move-object/from16 v20, v14

    .local v14, "args":[Ljava/lang/String;
    goto :goto_0

    .line 619
    .end local v11    # "selection":Ljava/lang/String;
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .end local v14    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v17, v2

    move-object/from16 v24, v7

    move-wide/from16 v21, v9

    goto/16 :goto_12

    .line 339
    .restart local v13    # "resolver":Landroid/content/ContentResolver;
    .local v14, "selection":Ljava/lang/String;
    :cond_2
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " OR icc_id=? OR icc_id=?"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 341
    .end local v14    # "selection":Ljava/lang/String;
    .restart local v11    # "selection":Ljava/lang/String;
    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v15, v14

    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v15, v16

    .line 342
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x2

    aput-object v14, v15, v16

    move-object v14, v15

    move-object/from16 v20, v14

    .line 345
    .local v20, "args":[Ljava/lang/String;
    :goto_0
    sget-object v15, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v14, "name_source"

    filled-new-array {v6, v5, v14, v4, v0}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    move-object v14, v13

    move-object/from16 v17, v11

    move-object/from16 v18, v20

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    move-object v15, v14

    .line 351
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 353
    .local v14, "setDisplayName":Z
    if-eqz v15, :cond_4

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v16, :cond_3

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 437
    :catchall_2
    move-exception v0

    move-object/from16 v24, v7

    move-wide/from16 v21, v9

    move-object/from16 v18, v11

    move-object v4, v13

    move-object v7, v15

    goto/16 :goto_11

    .line 353
    :cond_4
    :goto_1
    const/16 v16, 0x1

    .line 354
    .local v16, "recordsDoNotExist":Z
    :goto_2
    :try_start_6
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    move-object/from16 v18, v11

    .end local v11    # "selection":Ljava/lang/String;
    .local v18, "selection":Ljava/lang/String;
    const-string v11, "[addSubInfoRecord] New record created: "

    move/from16 v19, v14

    .end local v14    # "setDisplayName":Z
    .local v19, "setDisplayName":Z
    const-string v14, "[addSubInfoRecord] Record already exists"

    move-wide/from16 v21, v9

    .end local v9    # "identity":J
    .local v21, "identity":J
    if-eqz v17, :cond_6

    .line 355
    if-eqz v16, :cond_5

    .line 357
    const/4 v2, -0x1

    .line 358
    .end local p3    # "slotIndex":I
    .local v2, "slotIndex":I
    move-object/from16 v10, p2

    :try_start_7
    invoke-virtual {v1, v12, v10, v2, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 360
    .local v0, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 361
    .end local v0    # "uri":Landroid/net/Uri;
    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v3, v19

    goto/16 :goto_6

    .line 437
    .end local v16    # "recordsDoNotExist":Z
    :catchall_3
    move-exception v0

    move-object/from16 v24, v7

    move-object v4, v13

    move-object v7, v15

    move/from16 v14, v19

    goto/16 :goto_11

    .line 362
    .end local v2    # "slotIndex":I
    .restart local v16    # "recordsDoNotExist":Z
    .restart local p3    # "slotIndex":I
    :cond_5
    move-object/from16 v10, p2

    :try_start_8
    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v3, v19

    goto/16 :goto_6

    .line 368
    :cond_6
    move-object/from16 v10, p2

    if-nez v16, :cond_8

    .line 369
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    move-object/from16 v23, v6

    const/4 v6, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v3}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IOplusUiccManager;

    .line 370
    .local v3, "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    if-eqz v3, :cond_7

    .line 371
    invoke-interface {v3, v7, v2, v15}, Lcom/android/internal/telephony/IOplusUiccManager;->isRecordsDoNotExist(Ljava/lang/String;ILandroid/database/Cursor;)Z

    move-result v6

    move/from16 v16, v6

    goto :goto_3

    .line 373
    :cond_7
    const-string v6, "[addSubInfoRecord] OplusUiccManager is null:"

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    .line 437
    .end local v3    # "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    .end local v16    # "recordsDoNotExist":Z
    :catchall_4
    move-exception v0

    move-object/from16 v24, v7

    move-object v4, v13

    move-object v7, v15

    move/from16 v14, v19

    goto/16 :goto_11

    .line 368
    .restart local v16    # "recordsDoNotExist":Z
    :cond_8
    move-object/from16 v23, v6

    .line 377
    :goto_3
    if-eqz v16, :cond_9

    .line 378
    const/4 v14, 0x1

    .line 379
    .end local v19    # "setDisplayName":Z
    .restart local v14    # "setDisplayName":Z
    :try_start_9
    invoke-virtual {v1, v12, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 380
    .restart local v0    # "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 383
    const/4 v3, 0x1

    invoke-interface {v8, v2, v3}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->updateMapValue(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 385
    .end local v0    # "uri":Landroid/net/Uri;
    move-object/from16 v24, v7

    move v3, v14

    goto/16 :goto_6

    .line 437
    .end local v16    # "recordsDoNotExist":Z
    :catchall_5
    move-exception v0

    move-object/from16 v24, v7

    move-object v4, v13

    move-object v7, v15

    goto/16 :goto_11

    .line 386
    .end local v14    # "setDisplayName":Z
    .restart local v16    # "recordsDoNotExist":Z
    .restart local v19    # "setDisplayName":Z
    :cond_9
    const/4 v3, 0x0

    :try_start_a
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v3, v6

    .line 387
    .local v3, "subId":I
    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v6, v9

    .line 388
    .local v6, "oldSimInfoId":I
    const/4 v9, 0x2

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move v9, v10

    .line 389
    .local v9, "nameSource":I
    const/4 v10, 0x3

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 390
    .local v10, "oldIccId":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 391
    .local v11, "oldCardId":Ljava/lang/String;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    move-object/from16 p1, v17

    .line 393
    .local p1, "value":Landroid/content/ContentValues;
    if-eq v2, v6, :cond_a

    .line 394
    move/from16 v17, v6

    .end local v6    # "oldSimInfoId":I
    .local v17, "oldSimInfoId":I
    :try_start_b
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v24, v7

    move-object/from16 v7, p1

    .end local p1    # "value":Landroid/content/ContentValues;
    .local v7, "value":Landroid/content/ContentValues;
    .local v24, "fullIccid":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const/4 v5, 0x2

    if-eq v5, v9, :cond_b

    .line 398
    const/4 v5, 0x1

    move/from16 v19, v5

    .end local v19    # "setDisplayName":Z
    .local v5, "setDisplayName":Z
    goto :goto_4

    .line 437
    .end local v3    # "subId":I
    .end local v5    # "setDisplayName":Z
    .end local v9    # "nameSource":I
    .end local v10    # "oldIccId":Ljava/lang/String;
    .end local v11    # "oldCardId":Ljava/lang/String;
    .end local v16    # "recordsDoNotExist":Z
    .end local v17    # "oldSimInfoId":I
    .end local v24    # "fullIccid":Ljava/lang/String;
    .local v7, "fullIccid":Ljava/lang/String;
    .restart local v19    # "setDisplayName":Z
    :catchall_6
    move-exception v0

    move-object/from16 v24, v7

    move-object v4, v13

    move-object v7, v15

    move/from16 v14, v19

    .end local v7    # "fullIccid":Ljava/lang/String;
    .restart local v24    # "fullIccid":Ljava/lang/String;
    goto/16 :goto_11

    .line 393
    .end local v24    # "fullIccid":Ljava/lang/String;
    .restart local v3    # "subId":I
    .restart local v6    # "oldSimInfoId":I
    .restart local v7    # "fullIccid":Ljava/lang/String;
    .restart local v9    # "nameSource":I
    .restart local v10    # "oldIccId":Ljava/lang/String;
    .restart local v11    # "oldCardId":Ljava/lang/String;
    .restart local v16    # "recordsDoNotExist":Z
    .restart local p1    # "value":Landroid/content/ContentValues;
    :cond_a
    move/from16 v17, v6

    move-object/from16 v24, v7

    move-object/from16 v7, p1

    .line 408
    .end local v6    # "oldSimInfoId":I
    .end local p1    # "value":Landroid/content/ContentValues;
    .local v7, "value":Landroid/content/ContentValues;
    .restart local v17    # "oldSimInfoId":I
    .restart local v24    # "fullIccid":Ljava/lang/String;
    :cond_b
    :goto_4
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 409
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 410
    :cond_c
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 411
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 413
    :cond_d
    invoke-virtual {v7, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_5

    .line 437
    .end local v3    # "subId":I
    .end local v7    # "value":Landroid/content/ContentValues;
    .end local v9    # "nameSource":I
    .end local v10    # "oldIccId":Ljava/lang/String;
    .end local v11    # "oldCardId":Ljava/lang/String;
    .end local v16    # "recordsDoNotExist":Z
    .end local v17    # "oldSimInfoId":I
    :catchall_7
    move-exception v0

    move-object v4, v13

    move-object v7, v15

    move/from16 v14, v19

    goto/16 :goto_11

    .line 416
    .restart local v3    # "subId":I
    .restart local v7    # "value":Landroid/content/ContentValues;
    .restart local v9    # "nameSource":I
    .restart local v10    # "oldIccId":Ljava/lang/String;
    .restart local v11    # "oldCardId":Ljava/lang/String;
    .restart local v16    # "recordsDoNotExist":Z
    .restart local v17    # "oldSimInfoId":I
    :cond_e
    :goto_5
    :try_start_d
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 417
    .local v4, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v4, :cond_f

    .line 418
    :try_start_e
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "cardId":Ljava/lang/String;
    if-eqz v5, :cond_f

    if-eq v5, v11, :cond_f

    .line 420
    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 424
    .end local v5    # "cardId":Ljava/lang/String;
    :cond_f
    :try_start_f
    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-lez v0, :cond_10

    .line 425
    :try_start_10
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v13, v0, v7, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 429
    :cond_10
    :try_start_11
    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x0

    invoke-interface {v8, v2, v0}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->updateMapValue(II)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move/from16 v3, v19

    .line 437
    .end local v4    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v7    # "value":Landroid/content/ContentValues;
    .end local v9    # "nameSource":I
    .end local v10    # "oldIccId":Ljava/lang/String;
    .end local v11    # "oldCardId":Ljava/lang/String;
    .end local v16    # "recordsDoNotExist":Z
    .end local v17    # "oldSimInfoId":I
    .end local v19    # "setDisplayName":Z
    .end local p3    # "slotIndex":I
    .restart local v2    # "slotIndex":I
    .local v3, "setDisplayName":Z
    :goto_6
    if-eqz v15, :cond_11

    .line 438
    :try_start_12
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 442
    :cond_11
    :try_start_13
    const-string v0, "sim_id=?"

    .line 443
    .end local v18    # "selection":Ljava/lang/String;
    .local v0, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object v4, v5

    .line 444
    .end local v20    # "args":[Ljava/lang/String;
    .local v4, "args":[Ljava/lang/String;
    move/from16 v5, p4

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-eqz v6, :cond_12

    .line 445
    :try_start_14
    const-string v6, "icc_id=? AND subscription_type=?"

    move-object v0, v6

    .line 447
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    move-object v4, v6

    move-object v4, v0

    goto :goto_7

    .line 444
    :cond_12
    move-object v6, v4

    move-object v4, v0

    .line 449
    .end local v0    # "selection":Ljava/lang/String;
    .local v4, "selection":Ljava/lang/String;
    .local v6, "args":[Ljava/lang/String;
    :goto_7
    :try_start_15
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v14, v13

    move-object v7, v15

    .end local v15    # "cursor":Landroid/database/Cursor;
    .local v7, "cursor":Landroid/database/Cursor;
    move-object v15, v0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    move-object v7, v0

    .line 452
    if-eqz v7, :cond_1a

    :try_start_16
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 454
    :goto_8
    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 458
    .local v9, "subId":I
    invoke-virtual {v1, v2, v9, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->addToSubIdList(III)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubInfoCountMax()I

    move-result v10

    .line 466
    .local v10, "subIdCountMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v11

    .line 468
    .local v11, "defaultSubId":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addSubInfoRecord] sSlotIndexToSubIds.size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sSlotIndexToSubIds:Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;

    .line 469
    invoke-virtual {v15}, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " slotIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " subId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " defaultSubId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " simCount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 468
    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v14

    if-nez v14, :cond_15

    .line 477
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v14, 0x1

    if-eq v10, v14, :cond_13

    .line 480
    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isActiveSubId(I)Z

    move-result v14

    if-eqz v14, :cond_13

    sget-object v14, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sDefaultFallbackSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    .line 481
    invoke-virtual {v14}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isActiveSubId(I)Z

    move-result v14

    if-eqz v14, :cond_13

    sget-object v14, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sDefaultFallbackSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    .line 482
    invoke-virtual {v14}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v14

    if-ne v14, v9, :cond_14

    iget v14, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->lastPhoneId:I

    if-eq v14, v2, :cond_14

    .line 486
    :cond_13
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting default fallback subid to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v1, v9, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultFallbackSubId(II)V

    .line 489
    iput v2, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->lastPhoneId:I

    .line 494
    :cond_14
    const/4 v14, 0x1

    if-ne v10, v14, :cond_16

    .line 496
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addSubInfoRecord] one sim set defaults to subId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubId(I)V

    .line 500
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultSmsSubId(I)V

    .line 501
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_9

    .line 504
    :cond_15
    invoke-virtual {v1, v9, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->updateDefaultSubIdsIfNeeded(II)V

    .line 506
    .end local v10    # "subIdCountMax":I
    .end local v11    # "defaultSubId":I
    :cond_16
    :goto_9
    goto :goto_a

    .line 508
    :cond_17
    const-string v10, "[addSubInfoRecord] current SubId is already known, IGNORE"

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 513
    :goto_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[addSubInfoRecord] hashmap("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 515
    .end local v9    # "subId":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-nez v9, :cond_18

    goto :goto_b

    :cond_18
    move-object/from16 v23, v0

    goto/16 :goto_8

    .line 518
    :catchall_8
    move-exception v0

    if-eqz v7, :cond_19

    .line 519
    :try_start_17
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_19
    nop

    .end local v2    # "slotIndex":I
    .end local v8    # "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    .end local v12    # "uniqueId":Ljava/lang/String;
    .end local v21    # "identity":J
    .end local v24    # "fullIccid":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p2    # "displayName":Ljava/lang/String;
    .end local p4    # "subscriptionType":I
    throw v0

    .line 518
    .restart local v2    # "slotIndex":I
    .restart local v8    # "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    .restart local v12    # "uniqueId":Ljava/lang/String;
    .restart local v21    # "identity":J
    .restart local v24    # "fullIccid":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p2    # "displayName":Ljava/lang/String;
    .restart local p4    # "subscriptionType":I
    :cond_1a
    :goto_b
    if-eqz v7, :cond_1b

    .line 519
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 525
    :cond_1b
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 527
    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    if-eqz v0, :cond_1c

    .line 528
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    move/from16 v17, v2

    goto/16 :goto_10

    .line 531
    :cond_1c
    :try_start_1a
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 532
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    if-nez v9, :cond_1d

    .line 534
    :try_start_1b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[addSubInfoRecord]- getSubId failed invalid subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .line 536
    nop

    .line 619
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    const/4 v9, -0x1

    return v9

    .line 538
    :cond_1d
    if-eqz v3, :cond_23

    .line 539
    :try_start_1c
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v18

    .line 551
    .local v18, "simCarrierName":Ljava/lang/String;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v9

    .line 555
    .local v9, "simNumeric":Ljava/lang/String;
    const-string v10, "20404"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    if-eqz v10, :cond_1e

    :try_start_1d
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 556
    const-string v10, ""
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .local v10, "simMvnoName":Ljava/lang/String;
    goto :goto_c

    .line 558
    .end local v10    # "simMvnoName":Ljava/lang/String;
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual {v10, v0, v9, v14, v11}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 561
    .restart local v10    # "simMvnoName":Ljava/lang/String;
    :goto_c
    sget-boolean v11, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    if-eqz v11, :cond_1f

    .line 562
    :try_start_1f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[addSubInfoRecord]- simNumeric: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", simMvnoName: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 565
    :cond_1f
    :try_start_20
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_20

    .line 566
    move-object v11, v10

    .local v11, "nameToSet":Ljava/lang/String;
    goto :goto_d

    .line 568
    .end local v11    # "nameToSet":Ljava/lang/String;
    :cond_20
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21

    .line 569
    move-object/from16 v11, v18

    .restart local v11    # "nameToSet":Ljava/lang/String;
    goto :goto_d

    .line 571
    .end local v11    # "nameToSet":Ljava/lang/String;
    :cond_21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CARD "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v2, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 576
    .restart local v11    # "nameToSet":Ljava/lang/String;
    :goto_d
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v14

    .line 580
    .local v15, "value":Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v14

    move/from16 p1, v3

    .end local v3    # "setDisplayName":Z
    .local p1, "setDisplayName":Z
    sget-object v3, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    move-object/from16 p3, v4

    const/4 v4, 0x0

    .end local v4    # "selection":Ljava/lang/String;
    .local p3, "selection":Ljava/lang/String;
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v14, v3, v5}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IOplusUiccManager;

    .line 581
    .local v3, "uiccManager":Lcom/android/internal/telephony/IOplusUiccManager;
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    move-object v4, v13

    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .local v4, "resolver":Landroid/content/ContentResolver;
    move-object v13, v3

    move-object v5, v15

    .end local v15    # "value":Landroid/content/ContentValues;
    .local v5, "value":Landroid/content/ContentValues;
    move v15, v2

    move/from16 v16, v0

    move-object/from16 v17, v12

    invoke-interface/range {v13 .. v18}, Lcom/android/internal/telephony/IOplusUiccManager;->updateSimNameIfNeed(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 586
    const/4 v13, -0x1

    .line 589
    .local v13, "cardType":I
    if-eqz v3, :cond_22

    .line 590
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getImsiPrivileged(I)Ljava/lang/String;

    move-result-object v14

    .line 591
    .local v14, "imsi":Ljava/lang/String;
    invoke-interface {v3, v14, v12}, Lcom/android/internal/telephony/IOplusUiccManager;->getCardType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move v13, v15

    .line 592
    iget-object v15, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v6

    .end local v6    # "args":[Ljava/lang/String;
    .local v16, "args":[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    move/from16 v17, v2

    .end local v2    # "slotIndex":I
    .local v17, "slotIndex":I
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v15, v6, v2, v13}, Lcom/android/internal/telephony/IOplusUiccManager;->broadcastSimCardTypeReady(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    .line 589
    .end local v14    # "imsi":Ljava/lang/String;
    .end local v16    # "args":[Ljava/lang/String;
    .end local v17    # "slotIndex":I
    .restart local v2    # "slotIndex":I
    .restart local v6    # "args":[Ljava/lang/String;
    :cond_22
    move/from16 v17, v2

    move-object/from16 v16, v6

    .line 594
    .end local v2    # "slotIndex":I
    .end local v6    # "args":[Ljava/lang/String;
    .restart local v16    # "args":[Ljava/lang/String;
    .restart local v17    # "slotIndex":I
    :goto_e
    const-string v2, "color"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    const-string v2, "display_name"

    invoke-virtual {v5, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord] sim name = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_f

    .line 538
    .end local v5    # "value":Landroid/content/ContentValues;
    .end local v9    # "simNumeric":Ljava/lang/String;
    .end local v10    # "simMvnoName":Ljava/lang/String;
    .end local v11    # "nameToSet":Ljava/lang/String;
    .end local v16    # "args":[Ljava/lang/String;
    .end local v17    # "slotIndex":I
    .end local v18    # "simCarrierName":Ljava/lang/String;
    .end local p1    # "setDisplayName":Z
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v2    # "slotIndex":I
    .local v3, "setDisplayName":Z
    .local v4, "selection":Ljava/lang/String;
    .restart local v6    # "args":[Ljava/lang/String;
    .local v13, "resolver":Landroid/content/ContentResolver;
    :cond_23
    move/from16 v17, v2

    move/from16 p1, v3

    move-object/from16 p3, v4

    move-object/from16 v16, v6

    move-object v4, v13

    .line 612
    .end local v2    # "slotIndex":I
    .end local v3    # "setDisplayName":Z
    .end local v6    # "args":[Ljava/lang/String;
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .local v4, "resolver":Landroid/content/ContentResolver;
    .restart local v16    # "args":[Ljava/lang/String;
    .restart local v17    # "slotIndex":I
    .restart local p1    # "setDisplayName":Z
    .restart local p3    # "selection":Ljava/lang/String;
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addSubInfoRecord]- info size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sSlotIndexToSubIds:Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 619
    .end local v0    # "subId":I
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v16    # "args":[Ljava/lang/String;
    .end local p1    # "setDisplayName":Z
    .end local p3    # "selection":Ljava/lang/String;
    :goto_10
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 620
    nop

    .line 621
    const/4 v0, 0x0

    return v0

    .line 619
    :catchall_9
    move-exception v0

    goto :goto_12

    .end local v17    # "slotIndex":I
    .restart local v2    # "slotIndex":I
    :catchall_a
    move-exception v0

    move/from16 v17, v2

    .end local v2    # "slotIndex":I
    .restart local v17    # "slotIndex":I
    goto :goto_12

    .line 437
    .end local v17    # "slotIndex":I
    .restart local v13    # "resolver":Landroid/content/ContentResolver;
    .local v15, "cursor":Landroid/database/Cursor;
    .local v18, "selection":Ljava/lang/String;
    .restart local v19    # "setDisplayName":Z
    .restart local v20    # "args":[Ljava/lang/String;
    .local p3, "slotIndex":I
    :catchall_b
    move-exception v0

    move-object v4, v13

    move-object v7, v15

    move/from16 v14, v19

    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    goto :goto_11

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v24    # "fullIccid":Ljava/lang/String;
    .local v7, "fullIccid":Ljava/lang/String;
    .restart local v13    # "resolver":Landroid/content/ContentResolver;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :catchall_c
    move-exception v0

    move-object/from16 v24, v7

    move-object v4, v13

    move-object v7, v15

    move/from16 v14, v19

    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .local v7, "cursor":Landroid/database/Cursor;
    .restart local v24    # "fullIccid":Ljava/lang/String;
    goto :goto_11

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v18    # "selection":Ljava/lang/String;
    .end local v19    # "setDisplayName":Z
    .end local v21    # "identity":J
    .end local v24    # "fullIccid":Ljava/lang/String;
    .local v7, "fullIccid":Ljava/lang/String;
    .local v9, "identity":J
    .local v11, "selection":Ljava/lang/String;
    .restart local v13    # "resolver":Landroid/content/ContentResolver;
    .local v14, "setDisplayName":Z
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :catchall_d
    move-exception v0

    move-object/from16 v24, v7

    move-wide/from16 v21, v9

    move-object/from16 v18, v11

    move-object v4, v13

    move/from16 v19, v14

    move-object v7, v15

    .end local v9    # "identity":J
    .end local v11    # "selection":Ljava/lang/String;
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local p3    # "slotIndex":I
    .restart local v2    # "slotIndex":I
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .local v7, "cursor":Landroid/database/Cursor;
    .restart local v18    # "selection":Ljava/lang/String;
    .restart local v21    # "identity":J
    .restart local v24    # "fullIccid":Ljava/lang/String;
    :goto_11
    if-eqz v7, :cond_24

    .line 438
    :try_start_22
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_24
    nop

    .end local v2    # "slotIndex":I
    .end local v8    # "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    .end local v12    # "uniqueId":Ljava/lang/String;
    .end local v21    # "identity":J
    .end local v24    # "fullIccid":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p2    # "displayName":Ljava/lang/String;
    .end local p4    # "subscriptionType":I
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    .line 619
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v14    # "setDisplayName":Z
    .end local v18    # "selection":Ljava/lang/String;
    .end local v20    # "args":[Ljava/lang/String;
    .restart local v2    # "slotIndex":I
    .restart local v8    # "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    .restart local v12    # "uniqueId":Ljava/lang/String;
    .restart local v21    # "identity":J
    .restart local v24    # "fullIccid":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p2    # "displayName":Ljava/lang/String;
    .restart local p4    # "subscriptionType":I
    :catchall_e
    move-exception v0

    move/from16 v17, v2

    goto :goto_12

    .end local v2    # "slotIndex":I
    .end local v21    # "identity":J
    .end local v24    # "fullIccid":Ljava/lang/String;
    .local v7, "fullIccid":Ljava/lang/String;
    .restart local v9    # "identity":J
    .restart local p3    # "slotIndex":I
    :catchall_f
    move-exception v0

    move-object/from16 v24, v7

    move-wide/from16 v21, v9

    move/from16 v17, v2

    .end local v7    # "fullIccid":Ljava/lang/String;
    .end local v9    # "identity":J
    .restart local v21    # "identity":J
    .restart local v24    # "fullIccid":Ljava/lang/String;
    goto :goto_12

    .end local v12    # "uniqueId":Ljava/lang/String;
    .end local v21    # "identity":J
    .end local v24    # "fullIccid":Ljava/lang/String;
    .restart local v7    # "fullIccid":Ljava/lang/String;
    .restart local v9    # "identity":J
    .local p1, "uniqueId":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object/from16 v24, v7

    move-wide/from16 v21, v9

    move-object/from16 v12, p1

    move/from16 v17, v2

    .end local v7    # "fullIccid":Ljava/lang/String;
    .end local v9    # "identity":J
    .end local p1    # "uniqueId":Ljava/lang/String;
    .end local p3    # "slotIndex":I
    .restart local v12    # "uniqueId":Ljava/lang/String;
    .restart local v17    # "slotIndex":I
    .restart local v21    # "identity":J
    .restart local v24    # "fullIccid":Ljava/lang/String;
    :goto_12
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 620
    throw v0
.end method

.method public blacklist getDefaultFallbackSubId()I
    .locals 1

    .line 959
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sDefaultFallbackSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v0

    return v0
.end method

.method protected blacklist getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;
    .locals 58
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 177
    .local v2, "id":I
    const-string v3, "icc_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 179
    .local v30, "iccId":Ljava/lang/String;
    const-string v3, "sim_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 181
    .local v15, "simSlotIndex":I
    const-string v3, "display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, "displayName":Ljava/lang/String;
    const-string v3, "carrier_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 185
    .local v31, "carrierName":Ljava/lang/String;
    const-string v3, "name_source"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 187
    .local v13, "nameSource":I
    const-string v3, "color"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 189
    .local v12, "iconTint":I
    const-string v3, "number"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "number":Ljava/lang/String;
    const-string v4, "data_roaming"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 194
    .local v11, "dataRoaming":I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080539

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 196
    .local v32, "iconBitmap":Landroid/graphics/Bitmap;
    const-string v4, "mcc_string"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, "mcc":Ljava/lang/String;
    const-string v4, "mnc_string"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "mnc":Ljava/lang/String;
    const-string v4, "ehplmns"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "ehplmnsRaw":Ljava/lang/String;
    const-string v4, "hplmns"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "hplmnsRaw":Ljava/lang/String;
    const-string v4, ","

    if-nez v8, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "ehplmns":[Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "hplmns":[Ljava/lang/String;
    :goto_1
    const-string v5, "card_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "cardId":Ljava/lang/String;
    move-object/from16 v17, v4

    .end local v4    # "hplmns":[Ljava/lang/String;
    .local v17, "hplmns":[Ljava/lang/String;
    const-string v4, "iso_country_code"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "countryIso":Ljava/lang/String;
    move-object/from16 v18, v6

    .end local v6    # "ehplmns":[Ljava/lang/String;
    .local v18, "ehplmns":[Ljava/lang/String;
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v6

    .line 214
    .local v6, "publicCardId":I
    move-object/from16 v19, v7

    .end local v7    # "hplmnsRaw":Ljava/lang/String;
    .local v19, "hplmnsRaw":Ljava/lang/String;
    const-string v7, "is_embedded"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v20, 0x0

    move-object/from16 v21, v8

    .end local v8    # "ehplmnsRaw":Ljava/lang/String;
    .local v21, "ehplmnsRaw":Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move/from16 v7, v20

    .line 216
    .local v7, "isEmbedded":Z
    :goto_2
    const-string v8, "carrier_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 219
    .local v8, "carrierId":I
    if-eqz v7, :cond_3

    .line 220
    nop

    .line 221
    move-object/from16 v23, v3

    .end local v3    # "number":Ljava/lang/String;
    .local v23, "number":Ljava/lang/String;
    const-string v3, "access_rules"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 220
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/UiccAccessRule;->decodeRules([B)[Landroid/telephony/UiccAccessRule;

    move-result-object v3

    move-object/from16 v33, v3

    .local v3, "accessRules":[Landroid/telephony/UiccAccessRule;
    goto :goto_3

    .line 223
    .end local v23    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    :cond_3
    move-object/from16 v23, v3

    .end local v3    # "number":Ljava/lang/String;
    .restart local v23    # "number":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v33, v3

    .line 225
    .local v33, "accessRules":[Landroid/telephony/UiccAccessRule;
    :goto_3
    nop

    .line 226
    const-string v3, "access_rules_from_carrier_configs"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 225
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/UiccAccessRule;->decodeRules([B)[Landroid/telephony/UiccAccessRule;

    move-result-object v3

    .line 227
    .local v3, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    move/from16 v24, v6

    .end local v6    # "publicCardId":I
    .local v24, "publicCardId":I
    const-string v6, "is_opportunistic"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v25, v3

    const/4 v3, 0x1

    .end local v3    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .local v25, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    if-ne v6, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    move/from16 v3, v20

    :goto_4
    move v6, v3

    .line 229
    .local v6, "isOpportunistic":Z
    const-string v3, "group_uuid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "groupUUID":Ljava/lang/String;
    move-object/from16 v26, v3

    .end local v3    # "groupUUID":Ljava/lang/String;
    .local v26, "groupUUID":Ljava/lang/String;
    const-string v3, "profile_class"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 233
    .local v3, "profileClass":I
    move/from16 v27, v3

    .end local v3    # "profileClass":I
    .local v27, "profileClass":I
    const-string v3, "subscription_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 235
    .local v3, "subType":I
    move/from16 v28, v3

    .end local v3    # "subType":I
    .local v28, "subType":I
    const-string v3, "group_owner"

    move/from16 v29, v6

    const/4 v6, 0x0

    .end local v6    # "isOpportunistic":Z
    .local v29, "isOpportunistic":Z
    invoke-virtual {v0, v1, v3, v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getOptionalStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 237
    .local v34, "groupOwner":Ljava/lang/String;
    const-string v3, "uicc_applications_enabled"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    move/from16 v20, v6

    :cond_5
    move/from16 v6, v20

    .line 240
    .local v6, "areUiccApplicationsEnabled":Z
    sget-boolean v3, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->VDBG:Z

    if-eqz v3, :cond_6

    .line 242
    invoke-static/range {v30 .. v30}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "iccIdToPrint":Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "cardIdToPrint":Ljava/lang/String;
    move-object/from16 v16, v5

    .end local v5    # "cardId":Ljava/lang/String;
    .local v16, "cardId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getSubInfoRecord] id:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iccid:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " simSlotIndex:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " carrierid:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " displayName:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " nameSource:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iconTint:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dataRoaming:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mcc:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mnc:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " countIso:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isEmbedded:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " accessRules:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " carrierConfigAccessRules: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cardId:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " publicCardId:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v24

    .end local v24    # "publicCardId":I
    .local v0, "publicCardId":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v0    # "publicCardId":I
    .restart local v24    # "publicCardId":I
    const-string v0, " isOpportunistic:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v29

    .end local v29    # "isOpportunistic":Z
    .local v0, "isOpportunistic":Z
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v0    # "isOpportunistic":Z
    .restart local v29    # "isOpportunistic":Z
    const-string v0, " groupUUID:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    .end local v26    # "groupUUID":Ljava/lang/String;
    .local v0, "groupUUID":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "groupUUID":Ljava/lang/String;
    .restart local v26    # "groupUUID":Ljava/lang/String;
    const-string v0, " profileClass:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v27

    .end local v27    # "profileClass":I
    .local v0, "profileClass":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v0    # "profileClass":I
    .restart local v27    # "profileClass":I
    const-string v0, " subscriptionType: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v28

    .end local v28    # "subType":I
    .local v0, "subType":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v0    # "subType":I
    .restart local v28    # "subType":I
    const-string v0, " carrierConfigAccessRules:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    .end local v25    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .local v0, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v0    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .restart local v25    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    const-string v0, " areUiccApplicationsEnabled: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    move-object/from16 v5, p0

    invoke-direct {v5, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 240
    .end local v1    # "cardIdToPrint":Ljava/lang/String;
    .end local v3    # "iccIdToPrint":Ljava/lang/String;
    .end local v16    # "cardId":Ljava/lang/String;
    .restart local v5    # "cardId":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v5

    move-object v5, v0

    .line 261
    .end local v5    # "cardId":Ljava/lang/String;
    .restart local v16    # "cardId":Ljava/lang/String;
    :goto_5
    iget-object v0, v5, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "line1Number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v1, v23

    .end local v23    # "number":Ljava/lang/String;
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 263
    move-object v3, v0

    move-object v1, v3

    .end local v1    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    goto :goto_6

    .line 262
    .end local v3    # "number":Ljava/lang/String;
    .restart local v23    # "number":Ljava/lang/String;
    :cond_7
    move-object/from16 v1, v23

    .line 266
    .end local v23    # "number":Ljava/lang/String;
    .restart local v1    # "number":Ljava/lang/String;
    :cond_8
    :goto_6
    new-instance v35, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-object/from16 v36, v25

    move-object/from16 v37, v26

    move/from16 v38, v27

    move/from16 v39, v28

    .end local v25    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .end local v26    # "groupUUID":Ljava/lang/String;
    .end local v27    # "profileClass":I
    .end local v28    # "subType":I
    .local v36, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .local v37, "groupUUID":Ljava/lang/String;
    .local v38, "profileClass":I
    .local v39, "subType":I
    move-object/from16 v3, v35

    const/16 v23, 0x0

    move-object/from16 v40, v0

    move-object/from16 v41, v4

    move-object/from16 v0, v17

    .end local v4    # "countryIso":Ljava/lang/String;
    .end local v17    # "hplmns":[Ljava/lang/String;
    .local v0, "hplmns":[Ljava/lang/String;
    .local v40, "line1Number":Ljava/lang/String;
    .local v41, "countryIso":Ljava/lang/String;
    move v4, v2

    move-object/from16 v42, v16

    .end local v16    # "cardId":Ljava/lang/String;
    .local v42, "cardId":Ljava/lang/String;
    move-object/from16 v5, v30

    move/from16 v43, v2

    move/from16 v46, v6

    move-object/from16 v2, v18

    move/from16 v44, v24

    move/from16 v45, v29

    .end local v6    # "areUiccApplicationsEnabled":Z
    .end local v18    # "ehplmns":[Ljava/lang/String;
    .end local v24    # "publicCardId":I
    .end local v29    # "isOpportunistic":Z
    .local v2, "ehplmns":[Ljava/lang/String;
    .local v43, "id":I
    .local v44, "publicCardId":I
    .local v45, "isOpportunistic":Z
    .local v46, "areUiccApplicationsEnabled":Z
    move v6, v15

    move/from16 v48, v7

    move-object/from16 v47, v19

    .end local v7    # "isEmbedded":Z
    .end local v19    # "hplmnsRaw":Ljava/lang/String;
    .local v47, "hplmnsRaw":Ljava/lang/String;
    .local v48, "isEmbedded":Z
    move-object v7, v14

    move/from16 v50, v8

    move-object/from16 v49, v21

    .end local v8    # "carrierId":I
    .end local v21    # "ehplmnsRaw":Ljava/lang/String;
    .local v49, "ehplmnsRaw":Ljava/lang/String;
    .local v50, "carrierId":I
    move-object/from16 v8, v31

    move-object/from16 v51, v9

    .end local v9    # "mnc":Ljava/lang/String;
    .local v51, "mnc":Ljava/lang/String;
    move v9, v13

    move-object/from16 v52, v10

    .end local v10    # "mcc":Ljava/lang/String;
    .local v52, "mcc":Ljava/lang/String;
    move v10, v12

    move/from16 v53, v11

    .end local v11    # "dataRoaming":I
    .local v53, "dataRoaming":I
    move-object v11, v1

    move/from16 v54, v12

    .end local v12    # "iconTint":I
    .local v54, "iconTint":I
    move/from16 v12, v53

    move/from16 v55, v13

    .end local v13    # "nameSource":I
    .local v55, "nameSource":I
    move-object/from16 v13, v32

    move-object/from16 v56, v14

    .end local v14    # "displayName":Ljava/lang/String;
    .local v56, "displayName":Ljava/lang/String;
    move-object/from16 v14, v52

    move/from16 v57, v15

    .end local v15    # "simSlotIndex":I
    .local v57, "simSlotIndex":I
    move-object/from16 v15, v51

    move-object/from16 v16, v41

    move/from16 v17, v48

    move-object/from16 v18, v33

    move-object/from16 v19, v42

    move/from16 v20, v44

    move/from16 v21, v45

    move-object/from16 v22, v37

    move/from16 v24, v50

    move/from16 v25, v38

    move/from16 v26, v39

    move-object/from16 v27, v34

    move-object/from16 v28, v36

    move/from16 v29, v46

    invoke-direct/range {v3 .. v29}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;Z)V

    .line 273
    .local v3, "info":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    invoke-virtual {v3, v2, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->setAssociatedPlmns([Ljava/lang/String;[Ljava/lang/String;)V

    .line 274
    return-object v3
.end method

.method public blacklist getSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "callingFeatureId"    # Ljava/lang/String;

    .line 731
    move-object v0, p1

    .line 733
    .local v0, "pkgName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    const-string v2, "getSubscriptionInfo"

    invoke-static {v1, p2, v0, p3, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 739
    return-object v2

    .line 742
    :cond_1
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubscriptionInfo]- invalid subId, subId ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 744
    return-object v2

    .line 748
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 750
    .local v3, "identity":J
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "_id=?"

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    int-to-long v10, p2

    .line 752
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v10, 0x0

    .line 750
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 754
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_5

    .line 755
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 756
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    .line 757
    .local v5, "si":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    if-eqz v5, :cond_4

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSubscriptionInfo]+ subId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", subInfo="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    nop

    .line 768
    if-eqz v1, :cond_3

    .line 769
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 773
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 761
    return-object v5

    .line 763
    .end local v5    # "si":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :cond_4
    goto :goto_0

    .line 765
    :cond_5
    :try_start_3
    const-string v5, "[getSubscriptionInfo]- Query fail"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 768
    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    .line 769
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 773
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    nop

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSubscriptionInfo]- subId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",subInfo=null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 779
    return-object v2

    .line 768
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_8

    .line 769
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_8
    nop

    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "subId":I
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 773
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p1    # "callingPackage":Ljava/lang/String;
    .restart local p2    # "subId":I
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    throw v1
.end method

.method public blacklist getSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;

    .line 790
    move-object v0, p1

    .line 792
    .local v0, "pkgName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "getSubscriptionInfoForIccId"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 799
    return-object v2

    .line 802
    :cond_1
    if-nez p2, :cond_2

    .line 803
    const-string v1, "[getSubscriptionInfoForIccId]- null iccid"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 804
    return-object v2

    .line 808
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 810
    .local v3, "identity":J
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "icc_id=?"

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v9, v1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 814
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_5

    .line 815
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 816
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    .line 817
    .local v5, "si":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    if-eqz v5, :cond_4

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSubscriptionInfoForIccId]+ iccId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-static {p2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", subInfo="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    nop

    .line 830
    if-eqz v1, :cond_3

    .line 831
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 835
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    return-object v5

    .line 825
    .end local v5    # "si":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :cond_4
    goto :goto_0

    .line 830
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 827
    :cond_5
    :try_start_3
    const-string v5, "[getSubscriptionInfoForIccId]- Query fail"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 830
    :cond_6
    if-eqz v1, :cond_7

    .line 831
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 835
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    nop

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSubscriptionInfoForIccId]- iccId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",subInfo=null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 841
    return-object v2

    .line 830
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v1, :cond_8

    .line 831
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 833
    :cond_8
    nop

    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "iccId":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 835
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p1    # "callingPackage":Ljava/lang/String;
    .restart local p2    # "iccId":Ljava/lang/String;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    throw v1
.end method

.method protected blacklist logdl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1018
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method public blacklist notifySubscriptionInfoChanged()V
    .locals 8

    .line 138
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    .line 140
    const-string v1, "telephony_registry"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 141
    .local v0, "trm":Landroid/telephony/TelephonyRegistryManager;
    const-string v1, "notifySubscriptionInfoChanged:"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Landroid/telephony/TelephonyRegistryManager;->notifySubscriptionInfoChanged()V

    .line 149
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->broadcastSimInfoContentChanged(Landroid/content/Intent;)V

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionInfoChanged()V

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    .line 155
    .local v1, "metrics":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v3, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mOpptSubInfoListChangedDirtyBit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifyOpportunisticSubscriptionInfoChanged()V

    .line 162
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateActiveSubscriptionInfoList(Ljava/util/List;)V

    .line 163
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 164
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onActiveSubscriptionInfoChanged(Ljava/util/List;)V

    .line 163
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_1
    return-void

    .line 157
    .end local v3    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public blacklist notifySubscriptionInfoChanged(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 923
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    .line 925
    const-string v1, "telephony_registry"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 926
    .local v0, "trm":Landroid/telephony/TelephonyRegistryManager;
    const-string v1, "notifySubscriptionInfoChanged:"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0}, Landroid/telephony/TelephonyRegistryManager;->notifySubscriptionInfoChanged()V

    .line 934
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->broadcastSimInfoContentChanged(Landroid/content/Intent;)V

    .line 937
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionInfoChanged()V

    .line 938
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    .line 940
    .local v1, "metrics":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 941
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 942
    .local v3, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mOpptSubInfoListChangedDirtyBit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifyOpportunisticSubscriptionInfoChanged()V

    .line 947
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateActiveSubscriptionInfoList(Ljava/util/List;)V

    .line 948
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 949
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onActiveSubscriptionInfoChanged(Ljava/util/List;)V

    .line 948
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 951
    :cond_1
    return-void

    .line 942
    .end local v3    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public blacklist putSubinfoRecordUpdatedExtra(Landroid/content/Intent;IIILjava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .param p3, "detectedType"    # I
    .param p4, "subCount"    # I
    .param p5, "propKey"    # Ljava/lang/String;

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putSubinfoRecordUpdatedExtra: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " detectedType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " propKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 976
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 977
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 978
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p1, p2, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_0

    .line 980
    :cond_0
    const-string v1, "putSubinfoRecordUpdatedExtra: no valid subs"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 981
    const-string v1, "phone"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    const-string v1, "slot"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    :goto_0
    const-string v1, "simDetectStatus"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 989
    const-string v1, "simCount"

    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    const-string v1, "simPropKey"

    if-eqz p5, :cond_1

    .line 993
    invoke-virtual {p1, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 995
    :cond_1
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    :goto_1
    return-void
.end method

.method public blacklist setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    .locals 4
    .param p1, "subId"    # I

    .line 850
    const-string v0, "setDefaultDataSubId"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 854
    .local v0, "identity":J
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_2

    .line 864
    :try_start_0
    sget-boolean v2, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    if-eqz v2, :cond_0

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultDataSubIdWithoutCapabilitySwitch] subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Binder.getCallingPid and Binder.getCallingUid are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 865
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v2

    .line 905
    .local v2, "previousDefaultSub":I
    const-string v3, "multi_sim_data_call"

    invoke-virtual {p0, v3, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setGlobalSetting(Ljava/lang/String;I)V

    .line 906
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyDefaultDataSubChanged()V

    .line 907
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->broadcastDefaultDataSubIdChanged(I)V

    .line 908
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 909
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sendDefaultChangedBroadcast(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    .end local v2    # "previousDefaultSub":I
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    nop

    .line 914
    return-void

    .line 912
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 859
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "setDefaultDataSubIdWithoutCapabilitySwitch called with DEFAULT_SUB_ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p1    # "subId":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p1    # "subId":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    throw v2
.end method

.method public blacklist setDefaultVoiceSubId(I)V
    .locals 4
    .param p1, "subId"    # I

    .line 666
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 669
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 670
    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 672
    .local v1, "newHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 673
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 674
    .local v3, "currentHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez v1, :cond_1

    if-nez v3, :cond_1

    .line 675
    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 676
    const-string v0, "[setDefaultVoiceSubId] setUserSelectedOutgoingPhoneAccount(null) when SIM plug out"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 680
    :cond_1
    return-void
.end method

.method public blacklist setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;

    .line 635
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 639
    .local v0, "ret":I
    sget-boolean v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    if-eqz v1, :cond_0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSubscriptionProperty] propKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", propValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Binder.getCallingPid and Binder.getCallingUid are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 645
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 647
    .local v1, "token":J
    if-eqz v0, :cond_2

    .line 648
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getPhoneId(I)I

    move-result v7

    .line 650
    .local v7, "phoneId":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    .line 651
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 650
    invoke-virtual {p0, v4, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 652
    .local v4, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v4, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    move v9, v5

    .line 653
    .local v9, "subCount":I
    const/4 v8, 0x4

    move-object v5, p0

    move-object v6, v3

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->putSubinfoRecordUpdatedExtra(Landroid/content/Intent;IIILjava/lang/String;)V

    .line 655
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifySubscriptionInfoChanged(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 659
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v7    # "phoneId":I
    .end local v9    # "subCount":I
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    throw v3

    .line 657
    :cond_2
    :goto_1
    nop

    .line 659
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    return v0
.end method
