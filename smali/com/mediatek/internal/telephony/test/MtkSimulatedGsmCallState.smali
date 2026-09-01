.class Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;
.super Landroid/os/Handler;
.source "MtkSimulatedGsmCallState.java"


# static fields
.field static final blacklist CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final blacklist EVENT_PROGRESS_CALL_STATE:I = 0x1

.field static final blacklist MAX_CALLS:I = 0x7


# instance fields
.field private blacklist mAutoProgressConnecting:Z

.field blacklist mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

.field private blacklist mNextDialFailImmediately:Z


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mediatek/internal/telephony/test/CallInfo;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mAutoProgressConnecting:Z

    .line 156
    return-void
.end method

.method private blacklist countActiveLines()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/internal/telephony/test/InvalidStateEx;
        }
    .end annotation

    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "hasMpty":Z
    const/4 v1, 0x0

    .line 769
    .local v1, "hasHeld":Z
    const/4 v2, 0x0

    .line 770
    .local v2, "hasActive":Z
    const/4 v3, 0x0

    .line 771
    .local v3, "hasConnecting":Z
    const/4 v4, 0x0

    .line 772
    .local v4, "hasRinging":Z
    const/4 v5, 0x0

    .line 774
    .local v5, "mptyIsHeld":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v8, v7

    if-ge v6, v8, :cond_9

    .line 775
    aget-object v7, v7, v6

    .line 777
    .local v7, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v7, :cond_8

    .line 778
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_1

    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v10, :cond_1

    .line 779
    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v11, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v10, v11, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v8

    :goto_1
    move v5, v10

    goto :goto_3

    .line 780
    :cond_1
    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    const-string v11, "Invalid state"

    const-string v12, "MtkModelInterpreter"

    if-eqz v10, :cond_3

    if-eqz v5, :cond_3

    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v13, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v10, v13, :cond_2

    goto :goto_2

    .line 783
    :cond_2
    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v8, Lcom/mediatek/internal/telephony/test/InvalidStateEx;

    invoke-direct {v8}, Lcom/mediatek/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v8

    .line 785
    :cond_3
    :goto_2
    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-nez v10, :cond_5

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v13, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v10, v13, :cond_4

    goto :goto_3

    .line 788
    :cond_4
    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v8, Lcom/mediatek/internal/telephony/test/InvalidStateEx;

    invoke-direct {v8}, Lcom/mediatek/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v8

    .line 792
    :cond_5
    :goto_3
    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    or-int/2addr v0, v10

    .line 793
    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v11, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v10, v11, :cond_6

    move v10, v9

    goto :goto_4

    :cond_6
    move v10, v8

    :goto_4
    or-int/2addr v1, v10

    .line 794
    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v11, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v10, v11, :cond_7

    move v8, v9

    :cond_7
    or-int/2addr v2, v8

    .line 795
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v8

    or-int/2addr v3, v8

    .line 796
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v8

    or-int/2addr v4, v8

    .line 774
    .end local v7    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 800
    .end local v6    # "i":I
    :cond_9
    const/4 v6, 0x0

    .line 802
    .local v6, "ret":I
    if-eqz v1, :cond_a

    add-int/lit8 v6, v6, 0x1

    .line 803
    :cond_a
    if-eqz v2, :cond_b

    add-int/lit8 v6, v6, 0x1

    .line 804
    :cond_b
    if-eqz v3, :cond_c

    add-int/lit8 v6, v6, 0x1

    .line 805
    :cond_c
    if-eqz v4, :cond_d

    add-int/lit8 v6, v6, 0x1

    .line 807
    :cond_d
    return v6
.end method


# virtual methods
.method public blacklist conference()Z
    .locals 5

    .line 608
    const/4 v0, 0x0

    .line 611
    .local v0, "countCalls":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 612
    aget-object v2, v2, v1

    .line 614
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_0

    .line 615
    add-int/lit8 v0, v0, 0x1

    .line 617
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    const/4 v3, 0x0

    return v3

    .line 611
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    .line 623
    aget-object v2, v2, v1

    .line 625
    .restart local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_2

    .line 626
    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 627
    if-lez v0, :cond_2

    .line 628
    iput-boolean v4, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    .line 622
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    .end local v1    # "i":I
    :cond_3
    return v4
.end method

