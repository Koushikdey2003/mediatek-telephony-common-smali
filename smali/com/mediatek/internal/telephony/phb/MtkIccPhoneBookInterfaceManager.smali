.class public Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "MtkIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;
    }
.end annotation


# static fields
.field protected static final blacklist DBG:Z

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkIccPhoneBookIM"

.field public static final blacklist mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private volatile blacklist mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

.field private blacklist mErrorCause:I

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field protected final blacklist mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

.field private blacklist mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSlotId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 90
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    .line 114
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x2

    const-string v2, "OemSimStability"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 117
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    .line 104
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    sget-object v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;-><init>(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    .line 106
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 88
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 88
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    return v0
.end method

.method static synthetic blacklist access$102(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    .param p1, "x1"    # I

    .line 88
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    return p1
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;Lcom/android/internal/telephony/CommandException;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandException;

    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object p1
.end method

.method private blacklist getAdnEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .line 639
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 640
    const-string v0, "3F007F10"

    return-object v0

    .line 643
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I
    .locals 2
    .param p1, "e"    # Lcom/android/internal/telephony/CommandException;

    .line 739
    if-nez p1, :cond_0

    .line 740
    const/4 v0, 0x1

    return v0

    .line 743
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 786
    const/4 v0, 0x0

    .local v0, "ret":I
    goto :goto_0

    .line 783
    .end local v0    # "ret":I
    :pswitch_0
    const/16 v0, -0x11

    .line 784
    .restart local v0    # "ret":I
    goto :goto_0

    .line 780
    .end local v0    # "ret":I
    :pswitch_1
    const/16 v0, -0x10

    .line 781
    .restart local v0    # "ret":I
    goto :goto_0

    .line 777
    .end local v0    # "ret":I
    :pswitch_2
    const/16 v0, -0xd

    .line 778
    .restart local v0    # "ret":I
    goto :goto_0

    .line 774
    .end local v0    # "ret":I
    :pswitch_3
    const/16 v0, -0xc

    .line 775
    .restart local v0    # "ret":I
    goto :goto_0

    .line 771
    .end local v0    # "ret":I
    :pswitch_4
    const/16 v0, -0xb

    .line 772
    .restart local v0    # "ret":I
    goto :goto_0

    .line 767
    .end local v0    # "ret":I
    :pswitch_5
    const/16 v0, -0xe

    .line 768
    .restart local v0    # "ret":I
    goto :goto_0

    .line 764
    .end local v0    # "ret":I
    :pswitch_6
    const/4 v0, -0x6

    .line 765
    .restart local v0    # "ret":I
    goto :goto_0

    .line 761
    .end local v0    # "ret":I
    :pswitch_7
    const/4 v0, -0x4

    .line 762
    .restart local v0    # "ret":I
    goto :goto_0

    .line 758
    .end local v0    # "ret":I
    :pswitch_8
    const/4 v0, -0x3

    .line 759
    .restart local v0    # "ret":I
    goto :goto_0

    .line 755
    .end local v0    # "ret":I
    :pswitch_9
    const/4 v0, -0x2

    .line 756
    .restart local v0    # "ret":I
    goto :goto_0

    .line 752
    .end local v0    # "ret":I
    :pswitch_a
    const/4 v0, -0x5

    .line 753
    .restart local v0    # "ret":I
    goto :goto_0

    .line 748
    .end local v0    # "ret":I
    :pswitch_b
    const/4 v0, -0x1

    .line 749
    .restart local v0    # "ret":I
    goto :goto_0

    .line 745
    .end local v0    # "ret":I
    :pswitch_c
    const/16 v0, -0xa

    .line 746
    .restart local v0    # "ret":I
    nop

    .line 790
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addContactToGroup(II)Z
    .locals 2
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 923
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 929
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->addContactToGroup(II)Z

    move-result v1

    :goto_0
    return v1

    .line 925
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist checkThread()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    return-void

    .line 728
    :cond_0
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAdnRecordsCapacity()[I
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1309
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getAdnRecordsCapacity()[I

    move-result-object v1

    :goto_0
    return-object v1

    .line 1305
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist getAdnRecordsInEf(ILjava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "efid"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 697
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v0

    move p1, v0

    .line 698
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsInEF: efid=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 700
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_1

    .line 701
    const-string v0, "getAdnRecordsInEF mAdnCache is null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 702
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 704
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 705
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 707
    .local v0, "loadRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 708
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 709
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v2, :cond_2

    .line 710
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 711
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_0

    .line 713
    :cond_2
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 715
    .end local v1    # "response":Landroid/os/Message;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    :try_start_3
    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v1

    .line 715
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 693
    .end local v0    # "loadRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 689
    .end local p1    # "efid":I
    .end local p2    # "object":Ljava/lang/Object;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getAdnRecordsSize(I)[I
    .locals 4
    .param p1, "efid"    # I

    monitor-enter p0

    .line 656
    :try_start_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsSize: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 657
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 658
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 660
    .local v0, "getSizeRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 662
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 664
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    .line 665
    .local v2, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v2, :cond_2

    .line 666
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getAdnEFPath(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 667
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getAdnEFPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 671
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 673
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    :try_start_2
    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [I

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit p0

    return-object v1

    .line 673
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 655
    .end local v0    # "getSizeRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local p1    # "efid":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getAnrCount()I
    .locals 2

    .line 1159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1166
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getAnrCount()I

    move-result v1

    :goto_0
    return v1

    .line 1162
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getEmailCount()I
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1183
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getEmailCount()I

    move-result v1

    :goto_0
    return v1

    .line 1179
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .locals 2

    monitor-enter p0

    .line 1273
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1280
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 1276
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getRecordsSize()I
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1393
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1395
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlotId()I
    .locals 1

    .line 1404
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    return v0
.end method

.method public blacklist getSneRecordLen()I
    .locals 2

    .line 1244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1251
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getSneRecordLen()I

    move-result v1

    :goto_0
    return v1

    .line 1247
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUpbDone()I
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1285
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUpbDone()I

    move-result v1

    :goto_0
    return v1
.end method

.method public blacklist getUsimAasById(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 1068
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1075
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimAasById(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1071
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUsimAasList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1057
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1053
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUsimAasMaxCount()I
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1200
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimAasMaxCount()I

    move-result v1

    :goto_0
    return v1

    .line 1196
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUsimAasMaxNameLen()I
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1217
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimAasMaxNameLen()I

    move-result v1

    :goto_0
    return v1

    .line 1213
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUsimGroupById(I)Ljava/lang/String;
    .locals 2
    .param p1, "nGasId"    # I

    .line 850
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 857
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 853
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUsimGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 839
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimGroups()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    .line 835
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUsimGrpMaxCount()I
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1039
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimGrpMaxCount()I

    move-result v1

    :goto_0
    return v1

    .line 1035
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUsimGrpMaxNameLen()I
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1022
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimGrpMaxNameLen()I

    move-result v1

    :goto_0
    return v1

    .line 1018
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasExistGroup(Ljava/lang/String;)I
    .locals 2
    .param p1, "grpName"    # Ljava/lang/String;

    .line 998
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1005
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->hasExistGroup(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    .line 1001
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasSne()Z
    .locals 2

    .line 1227
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1234
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->hasSne()Z

    move-result v1

    :goto_0
    return v1

    .line 1230
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist insertUsimAas(Ljava/lang/String;)I
    .locals 2
    .param p1, "aasName"    # Ljava/lang/String;

    .line 1105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1111
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->insertUsimAas(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    .line 1107
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist insertUsimGroup(Ljava/lang/String;)I
    .locals 2
    .param p1, "grpName"    # Ljava/lang/String;

    .line 886
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 892
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->insertUsimGroup(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    .line 888
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAdnAccessible()Z
    .locals 2

    .line 1261
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1268
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->isAdnAccessible()Z

    move-result v1

    :goto_0
    return v1

    .line 1264
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isEmptyRecords(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 1398
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1399
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isEmpty()Z

    move-result v0

    return v0

    .line 1401
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isPhbReady()Z
    .locals 3

    .line 806
    const/4 v0, 0x0

    .line 808
    .local v0, "phbReady":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v1, :cond_0

    .line 809
    const/4 v1, 0x0

    return v1

    .line 812
    :cond_0
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 813
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 814
    instance-of v2, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    if-eqz v2, :cond_1

    .line 815
    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v0

    goto :goto_0

    .line 816
    :cond_1
    instance-of v2, v1, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    if-eqz v2, :cond_2

    .line 817
    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v0

    .line 821
    :cond_2
    :goto_0
    return v0
.end method

.method public blacklist isPhoneBookPbrExist()Z
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->oppoCheckPbrIsExsit()Z

    move-result v0

    return v0
.end method

.method public blacklist isPhoneBookReady()Z
    .locals 1

    .line 1389
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->isPhbReady()Z

    move-result v0

    return v0
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccPbInterfaceManager] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkIccPhoneBookIM"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccPbInterfaceManager] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkIccPhoneBookIM"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccPbInterfaceManager] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkIccPhoneBookIM"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public blacklist moveContactFromGroupsToGroups(I[I[I)Z
    .locals 2
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .line 981
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 987
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 988
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v1

    .line 987
    :goto_0
    return v1

    .line 983
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onPhbReady()V
    .locals 4

    .line 794
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 796
    const/16 v2, 0x6f3a

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v1

    const/4 v3, 0x0

    .line 795
    invoke-virtual {v0, v2, v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 798
    :cond_0
    return-void
.end method

.method public blacklist oppoAddAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber1"    # Ljava/lang/String;
    .param p6, "newPhoneNumber2"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .param p8, "email"    # Ljava/lang/String;

    .line 1318
    move-object v1, p0

    move-object/from16 v2, p6

    const/4 v3, -0x1

    .line 1319
    .local v3, "index":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1325
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->isPhbReady()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_0

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    goto/16 :goto_2

    .line 1329
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 1330
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object v4, v0

    .line 1331
    .local v4, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v4

    .line 1332
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1333
    .local v11, "response":Landroid/os/Message;
    new-instance v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    :try_start_1
    invoke-direct {v8, v5, v12}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    .local v8, "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    :try_start_2
    invoke-direct {v0, v13, v14}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    .local v0, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v6, :cond_3

    .line 1337
    if-eqz v2, :cond_1

    .line 1338
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setNumber2(Ljava/lang/String;)V

    .line 1339
    :cond_1
    if-eqz p8, :cond_2

    .line 1340
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1341
    :cond_2
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    move/from16 v7, p1

    move-object v9, v0

    move-object/from16 v10, p7

    invoke-virtual/range {v6 .. v11}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->oppoUpdateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v6

    move v3, v6

    .line 1342
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 1344
    .end local v0    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v11    # "response":Landroid/os/Message;
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1346
    iget-object v0, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1347
    const/4 v3, -0x1

    .line 1350
    :cond_4
    return v3

    .line 1344
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    :goto_0
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 1325
    .end local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_5
    move-object/from16 v5, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 1326
    :goto_2
    const/4 v0, -0x1

    return v0

    .line 1322
    :cond_6
    move-object/from16 v5, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist oppoUpdateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber1"    # Ljava/lang/String;
    .param p4, "newPhoneNumber2"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "email"    # Ljava/lang/String;

    .line 1355
    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v10, p4

    const/4 v11, 0x1

    .line 1357
    .local v11, "success":Z
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->isPhbReady()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p5

    goto :goto_1

    .line 1367
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 1368
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object v12, v0

    .line 1369
    .local v12, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v12

    .line 1370
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1371
    .local v8, "response":Landroid/os/Message;
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p5

    :try_start_1
    invoke-direct {v0, v9, v15, v13, v14}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1373
    .local v0, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v10, :cond_1

    .line 1374
    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setNumber2(Ljava/lang/String;)V

    .line 1375
    :cond_1
    if-eqz p7, :cond_2

    .line 1376
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1377
    :cond_2
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    invoke-virtual {v3, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    move/from16 v3, p1

    move-object v5, v0

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->oppoUpdateAdnByIndex(IILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 1378
    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 1379
    .end local v0    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "response":Landroid/os/Message;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1380
    iget-object v0, v12, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1379
    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p5

    :goto_0
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 1363
    .end local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_3
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p5

    .line 1364
    :goto_1
    return v2

    .line 1360
    :cond_4
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeContactFromGroup(II)Z
    .locals 2
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 941
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 947
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->removeContactFromGroup(II)Z

    move-result v1

    .line 947
    :goto_0
    return v1

    .line 943
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeUsimAasById(II)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .line 1087
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1093
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->removeUsimAasById(II)Z

    move-result v1

    :goto_0
    return v1

    .line 1089
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeUsimGroupById(I)Z
    .locals 2
    .param p1, "nGasId"    # I

    .line 868
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 874
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->removeUsimGroupById(I)Z

    move-result v1

    :goto_0
    return v1

    .line 870
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateAdnAas(II)Z
    .locals 2
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .line 1143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1149
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnAas(II)Z

    move-result v1

    :goto_0
    return v1

    .line 1145
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .line 472
    invoke-virtual/range {p0 .. p5}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized blacklist updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 507
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_0

    .line 508
    const-string v0, "updateAdnRecordsInEfByIndex mAdnCache is null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 511
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 514
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 516
    .local v0, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 517
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 518
    .local v8, "response":Landroid/os/Message;
    if-nez p3, :cond_2

    .line 519
    const-string v1, ""

    move-object p3, v1

    .line 521
    :cond_2
    if-nez p2, :cond_3

    .line 522
    const-string v1, ""

    move-object p2, v1

    .line 524
    :cond_3
    new-instance v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v5, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .local v5, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v1, :cond_4

    .line 526
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    move v4, p1

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnByIndex(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 527
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_0

    .line 529
    :cond_4
    const-string v1, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 531
    .end local v5    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "response":Landroid/os/Message;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    :try_start_3
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    .line 531
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 503
    .end local v0    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 499
    .end local p1    # "efid":I
    .end local p2    # "newTag":Ljava/lang/String;
    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .end local p4    # "index":I
    .end local p5    # "pin2":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .line 246
    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized blacklist updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    monitor-enter p0

    .line 278
    const/4 v0, -0x1

    .line 279
    .local v0, "index":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 286
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v1, :cond_0

    .line 287
    const-string v1, "updateAdnRecordsInEfBySearchWithError mAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 291
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch: efid=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 295
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v2

    .line 296
    .end local p1    # "efid":I
    .local v2, "efid":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 297
    new-instance p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 299
    .local p1, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 301
    .local v6, "response":Landroid/os/Message;
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v3, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .local v3, "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-nez p5, :cond_2

    .line 303
    const-string v1, ""

    move-object p5, v1

    .line 305
    :cond_2
    if-nez p4, :cond_3

    .line 306
    const-string v1, ""

    move-object p4, v1

    .line 308
    :cond_3
    new-instance v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v4, p4, p5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v4, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v1, :cond_4

    .line 310
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/4 v7, 0x0

    move-object v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnBySearch(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Ljava/lang/String;Landroid/os/Message;Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .line 312
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_0

    .line 314
    :cond_4
    const-string v1, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 316
    .end local v3    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v6    # "response":Landroid/os/Message;
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :try_start_3
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearchWithError success index is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    monitor-exit p0

    return v0

    .line 321
    :cond_5
    :try_start_4
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    .line 316
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 282
    .end local v2    # "efid":I
    .local p1, "efid":I
    :cond_6
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 277
    .end local v0    # "index":I
    .end local p1    # "efid":I
    .end local p2    # "oldTag":Ljava/lang/String;
    .end local p3    # "oldPhoneNumber":Ljava/lang/String;
    .end local p4    # "newTag":Ljava/lang/String;
    .end local p5    # "newPhoneNumber":Ljava/lang/String;
    .end local p6    # "pin2":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist updateContactToGroups(I[I)Z
    .locals 2
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .line 960
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 966
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 967
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateContactToGroups(I[I)Z

    move-result v1

    .line 966
    :goto_0
    return v1

    .line 962
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 2
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .line 192
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 193
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 195
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getSlotId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    goto :goto_0

    .line 198
    :cond_0
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    .line 200
    :goto_0
    const-string v0, "[updateIccRecords] Set mAdnCache value"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 203
    const-string v1, "[updateIccRecords] Set mAdnCache value to null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V

    .line 204
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    .line 206
    :goto_1
    return-void
.end method

.method public blacklist updateUsimAas(IILjava/lang/String;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1130
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateUsimAas(IILjava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    .line 1126
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateUsimGroup(ILjava/lang/String;)I
    .locals 2
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .line 905
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 911
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateUsimGroup(ILjava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    .line 907
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist updateUsimPBRecordsByIndexWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I
    .locals 9
    .param p1, "efid"    # I
    .param p2, "record"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "index"    # I

    monitor-enter p0

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_0

    .line 617
    const-string v0, "updateUsimPBRecordsByIndexWithError mAdnCache is null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 618
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 621
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsByIndexWithError: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 626
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 628
    .local v0, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 629
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 630
    .local v8, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnByIndex(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 631
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 632
    .end local v8    # "response":Landroid/os/Message;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    :try_start_3
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    .line 632
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 612
    .end local v0    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 609
    .end local p1    # "efid":I
    .end local p2    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p3    # "index":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .locals 11
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    monitor-enter p0

    .line 414
    const/4 v0, -0x1

    .line 415
    .local v0, "index":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 421
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v1, :cond_0

    .line 422
    const-string v1, "updateUsimPBRecordsBySearchWithError mAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 426
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v1, :cond_1

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimPBRecordsBySearchWithError: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")==>("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 431
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 433
    .local v1, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 435
    .local v9, "response":Landroid/os/Message;
    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 436
    const-string v2, ""

    invoke-virtual {p3, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setNumber(Ljava/lang/String;)V

    .line 438
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnBySearch(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Ljava/lang/String;Landroid/os/Message;Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .line 440
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 441
    .end local v9    # "response":Landroid/os/Message;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    :try_start_3
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimPBRecordsBySearchWithError success index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 444
    monitor-exit p0

    return v0

    .line 446
    :cond_3
    :try_start_4
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v2

    .line 441
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    .line 417
    .end local v1    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 413
    .end local v0    # "index":I
    .end local p1    # "efid":I
    .end local p2    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p3    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 19
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "newAnr"    # Ljava/lang/String;
    .param p5, "newGrpIds"    # Ljava/lang/String;
    .param p6, "newEmails"    # [Ljava/lang/String;
    .param p7, "index"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 558
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 564
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_0

    .line 565
    const-string v0, "updateUsimPBRecordsInEfByIndexWithError mAdnCache is null"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 566
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 569
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimPBRecordsInEfByIndexWithError: efid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Index="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p7

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ==>  newAnr= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newGrpIds = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_1
    move/from16 v2, p1

    move-object/from16 v14, p4

    move-object/from16 v12, p5

    move/from16 v15, p7

    .line 574
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 575
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object v11, v0

    .line 577
    .local v11, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 578
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 579
    .local v16, "response":Landroid/os/Message;
    if-nez p3, :cond_2

    .line 580
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v17, v0

    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .local v0, "newPhoneNumber":Ljava/lang/String;
    goto :goto_1

    .line 589
    .end local v0    # "newPhoneNumber":Ljava/lang/String;
    .end local v16    # "response":Landroid/os/Message;
    .restart local p3    # "newPhoneNumber":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v18, p2

    move-object/from16 v17, p3

    move-object v4, v11

    goto :goto_3

    .line 579
    .restart local v16    # "response":Landroid/os/Message;
    :cond_2
    move-object/from16 v17, p3

    .line 582
    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .local v17, "newPhoneNumber":Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_3

    .line 583
    :try_start_4
    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v18, v0

    .end local p2    # "newTag":Ljava/lang/String;
    .local v0, "newTag":Ljava/lang/String;
    goto :goto_2

    .line 589
    .end local v0    # "newTag":Ljava/lang/String;
    .end local v16    # "response":Landroid/os/Message;
    .restart local p2    # "newTag":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v18, p2

    move-object v4, v11

    goto :goto_3

    .line 582
    .restart local v16    # "response":Landroid/os/Message;
    :cond_3
    move-object/from16 v18, p2

    .line 585
    .end local p2    # "newTag":Ljava/lang/String;
    .local v18, "newTag":Ljava/lang/String;
    :goto_2
    :try_start_5
    new-instance v13, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object v3, v13

    move/from16 v4, p1

    move/from16 v5, p7

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .local v13, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v3, 0x0

    move-object v4, v11

    .end local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v4, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    move-object v11, v0

    move/from16 v12, p1

    move/from16 v14, p7

    move-object v15, v3

    :try_start_6
    invoke-virtual/range {v11 .. v16}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnByIndex(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 588
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 589
    .end local v13    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v16    # "response":Landroid/os/Message;
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 590
    :try_start_7
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit p0

    return v0

    .line 589
    .end local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :catchall_2
    move-exception v0

    move-object v4, v11

    .end local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    goto :goto_3

    .end local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local p2    # "newTag":Ljava/lang/String;
    .restart local p3    # "newPhoneNumber":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v4, v11

    move-object/from16 v18, p2

    move-object/from16 v17, p3

    .end local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local p2    # "newTag":Ljava/lang/String;
    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .restart local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v17    # "newPhoneNumber":Ljava/lang/String;
    .restart local v18    # "newTag":Ljava/lang/String;
    :goto_3
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3

    .line 560
    .end local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local p2    # "newTag":Ljava/lang/String;
    .restart local p3    # "newPhoneNumber":Ljava/lang/String;
    :cond_4
    move/from16 v2, p1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 557
    .end local p1    # "efid":I
    .end local p2    # "newTag":Ljava/lang/String;
    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .end local p4    # "newAnr":Ljava/lang/String;
    .end local p5    # "newGrpIds":Ljava/lang/String;
    .end local p6    # "newEmails":[Ljava/lang/String;
    .end local p7    # "index":I
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "oldAnr"    # Ljava/lang/String;
    .param p5, "oldGrpIds"    # Ljava/lang/String;
    .param p6, "oldEmails"    # [Ljava/lang/String;
    .param p7, "newTag"    # Ljava/lang/String;
    .param p8, "newPhoneNumber"    # Ljava/lang/String;
    .param p9, "newAnr"    # Ljava/lang/String;
    .param p10, "newGrpIds"    # Ljava/lang/String;
    .param p11, "newEmails"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    monitor-enter p0

    .line 356
    const/4 v2, -0x1

    .line 357
    .local v2, "index":I
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 363
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_0

    .line 364
    const-string v0, "updateUsimPBRecordsInEfBySearchWithError mAdnCache is null"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 365
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 368
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimPBRecordsInEfBySearchWithError: efid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "oldAnr"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " oldGrpIds "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "==> newAnr= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newGrpIds = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p10

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_1
    move/from16 v3, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v10, p9

    move-object/from16 v8, p10

    .line 373
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 374
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object v5, v0

    .line 376
    .local v5, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 377
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 378
    .local v9, "response":Landroid/os/Message;
    new-instance v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    invoke-direct {v6, v4, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 379
    .local v6, "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-nez p8, :cond_2

    .line 380
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v21, v0

    .end local p8    # "newPhoneNumber":Ljava/lang/String;
    .local v0, "newPhoneNumber":Ljava/lang/String;
    goto :goto_1

    .line 390
    .end local v0    # "newPhoneNumber":Ljava/lang/String;
    .end local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .restart local p8    # "newPhoneNumber":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v22, p7

    move-object/from16 v21, p8

    move-object v15, v5

    goto/16 :goto_3

    .line 379
    .restart local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v9    # "response":Landroid/os/Message;
    :cond_2
    move-object/from16 v21, p8

    .line 382
    .end local p8    # "newPhoneNumber":Ljava/lang/String;
    .local v21, "newPhoneNumber":Ljava/lang/String;
    :goto_1
    if-nez p7, :cond_3

    .line 383
    :try_start_4
    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v22, v0

    .end local p7    # "newTag":Ljava/lang/String;
    .local v0, "newTag":Ljava/lang/String;
    goto :goto_2

    .line 390
    .end local v0    # "newTag":Ljava/lang/String;
    .end local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .restart local p7    # "newTag":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v22, p7

    move-object v15, v5

    goto :goto_3

    .line 382
    .restart local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v9    # "response":Landroid/os/Message;
    :cond_3
    move-object/from16 v22, p7

    .line 385
    .end local p7    # "newTag":Ljava/lang/String;
    .local v22, "newTag":Ljava/lang/String;
    :goto_2
    :try_start_5
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v0

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    move-object/from16 v18, p9

    move-object/from16 v19, p11

    move-object/from16 v20, p10

    invoke-direct/range {v13 .. v20}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 387
    .local v7, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, v0

    move-object v15, v5

    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v15, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    move/from16 v5, p1

    move-object v8, v13

    move-object v10, v14

    :try_start_6
    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnBySearch(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Ljava/lang/String;Landroid/os/Message;Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    .line 389
    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 390
    .end local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v7    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 391
    :try_start_7
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsInEfBySearchWithError success index is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 393
    monitor-exit p0

    return v2

    .line 395
    :cond_4
    :try_start_8
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit p0

    return v0

    .line 390
    .end local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :catchall_2
    move-exception v0

    move-object v15, v5

    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    goto :goto_3

    .end local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v21    # "newPhoneNumber":Ljava/lang/String;
    .end local v22    # "newTag":Ljava/lang/String;
    .restart local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local p7    # "newTag":Ljava/lang/String;
    .restart local p8    # "newPhoneNumber":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v15, v5

    move-object/from16 v22, p7

    move-object/from16 v21, p8

    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local p7    # "newTag":Ljava/lang/String;
    .end local p8    # "newPhoneNumber":Ljava/lang/String;
    .restart local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v21    # "newPhoneNumber":Ljava/lang/String;
    .restart local v22    # "newTag":Ljava/lang/String;
    :goto_3
    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3

    .line 359
    .end local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v21    # "newPhoneNumber":Ljava/lang/String;
    .end local v22    # "newTag":Ljava/lang/String;
    .restart local p7    # "newTag":Ljava/lang/String;
    .restart local p8    # "newPhoneNumber":Ljava/lang/String;
    :cond_5
    move/from16 v3, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 355
    .end local v2    # "index":I
    .end local p1    # "efid":I
    .end local p2    # "oldTag":Ljava/lang/String;
    .end local p3    # "oldPhoneNumber":Ljava/lang/String;
    .end local p4    # "oldAnr":Ljava/lang/String;
    .end local p5    # "oldGrpIds":Ljava/lang/String;
    .end local p6    # "oldEmails":[Ljava/lang/String;
    .end local p7    # "newTag":Ljava/lang/String;
    .end local p8    # "newPhoneNumber":Ljava/lang/String;
    .end local p9    # "newAnr":Ljava/lang/String;
    .end local p10    # "newGrpIds":Ljava/lang/String;
    .end local p11    # "newEmails":[Ljava/lang/String;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