.method public blacklist explicitCallTransfer()Z
    .locals 4

    .line 638
    const/4 v0, 0x0

    .line 641
    .local v0, "countCalls":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 642
    aget-object v2, v2, v1

    .line 644
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_0

    .line 645
    add-int/lit8 v0, v0, 0x1

    .line 647
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    const/4 v3, 0x0

    return v3

    .line 641
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupAll()Z

    move-result v1

    return v1
.end method

.method public blacklist getClccLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 754
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 755
    aget-object v2, v2, v1

    .line 757
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_0

    .line 758
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/test/CallInfo;->toCLCCLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public blacklist getDriverCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 735
    aget-object v2, v2, v1

    .line 737
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_0

    .line 740
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/test/CallInfo;->toDriverCall(I)Lcom/android/internal/telephony/DriverCall;

    move-result-object v3

    .line 741
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SC< getDriverCalls "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-object v0
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 161
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->progressConnectingCallState()V

    .line 168
    :goto_0
    monitor-exit p0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onAnswer()Z
    .locals 4

    .line 359
    monitor-enter p0

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v1, v1, v0

    .line 363
    .local v1, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v2

    monitor-exit p0

    return v2

    .line 360
    .end local v1    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    .line 372
    const/4 v0, 0x0

    return v0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onChld(CC)Z
    .locals 3
    .param p1, "c0"    # C
    .param p2, "c1"    # C

    .line 394
    const/4 v0, 0x0

    .line 396
    .local v0, "callIndex":I
    if-eqz p2, :cond_1

    .line 397
    add-int/lit8 v0, p2, -0x31

    .line 399
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 400
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 404
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 440
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 436
    .end local v1    # "ret":Z
    :pswitch_0
    const/4 v1, 0x0

    .line 438
    .restart local v1    # "ret":Z
    goto :goto_0

    .line 431
    .end local v1    # "ret":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->explicitCallTransfer()Z

    move-result v1

    .line 432
    .restart local v1    # "ret":Z
    goto :goto_0

    .line 428
    .end local v1    # "ret":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->conference()Z

    move-result v1

    .line 429
    .restart local v1    # "ret":Z
    goto :goto_0

    .line 421
    .end local v1    # "ret":Z
    :pswitch_3
    if-gtz p2, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 424
    .end local v1    # "ret":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->separateCall(I)Z

    move-result v1

    .line 426
    .restart local v1    # "ret":Z
    goto :goto_0

    .line 409
    .end local v1    # "ret":Z
    :pswitch_4
    if-gtz p2, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 412
    .end local v1    # "ret":Z
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v2, v1, v0

    if-nez v2, :cond_4

    .line 413
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 415
    .end local v1    # "ret":Z
    :cond_4
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 416
    const/4 v1, 0x1

    .line 419
    .restart local v1    # "ret":Z
    goto :goto_0

    .line 406
    .end local v1    # "ret":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->releaseHeldOrUDUB()Z

    move-result v1

    .line 407
    .restart local v1    # "ret":Z
    nop

    .line 444
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onDial(Ljava/lang/String;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .line 660
    const-string v0, "SC< dial fail (invalid call state)"

    const/4 v1, -0x1

    .line 662
    .local v1, "freeSlot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SC> dial \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GSM"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mNextDialFailImmediately:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 665
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mNextDialFailImmediately:Z

    .line 667
    const-string v0, "SC< dial fail (per request)"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v4

    .line 671
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "phNum":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 674
    const-string v0, "SC< dial fail (invalid ph num)"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return v4

    .line 679
    :cond_1
    const-string v5, "*99"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 680
    const-string v0, "SC< dial ignored (gprs)"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return v6

    .line 687
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->countActiveLines()I

    move-result v5

    if-le v5, v6, :cond_3

    .line 688
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    return v4

    .line 694
    :cond_3
    nop

    .line 696
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v8, v7

    if-ge v5, v8, :cond_7

    .line 697
    if-gez v1, :cond_4

    aget-object v7, v7, v5

    if-nez v7, :cond_4

    .line 698
    move v1, v5

    .line 701
    :cond_4
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v8, v7, v5

    if-eqz v8, :cond_5

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/test/CallInfo;->isActiveOrHeld()Z

    move-result v7

    if-nez v7, :cond_5

    .line 704
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return v4

    .line 706
    :cond_5
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v8, v7, v5

    if-eqz v8, :cond_6

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v8, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v7, v8, :cond_6

    .line 708
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v7, v7, v5

    sget-object v8, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v8, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 696
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 712
    .end local v5    # "i":I
    :cond_7
    if-gez v1, :cond_8

    .line 713
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v4

    .line 717
    :cond_8
    invoke-static {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->createOutgoingCall(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/CallInfo;

    move-result-object v0

    aput-object v0, v7, v1

    .line 719
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v0, :cond_9

    .line 720
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v0, v0, v1

    .line 721
    invoke-virtual {p0, v6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    .line 720
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 725
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SC< dial (slot = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v6

    .line 691
    :catch_0
    move-exception v5

    .line 692
    .local v5, "ex":Lcom/mediatek/internal/telephony/test/InvalidStateEx;
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v4
.end method

.method public blacklist onHangup()Z
    .locals 5

    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 380
    aget-object v2, v2, v1

    .line 382
    .local v2, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    .line 383
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 384
    const/4 v0, 0x1

    .line 379
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public blacklist progressConnectingCallState()V
    .locals 5

    .line 220
    monitor-enter p0

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v1, v1, v0

    .line 224
    .local v1, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_0

    .line 225
    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 227
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v2, :cond_2

    .line 228
    nop

    .line 229
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    .line 228
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 233
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 236
    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 237
    goto :goto_1

    .line 221
    .end local v1    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "i":I
    :cond_2
    :goto_1
    monitor-exit p0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist progressConnectingToActive()V
    .locals 4

    .line 246
    monitor-enter p0

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v1, v1, v0

    .line 250
    .local v1, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 253
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 254
    goto :goto_1

    .line 247
    .end local v1    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_2
    :goto_1
    monitor-exit p0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist releaseActiveAcceptHeldOrWaiting()Z
    .locals 7

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "foundHeld":Z
    const/4 v1, 0x0

    .line 482
    .local v1, "foundActive":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    .line 483
    aget-object v3, v3, v2

    .line 485
    .local v3, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v6, :cond_0

    .line 486
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v5, v4, v2

    .line 487
    const/4 v1, 0x1

    .line 482
    .end local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_4

    .line 494
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 495
    aget-object v3, v3, v2

    .line 497
    .restart local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v4, v6, :cond_2

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v6, :cond_3

    .line 501
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v5, v4, v2

    .line 502
    const/4 v1, 0x1

    .line 494
    .end local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 507
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 508
    aget-object v3, v3, v2

    .line 510
    .restart local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_5

    .line 511
    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 512
    const/4 v0, 0x1

    .line 507
    .end local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 516
    .end local v2    # "i":I
    :cond_6
    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 517
    return v2

    .line 520
    :cond_7
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v5, v4

    if-ge v3, v5, :cond_9

    .line 521
    aget-object v4, v4, v3

    .line 523
    .local v4, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 524
    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 525
    return v2

    .line 520
    .end local v4    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 529
    .end local v3    # "i":I
    :cond_9
    return v2
.end method

.method public blacklist releaseHeldOrUDUB()Z
    .locals 6

    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    .line 452
    aget-object v2, v2, v1

    .line 454
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    const/4 v0, 0x1

    .line 456
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v4, v3, v1

    .line 457
    goto :goto_1

    .line 451
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 462
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 463
    aget-object v2, v2, v1

    .line 465
    .restart local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v5, :cond_2

    .line 466
    const/4 v0, 0x1

    .line 467
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v4, v3, v1

    .line 462
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 473
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist separateCall(I)Z
    .locals 9
    .param p1, "index"    # I

    .line 570
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v1, v1, p1

    .line 572
    .local v1, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->countActiveLines()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 576
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 577
    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    .line 579
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 580
    const/4 v4, 0x0

    .local v4, "countHeld":I
    const/4 v5, 0x0

    .line 582
    .local v5, "lastHeld":I
    if-eq v2, p1, :cond_1

    .line 583
    iget-object v6, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v6, v6, v2

    .line 585
    .local v6, "cb":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v8, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v7, v8, :cond_1

    .line 586
    sget-object v7, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v7, v6, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 587
    add-int/lit8 v4, v4, 0x1

    .line 588
    move v5, v2

    .line 592
    .end local v6    # "cb":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1
    if-ne v4, v3, :cond_2

    .line 594
    iget-object v6, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v6, v6, v5

    iput-boolean v0, v6, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z
    :try_end_0
    .catch Lcom/mediatek/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v4    # "countHeld":I
    .end local v5    # "lastHeld":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    .end local v2    # "i":I
    :cond_3
    return v3

    .line 573
    :cond_4
    :goto_1
    return v0

    .line 599
    .end local v1    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :catch_0
    move-exception v1

    .line 600
    .local v1, "ex":Lcom/mediatek/internal/telephony/test/InvalidStateEx;
    return v0
.end method

.method public blacklist setAutoProgressConnectingCall(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 265
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mAutoProgressConnecting:Z

    .line 266
    return-void
.end method

.method public blacklist setNextDialFailImmediately(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mNextDialFailImmediately:Z

    .line 271
    return-void
.end method

.method public blacklist switchActiveAndHeldOrWaiting()Z
    .locals 5

    .line 534
    const/4 v0, 0x0

    .line 537
    .local v0, "hasHeld":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 538
    aget-object v2, v2, v1

    .line 540
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_0

    .line 541
    const/4 v0, 0x1

    .line 542
    goto :goto_1

    .line 537
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 548
    aget-object v2, v2, v1

    .line 550
    .restart local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_4

    .line 551
    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_2

    .line 552
    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    goto :goto_3

    .line 553
    :cond_2
    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_3

    .line 554
    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    goto :goto_3

    .line 555
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 556
    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 547
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 561
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist triggerHangupAll()Z
    .locals 5

    .line 340
    monitor-enter p0

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v2, v2, v1

    .line 346
    .local v2, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 343
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return v0

    .line 354
    .end local v0    # "found":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist triggerHangupBackground()Z
    .locals 5

    .line 318
    monitor-enter p0

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v2, v2, v1

    .line 324
    .local v2, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_0

    .line 325
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 326
    const/4 v0, 0x1

    .line 321
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return v0

    .line 331
    .end local v0    # "found":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist triggerHangupForeground()Z
    .locals 6

    .line 279
    monitor-enter p0

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v2, v2, v1

    .line 287
    .local v2, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_1

    .line 291
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v3, v4, v1

    .line 292
    const/4 v0, 0x1

    .line 284
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 297
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v2, v2, v1

    .line 299
    .restart local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_3

    iget-object v4, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_3

    iget-object v4, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_4

    .line 304
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v3, v4, v1

    .line 305
    const/4 v0, 0x1

    .line 296
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    .end local v1    # "i":I
    :cond_5
    monitor-exit p0

    return v0

    .line 309
    .end local v0    # "found":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist triggerRing(Ljava/lang/String;)Z
    .locals 7
    .param p1, "number"    # Ljava/lang/String;

    .line 179
    monitor-enter p0

    .line 180
    const/4 v0, -0x1

    .line 181
    .local v0, "empty":I
    const/4 v1, 0x0

    .line 184
    .local v1, "isCallWaiting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_4

    .line 185
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v3, v3, v2

    .line 187
    .local v3, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-nez v3, :cond_0

    if-gez v0, :cond_0

    .line 188
    move v0, v2

    goto :goto_1

    .line 189
    :cond_0
    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v5, v6, :cond_1

    iget-object v5, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v5, v6, :cond_2

    .line 193
    :cond_1
    const-string v5, "MtkModelInterpreter"

    const-string v6, "triggerRing failed; phone already ringing"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit p0

    return v4

    .line 196
    :cond_2
    if-eqz v3, :cond_3

    .line 197
    const/4 v1, 0x1

    .line 184
    .end local v3    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    :cond_4
    if-gez v0, :cond_5

    .line 202
    const-string v2, "MtkModelInterpreter"

    const-string v3, "triggerRing failed; all full"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit p0

    return v4

    .line 206
    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    .line 207
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v3}, Lcom/mediatek/internal/telephony/test/CallInfo;->createIncomingCall(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/CallInfo;

    move-result-object v3

    aput-object v3, v2, v0

    .line 209
    if-eqz v1, :cond_6

    .line 210
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v2, v2, v0

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 213
    .end local v0    # "empty":I
    .end local v1    # "isCallWaiting":Z
    :cond_6
    monitor-exit p0

    .line 214
    const/4 v0, 0x1

    return v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
