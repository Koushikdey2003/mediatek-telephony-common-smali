.class public Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
.super Lcom/android/internal/telephony/uicc/AdnRecordCache;
.source "MtkAdnRecordCache.java"


# static fields
.field private static final blacklist ADN_FILE_SIZE:I = 0xfa

.field private static final blacklist DBG:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkAdnRecordCache"

.field public static final blacklist MAX_PHB_NAME_LENGTH:I = 0x3c

.field public static final blacklist MAX_PHB_NUMBER_ANR_COUNT:I = 0x1

.field public static final blacklist MAX_PHB_NUMBER_ANR_LENGTH:I = 0x14

.field public static final blacklist MAX_PHB_NUMBER_LENGTH:I = 0x28

.field private static final blacklist PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"


# instance fields
.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private final blacklist mLock:Ljava/lang/Object;

.field protected blacklist mMtkAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mNeedToWait:Z

.field private blacklist mSlotId:I

.field private blacklist mSuccess:Z

.field private blacklist mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 70
    nop

    .line 71
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 72
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    sput-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->DBG:Z

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    .line 91
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 98
    iput-object p2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    iput-object p3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 100
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    .line 101
    if-eqz p3, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    .line 102
    :cond_0
    return-void
.end method

.method private blacklist clearUserWriters()V
    .locals 5

    .line 130
    const-string v0, "clearUserWriters"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedToWait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 133
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 135
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 137
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 139
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdnCace reset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 141
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-direct {p0, v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 144
    return-void

    .line 137
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist dumpAdnLikeFile()V
    .locals 8

    .line 912
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 913
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAdnLikeFile size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 915
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 916
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 918
    .local v2, "key":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 919
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpAdnLikeFile index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "records size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 920
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 921
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 922
    .local v5, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMtkAdnLikeFiles["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 920
    .end local v5    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 915
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v1    # "i":I
    .end local v2    # "key":I
    :cond_1
    return-void
.end method

.method private blacklist sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method private blacklist sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;
    .param p3, "ril_errno"    # I

    .line 156
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 158
    .local v0, "e":Lcom/android/internal/telephony/CommandException;
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logw(Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 161
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addContactToGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 881
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->addContactToGroup(II)Z

    move-result v0

    return v0
.end method

.method public blacklist getAdnRecordsCapacity()[I
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getAdnRecordsCapacity()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnrCount()I
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getAnrCount()I

    move-result v0

    return v0
.end method

.method public blacklist getEmailCount()I
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getEmailCount()I

    move-result v0

    return v0
.end method

.method public blacklist getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRecordsIfLoaded(ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "efid"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSlotId()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    return v0
.end method

.method public blacklist getSneRecordLen()I
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getSneRecordLen()I

    move-result v0

    return v0
.end method

.method public blacklist getUpbDone()I
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUpbDone()I

    move-result v0

    return v0
.end method

.method public blacklist getUsimAasById(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 933
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsimAasList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsimAasMaxCount()I
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxCount()I

    move-result v0

    return v0
.end method

.method public blacklist getUsimAasMaxNameLen()I
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v0

    return v0
.end method

.method public blacklist getUsimGroupById(I)Ljava/lang/String;
    .locals 1
    .param p1, "nGasId"    # I

    .line 865
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsimGrpMaxCount()I
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimGrpMaxCount()I

    move-result v0

    return v0
.end method

.method public blacklist getUsimGrpMaxNameLen()I
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimGrpMaxNameLen()I

    move-result v0

    return v0
.end method

.method public blacklist getsendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .line 1004
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 762
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 781
    :cond_0
    const-string v0, "EVENT_UPDATE_ADN_DONE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    if-eqz v2, :cond_8

    .line 784
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 785
    .local v2, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 786
    .local v3, "efid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 787
    .local v4, "index":I
    iget-object v5, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 789
    .local v5, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    .line 791
    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setRecordIndex(I)V

    .line 792
    iget v6, v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    if-gtz v6, :cond_1

    .line 793
    iput v3, v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    .line 796
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMtkAdnLikeFiles changed index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",adn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "  efid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 799
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    const/16 v7, 0x4f3b

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 801
    if-ne v3, v7, :cond_2

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 802
    invoke-static {v6}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 803
    add-int/lit16 v4, v4, -0xfa

    .line 806
    :cond_2
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v6, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 807
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " index:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "   efid:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 810
    :cond_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    if-eqz v6, :cond_5

    const/16 v6, 0x6f3b

    if-eq v3, v6, :cond_5

    .line 811
    if-ne v3, v7, :cond_4

    .line 815
    add-int/lit16 v4, v4, 0xfa

    .line 816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " index2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 819
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    add-int/lit8 v7, v4, -0x1

    .line 820
    invoke-virtual {v6, v7, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V

    .line 824
    :cond_5
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 825
    .local v6, "response":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 827
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MtkAdnRecordCache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 829
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    .line 830
    const/4 v7, 0x0

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 831
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 833
    :cond_6
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v8, 0x0

    if-nez v7, :cond_7

    goto :goto_0

    :cond_7
    move v1, v8

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    .line 834
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 835
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 837
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "efid":I
    .end local v4    # "index":I
    .end local v5    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v6    # "response":Landroid/os/Message;
    :cond_8
    monitor-exit v0

    .line 838
    goto :goto_2

    .line 837
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 765
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 766
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 768
    .local v1, "efid":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    monitor-enter v2

    .line 769
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 770
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 771
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 772
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    .line 773
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 775
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_LOAD_ALL_ADN_LIKE_DONE exception(slot "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "MtkAdnRecordCache"

    invoke-static {v5, v2, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 779
    nop

    .line 842
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "efid":I
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :goto_2
    return-void

    .line 771
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "efid":I
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public blacklist hasExistGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist hasSne()Z
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->hasSne()Z

    move-result v0

    return v0
.end method

.method public blacklist insertUsimAas(Ljava/lang/String;)I
    .locals 1
    .param p1, "aasName"    # Ljava/lang/String;

    .line 941
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->insertUsimAas(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist insertUsimGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->insertUsimGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist isAdnAccessible()Z
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isAdnAccessible()Z

    move-result v0

    return v0
.end method

.method public blacklist isUsimPhbEfAndNeedReset(I)Z
    .locals 1
    .param p1, "fileId"    # I

    .line 987
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isUsimPhbEfAndNeedReset(I)Z

    move-result v0

    return v0
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 845
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecordCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecordCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecordCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecordCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void
.end method

.method public blacklist moveContactFromGroupsToGroups(I[I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .line 894
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v0

    return v0
.end method

.method protected blacklist notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .line 730
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_0

    .line 731
    return-void

    .line 734
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 735
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 737
    .local v2, "waiter":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotifyWaiters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 739
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 740
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 734
    .end local v2    # "waiter":Landroid/os/Message;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_2
    return-void
.end method

.method public blacklist oppoCheckPbrIsExsit()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isPbrExsit()Z

    move-result v0

    return v0
.end method

.method public blacklist removeContactFromGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 885
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeContactFromGroup(II)Z

    move-result v0

    return v0
.end method

.method public blacklist removeUsimAasById(II)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .line 937
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v0

    return v0
.end method

.method public blacklist removeUsimGroupById(I)Z
    .locals 1
    .param p1, "nGasId"    # I

    .line 869
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeUsimGroupById(I)Z

    move-result v0

    return v0
.end method

.method public blacklist requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestLoadAllAdnLike efid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionEf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 656
    const/4 v0, 0x0

    const/16 v1, 0x4f30

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 657
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadEfFilesFromUsim(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 660
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    if-eqz v0, :cond_0

    .line 661
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->isUim:Z

    goto :goto_0

    .line 664
    :cond_0
    const/16 p1, 0x6f3a

    goto :goto_0

    .line 668
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getRecordsIfLoaded(ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 670
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLoadAllAdnLike efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result = null ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-nez v0, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 673
    if-eqz v0, :cond_4

    .line 674
    if-eqz p3, :cond_3

    .line 675
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 676
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 679
    :cond_3
    return-void

    .line 680
    :cond_4
    if-nez v0, :cond_5

    if-ne p1, v1, :cond_5

    .line 681
    const/4 v1, 0x2

    const-string v2, "Error occurs when query PBR"

    invoke-direct {p0, p3, v2, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 685
    return-void

    .line 689
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    monitor-enter v1

    .line 690
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 692
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v3, :cond_6

    .line 696
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    monitor-exit v1

    return-void

    .line 702
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 703
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 706
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    if-gez p2, :cond_8

    .line 711
    if-eqz p3, :cond_7

    .line 712
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 715
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 718
    :cond_7
    return-void

    .line 721
    :cond_8
    new-instance v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 722
    invoke-virtual {p0, v2, p1, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 721
    invoke-virtual {v1, p1, p2, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 723
    return-void

    .line 706
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist reset()V
    .locals 2

    .line 110
    const-string v0, "reset"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->reset()V

    .line 113
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->clearWaiters()V

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->clearUserWriters()V

    .line 119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->clearAdnRecordSize()V

    .line 123
    :cond_0
    return-void

    .line 115
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist updateAdnAas(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .line 955
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateAdnAas(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized blacklist updateAdnByIndex(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 23
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p5

    monitor-enter p0

    .line 177
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnByIndex efid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", recordIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", adn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    .line 180
    .local v2, "extensionEF":I
    const/4 v3, 0x0

    .line 181
    .local v3, "i":I
    const/4 v4, 0x0

    .line 183
    .local v4, "anr":Ljava/lang/String;
    if-gez v2, :cond_0

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-direct {v1, v11, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 186
    monitor-exit p0

    return-void

    .line 189
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_0
    :try_start_1
    iget-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 190
    const-string v5, ""

    iput-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 192
    :cond_1
    iget-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3c

    if-le v5, v6, :cond_2

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the input length of mAlphaTag is too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f6

    invoke-direct {v1, v11, v5, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 198
    monitor-exit p0

    return-void

    .line 200
    :cond_2
    :try_start_2
    iget-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 201
    const-string v5, ""

    iput-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 203
    :cond_3
    iget-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 204
    .local v5, "numLength":I
    iget-object v6, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v7, 0x2b

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 205
    add-int/lit8 v5, v5, -0x1

    .line 208
    :cond_4
    const/16 v6, 0x28

    if-le v5, v6, :cond_5

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the input length of phoneNumber is too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f5

    invoke-direct {v1, v11, v6, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 214
    monitor-exit p0

    return-void

    .line 217
    :cond_5
    const/4 v3, 0x0

    move v12, v5

    .end local v5    # "numLength":I
    .local v12, "numLength":I
    :goto_0
    const/4 v13, 0x1

    if-ge v3, v13, :cond_9

    .line 218
    :try_start_3
    invoke-virtual {v9, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 219
    if-eqz v4, :cond_8

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 221
    .end local v12    # "numLength":I
    .restart local v5    # "numLength":I
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 222
    add-int/lit8 v5, v5, -0x1

    .line 225
    :cond_6
    const/16 v6, 0x14

    if-le v5, v6, :cond_7

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the input length of additional number is too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f9

    invoke-direct {v1, v11, v6, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 231
    monitor-exit p0

    return-void

    .line 225
    :cond_7
    move v12, v5

    .line 217
    .end local v5    # "numLength":I
    .restart local v12    # "numLength":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_9
    :try_start_4
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v6, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v5

    const/16 v14, 0x1fd

    if-nez v5, :cond_a

    .line 237
    const-string v5, "the email string is too long"

    invoke-direct {v1, v11, v5, v14}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 241
    monitor-exit p0

    return-void

    .line 246
    :cond_a
    const/4 v5, 0x0

    .line 248
    .local v5, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/16 v15, 0x4f30

    const/4 v8, 0x0

    if-ne v0, v15, :cond_c

    .line 249
    :try_start_5
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v6, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadEfFilesFromUsim(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 251
    .local v6, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    if-nez v6, :cond_b

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adn list not exist for EF:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1fb

    invoke-direct {v1, v11, v7, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 256
    monitor-exit p0

    return-void

    .line 259
    :cond_b
    add-int/lit8 v7, v10, -0x1

    :try_start_6
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object v5, v7

    .line 260
    iget v7, v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    move v0, v7

    .line 261
    .end local p1    # "efid":I
    .local v0, "efid":I
    iget v7, v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    move v2, v7

    .line 263
    iput v0, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    move v7, v0

    move/from16 v16, v2

    move-object v6, v5

    goto :goto_1

    .line 248
    .end local v0    # "efid":I
    .end local v6    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .restart local p1    # "efid":I
    :cond_c
    move v7, v0

    move/from16 v16, v2

    move-object v6, v5

    .line 267
    .end local v2    # "extensionEF":I
    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p1    # "efid":I
    .local v6, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v7, "efid":I
    .local v16, "extensionEF":I
    :goto_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v2, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v10, v2, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v0

    const/16 v5, 0x1fc

    if-nez v0, :cond_d

    .line 268
    const-string v0, "drop the email for the limitation of the SIM card"

    invoke-direct {v1, v11, v0, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 272
    monitor-exit p0

    return-void

    .line 275
    :cond_d
    const/4 v0, 0x0

    move-object/from16 v17, v4

    move v4, v0

    .end local v3    # "i":I
    .local v4, "i":I
    .local v17, "anr":Ljava/lang/String;
    :goto_2
    if-ge v4, v13, :cond_f

    .line 276
    :try_start_7
    invoke-virtual {v9, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .end local v17    # "anr":Ljava/lang/String;
    .local v0, "anr":Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v2, v0, v10, v4, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop the additional number for the update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fa

    invoke-direct {v1, v11, v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 282
    monitor-exit p0

    return-void

    .line 275
    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v0

    goto :goto_2

    .line 286
    .end local v0    # "anr":Ljava/lang/String;
    .restart local v17    # "anr":Ljava/lang/String;
    :cond_f
    :try_start_8
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v2, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v0, v10, v2, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkSneCapacityFree(ILjava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v0

    const/16 v3, 0x1fe

    if-nez v0, :cond_10

    .line 287
    const-string v0, "drop the sne for the limitation of the SIM card"

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 291
    monitor-exit p0

    return-void

    .line 295
    :cond_10
    :try_start_9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    move-object/from16 v18, v0

    .line 296
    .local v18, "pendingResponse":Landroid/os/Message;
    if-eqz v18, :cond_11

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-direct {v1, v11, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 299
    monitor-exit p0

    return-void

    .line 302
    :cond_11
    :try_start_a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    const/16 v2, 0x4f3c

    const/16 v14, 0x4f3b

    const/16 v13, 0x4f3a

    const/16 v0, 0x6f3a

    if-eq v7, v0, :cond_12

    if-eq v7, v15, :cond_12

    if-eq v7, v13, :cond_12

    if-eq v7, v14, :cond_12

    if-eq v7, v2, :cond_12

    const/16 v2, 0x4f3d

    if-ne v7, v2, :cond_13

    .line 305
    :cond_12
    iget-object v2, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    .line 307
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v2, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeContactGroup(I)Z

    .line 312
    :cond_13
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-nez v2, :cond_14

    .line 313
    monitor-exit p0

    return-void

    .line 316
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_14
    :try_start_b
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 317
    const/4 v3, 0x0

    :try_start_c
    iput-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    .line 318
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 320
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 322
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v7, v10, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 320
    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move/from16 v20, v4

    .end local v4    # "i":I
    .local v20, "i":I
    move v4, v7

    move/from16 v5, v16

    move-object/from16 v22, v6

    .end local v6    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v22, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move/from16 v6, p3

    move v14, v7

    .end local v7    # "efid":I
    .local v14, "efid":I
    move-object/from16 v7, p4

    move-object/from16 v8, v21

    :try_start_d
    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->updateEF(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 326
    :goto_3
    :try_start_e
    iget-boolean v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v2, :cond_15

    .line 327
    :try_start_f
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3

    .line 332
    :catchall_0
    move-exception v0

    move-object/from16 v5, v22

    goto/16 :goto_b

    .line 329
    :catch_0
    move-exception v0

    move-object/from16 v5, v22

    goto/16 :goto_a

    .line 331
    :cond_15
    nop

    .line 332
    :try_start_10
    monitor-exit v19
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 333
    :try_start_11
    iget-boolean v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-nez v2, :cond_16

    .line 334
    monitor-exit p0

    return-void

    .line 337
    :cond_16
    if-eq v14, v0, :cond_19

    if-eq v14, v15, :cond_19

    if-eq v14, v13, :cond_19

    const/16 v0, 0x4f3b

    if-eq v14, v0, :cond_19

    const/16 v0, 0x4f3c

    if-eq v14, v0, :cond_19

    const/16 v0, 0x4f3d

    if-ne v14, v0, :cond_17

    const/4 v0, 0x0

    goto :goto_4

    .line 385
    :cond_17
    const/16 v0, 0x6f3b

    if-ne v14, v0, :cond_18

    .line 386
    const/4 v0, 0x0

    :try_start_12
    invoke-static {v11, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 387
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 390
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_18
    move/from16 v4, v20

    move-object/from16 v5, v22

    goto/16 :goto_8

    .line 337
    :cond_19
    const/4 v0, 0x0

    .line 340
    :goto_4
    :try_start_13
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v3, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move-object/from16 v5, v22

    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_start_14
    invoke-virtual {v2, v3, v10, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v2

    .line 342
    .local v2, "mResult":I
    const/16 v3, -0x1e

    if-ne v3, v2, :cond_1a

    .line 343
    const-string v0, "drop the SNE for the limitation of the SIM card"

    const/16 v3, 0x1fe

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_5

    .line 347
    :cond_1a
    const/16 v4, -0x28

    if-ne v4, v2, :cond_1b

    .line 348
    const-string v0, "the sne string is too long"

    const/16 v3, 0x1ff

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 384
    .end local v2    # "mResult":I
    :goto_5
    move/from16 v4, v20

    goto :goto_8

    .line 353
    .restart local v2    # "mResult":I
    :cond_1b
    const/4 v6, 0x0

    .end local v20    # "i":I
    .local v6, "i":I
    :goto_6
    const/4 v7, 0x1

    if-ge v6, v7, :cond_1c

    .line 354
    :try_start_15
    invoke-virtual {v9, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v8
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 355
    .end local v17    # "anr":Ljava/lang/String;
    .local v8, "anr":Ljava/lang/String;
    :try_start_16
    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v13, v8, v10, v6, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 353
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v8

    goto :goto_6

    .line 379
    .end local v2    # "mResult":I
    :catch_1
    move-exception v0

    move v4, v6

    move-object/from16 v17, v8

    goto :goto_9

    .line 357
    .end local v8    # "anr":Ljava/lang/String;
    .restart local v2    # "mResult":I
    .restart local v17    # "anr":Ljava/lang/String;
    :cond_1c
    :try_start_17
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v8, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    .line 358
    invoke-virtual {v7, v8, v10, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v7

    .line 359
    .local v7, "success":I
    if-ne v3, v7, :cond_1d

    .line 360
    const-string v0, "drop the email for the limitation of the SIM card"

    const/16 v3, 0x1fc

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_7

    .line 364
    :cond_1d
    if-ne v4, v7, :cond_1e

    .line 365
    const-string v0, "the email string is too long"

    const/16 v3, 0x1fd

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_7

    .line 369
    :cond_1e
    const/16 v3, -0x32

    if-ne v3, v7, :cond_1f

    .line 370
    const-string v0, "Unkown error occurs when update email"

    const/4 v3, 0x2

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_7

    .line 375
    :cond_1f
    invoke-static {v11, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 376
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 384
    .end local v2    # "mResult":I
    .end local v7    # "success":I
    :goto_7
    move v4, v6

    .line 390
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :goto_8
    monitor-exit p0

    return-void

    .line 379
    .end local v4    # "i":I
    .restart local v6    # "i":I
    :catch_2
    move-exception v0

    move v4, v6

    goto :goto_9

    .end local v6    # "i":I
    .restart local v20    # "i":I
    :catch_3
    move-exception v0

    move/from16 v4, v20

    goto :goto_9

    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_4
    move-exception v0

    move-object/from16 v5, v22

    move/from16 v4, v20

    .line 380
    .end local v20    # "i":I
    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_9
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 383
    monitor-exit p0

    return-void

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v20    # "i":I
    .restart local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v5, v22

    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_b

    .line 329
    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_5
    move-exception v0

    move-object/from16 v5, v22

    .line 330
    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_a
    :try_start_19
    monitor-exit v19
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    monitor-exit p0

    return-void

    .line 332
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :catchall_2
    move-exception v0

    goto :goto_b

    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catchall_3
    move-exception v0

    move-object/from16 v5, v22

    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_b

    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v14    # "efid":I
    .end local v20    # "i":I
    .restart local v4    # "i":I
    .local v6, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v7, "efid":I
    :catchall_4
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v20, v4

    move-object v5, v6

    move v14, v7

    .end local v4    # "i":I
    .end local v6    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v7    # "efid":I
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v14    # "efid":I
    .restart local v20    # "i":I
    :goto_b
    :try_start_1a
    monitor-exit v19
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :try_start_1b
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :catchall_5
    move-exception v0

    goto :goto_b

    .line 176
    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v12    # "numLength":I
    .end local v14    # "efid":I
    .end local v16    # "extensionEF":I
    .end local v17    # "anr":Ljava/lang/String;
    .end local v18    # "pendingResponse":Landroid/os/Message;
    .end local v20    # "i":I
    .end local p2    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p3    # "recordIndex":I
    .end local p4    # "pin2":Ljava/lang/String;
    .end local p5    # "response":Landroid/os/Message;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateAdnBySearch(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Ljava/lang/String;Landroid/os/Message;Ljava/lang/Object;)I
    .locals 25
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;
    .param p6, "object"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    monitor-enter p0

    .line 410
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", oldAdn ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], new Adn["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 412
    const/4 v3, -0x1

    .line 414
    .local v3, "index":I
    const/4 v4, 0x0

    .line 415
    .local v4, "i":I
    const/4 v5, 0x0

    .line 416
    .local v5, "anr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 418
    .local v6, "extensionEF":I
    if-gez v6, :cond_0

    .line 419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EF is not known ADN-like EF:0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 419
    invoke-direct {v1, v11, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 421
    monitor-exit p0

    return v3

    .line 424
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_0
    :try_start_1
    iget-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 425
    const-string v7, ""

    iput-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 427
    :cond_1
    iget-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3c

    if-le v7, v8, :cond_2

    .line 429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the input length of mAlphaTag is too long: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f6

    invoke-direct {v1, v11, v7, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 433
    monitor-exit p0

    return v3

    .line 435
    :cond_2
    :try_start_2
    iget-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 436
    const-string v7, ""

    iput-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 438
    :cond_3
    iget-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 439
    .local v7, "numLength":I
    iget-object v8, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v9, 0x2b

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_4

    .line 440
    add-int/lit8 v7, v7, -0x1

    .line 443
    :cond_4
    const/16 v8, 0x28

    if-le v7, v8, :cond_5

    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the input length of phoneNumber is too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f5

    invoke-direct {v1, v11, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 450
    monitor-exit p0

    return v3

    .line 453
    :cond_5
    const/4 v4, 0x0

    move v13, v7

    .end local v7    # "numLength":I
    .local v13, "numLength":I
    :goto_0
    const/4 v14, 0x1

    if-ge v4, v14, :cond_9

    .line 454
    :try_start_3
    invoke-virtual {v10, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 455
    if-eqz v5, :cond_8

    .line 456
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 457
    .end local v13    # "numLength":I
    .restart local v7    # "numLength":I
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v12, :cond_6

    .line 458
    add-int/lit8 v7, v7, -0x1

    .line 461
    :cond_6
    const/16 v8, 0x14

    if-le v7, v8, :cond_7

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the input length of additional number is too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    invoke-direct {v1, v11, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 467
    monitor-exit p0

    return v3

    .line 461
    :cond_7
    move v13, v7

    .line 453
    .end local v7    # "numLength":I
    .restart local v13    # "numLength":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    :cond_9
    :try_start_4
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v8, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v7

    const/16 v15, 0x1fd

    if-nez v7, :cond_a

    .line 474
    const-string v7, "the email string is too long"

    invoke-direct {v1, v11, v7, v15}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 478
    monitor-exit p0

    return v3

    .line 483
    :cond_a
    const/16 v9, 0x4f30

    const/4 v8, 0x0

    if-ne v0, v9, :cond_b

    .line 484
    :try_start_5
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadEfFilesFromUsim(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    .local v7, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    goto :goto_1

    .line 486
    .end local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :cond_b
    invoke-virtual {v1, v0, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getRecordsIfLoaded(ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    .line 489
    .restart local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :goto_1
    if-nez v7, :cond_c

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adn list not exist for EF:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1fb

    invoke-direct {v1, v11, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 494
    monitor-exit p0

    return v3

    .line 500
    :cond_c
    const/16 v16, 0x1

    .line 501
    .local v16, "count":I
    :try_start_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 502
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-virtual {v2, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isEqual(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 503
    move/from16 v3, v16

    .line 504
    goto :goto_3

    .line 506
    :cond_d
    add-int/lit8 v16, v16, 0x1

    const/4 v8, 0x0

    goto :goto_2

    .line 508
    .end local v17    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :cond_e
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateAdnBySearch index "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 509
    if-ne v3, v12, :cond_10

    .line 510
    iget-object v8, v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_f

    .line 511
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adn record don\'t exist for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f7

    invoke-direct {v1, v11, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_4

    .line 516
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adn record don\'t exist for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v11, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 518
    :goto_4
    monitor-exit p0

    return v3

    .line 521
    :cond_10
    const/4 v8, 0x0

    .line 522
    .local v8, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-ne v0, v9, :cond_11

    .line 524
    add-int/lit8 v12, v3, -0x1

    :try_start_7
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object v8, v12

    .line 525
    iget v12, v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    move v0, v12

    .line 526
    .end local p1    # "efid":I
    .local v0, "efid":I
    iget v12, v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    move v6, v12

    .line 527
    iget v12, v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    move v3, v12

    .line 531
    iput v0, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    .line 532
    iput v6, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    .line 533
    iput v3, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    move v12, v0

    move v15, v3

    move/from16 v18, v6

    goto :goto_5

    .line 522
    .end local v0    # "efid":I
    .restart local p1    # "efid":I
    :cond_11
    move v12, v0

    move v15, v3

    move/from16 v18, v6

    .line 536
    .end local v3    # "index":I
    .end local v6    # "extensionEF":I
    .end local p1    # "efid":I
    .local v12, "efid":I
    .local v15, "index":I
    .local v18, "extensionEF":I
    :goto_5
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    move-object/from16 v19, v0

    .line 538
    .local v19, "pendingResponse":Landroid/os/Message;
    if-eqz v19, :cond_12

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-direct {v1, v11, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 541
    monitor-exit p0

    return v15

    .line 543
    :cond_12
    if-nez v12, :cond_13

    .line 544
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal efid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 545
    monitor-exit p0

    return v15

    .line 547
    :cond_13
    :try_start_9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v3, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v15, v3, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v0

    const/16 v6, 0x1fc

    if-nez v0, :cond_14

    .line 548
    const-string v0, "drop the email for the limitation of the SIM card"

    invoke-direct {v1, v11, v0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 552
    monitor-exit p0

    return v15

    .line 554
    :cond_14
    const/4 v0, 0x0

    move-object/from16 v20, v5

    move v5, v0

    .end local v4    # "i":I
    .local v5, "i":I
    .local v20, "anr":Ljava/lang/String;
    :goto_6
    if-ge v5, v14, :cond_16

    .line 555
    :try_start_a
    invoke-virtual {v10, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 556
    .end local v20    # "anr":Ljava/lang/String;
    .local v0, "anr":Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v3, v0, v15, v5, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop the additional number for the write fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fa

    invoke-direct {v1, v11, v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 561
    monitor-exit p0

    return v15

    .line 554
    :cond_15
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v20, v0

    goto :goto_6

    .line 565
    .end local v0    # "anr":Ljava/lang/String;
    .restart local v20    # "anr":Ljava/lang/String;
    :cond_16
    :try_start_b
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v3, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v0, v15, v3, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkSneCapacityFree(ILjava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v0

    const/16 v4, 0x1fe

    if-nez v0, :cond_17

    .line 566
    const-string v0, "drop the sne for the limitation of the SIM card"

    invoke-direct {v1, v11, v0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 570
    monitor-exit p0

    return v15

    .line 573
    :cond_17
    :try_start_c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 576
    const/4 v0, 0x0

    :try_start_d
    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    .line 577
    iput-boolean v14, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 579
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 581
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v12, v15, v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 579
    move-object/from16 v22, v3

    move-object v3, v0

    const/16 v0, 0x1fe

    move-object/from16 v4, p3

    move/from16 v23, v5

    .end local v5    # "i":I
    .local v23, "i":I
    move v5, v12

    move/from16 v6, v18

    move-object/from16 v24, v7

    .end local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .local v24, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    move v7, v15

    move-object v14, v8

    const/4 v0, 0x0

    .end local v8    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v14, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move-object/from16 v8, p4

    move v0, v9

    move-object/from16 v9, v21

    :try_start_e
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->updateEF(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 586
    :goto_7
    :try_start_f
    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    if-eqz v3, :cond_18

    .line 587
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_7

    .line 591
    :cond_18
    nop

    .line 592
    :try_start_10
    monitor-exit v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 593
    :try_start_11
    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    if-nez v3, :cond_19

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnBySearch mSuccess:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->loge(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 595
    monitor-exit p0

    return v15

    .line 597
    :cond_19
    const/4 v3, 0x0

    .line 598
    .local v3, "success":I
    const/16 v4, 0x6f3a

    if-eq v12, v4, :cond_1c

    if-eq v12, v0, :cond_1c

    const/16 v0, 0x4f3a

    if-eq v12, v0, :cond_1c

    const/16 v0, 0x4f3b

    if-eq v12, v0, :cond_1c

    const/16 v0, 0x4f3c

    if-eq v12, v0, :cond_1c

    const/16 v0, 0x4f3d

    if-ne v12, v0, :cond_1a

    goto :goto_8

    .line 639
    :cond_1a
    const/16 v0, 0x6f3b

    if-ne v12, v0, :cond_1b

    .line 640
    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch FDN response:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x0

    invoke-static {v11, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 642
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V

    .line 644
    :cond_1b
    move/from16 v5, v23

    goto/16 :goto_c

    .line 600
    :cond_1c
    :goto_8
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v4, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v0, v4, v15, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v0

    .line 601
    .local v0, "mResult":I
    const/16 v4, -0x1e

    if-ne v4, v0, :cond_1d

    .line 602
    const-string v4, "drop the SNE for the limitation of the SIM card"

    const/16 v5, 0x1fe

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_9

    .line 606
    :cond_1d
    const/16 v5, -0x28

    if-ne v5, v0, :cond_1e

    .line 607
    const-string v4, "the sne string is too long"

    const/16 v5, 0x1ff

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 639
    .end local v0    # "mResult":I
    :goto_9
    move/from16 v5, v23

    goto :goto_c

    .line 612
    .restart local v0    # "mResult":I
    :cond_1e
    const/4 v6, 0x0

    .end local v23    # "i":I
    .local v6, "i":I
    :goto_a
    const/4 v7, 0x1

    if-ge v6, v7, :cond_1f

    .line 613
    invoke-virtual {v10, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v8

    .line 614
    .end local v20    # "anr":Ljava/lang/String;
    .local v8, "anr":Ljava/lang/String;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v9, v8, v15, v6, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V

    .line 612
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v20, v8

    goto :goto_a

    .line 616
    .end local v8    # "anr":Ljava/lang/String;
    .restart local v20    # "anr":Ljava/lang/String;
    :cond_1f
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v8, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v7, v8, v15, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v7

    move v3, v7

    .line 619
    if-ne v4, v3, :cond_20

    .line 620
    const-string v4, "drop the email for the limitation of the SIM card"

    const/16 v5, 0x1fc

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_b

    .line 623
    :cond_20
    if-ne v5, v3, :cond_21

    .line 624
    const-string v4, "the email string is too long"

    const/16 v5, 0x1fd

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_b

    .line 628
    :cond_21
    const/16 v4, -0x32

    if-ne v4, v3, :cond_22

    .line 629
    const-string v4, "Unkown error occurs when update email"

    const/4 v5, 0x2

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_b

    .line 634
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAdnBySearch response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 635
    const/4 v4, 0x0

    invoke-static {v11, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 636
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 639
    .end local v0    # "mResult":I
    :goto_b
    move v5, v6

    .line 644
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :goto_c
    monitor-exit p0

    return v15

    .line 589
    .end local v3    # "success":I
    .end local v5    # "i":I
    .restart local v23    # "i":I
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_13
    monitor-exit v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit p0

    return v15

    .line 592
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :catchall_0
    move-exception v0

    goto :goto_d

    .end local v14    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v23    # "i":I
    .end local v24    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .restart local v5    # "i":I
    .restart local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .local v8, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v23, v5

    move-object/from16 v24, v7

    move-object v14, v8

    .end local v5    # "i":I
    .end local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .end local v8    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v14    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v23    # "i":I
    .restart local v24    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :goto_d
    :try_start_14
    monitor-exit v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :catchall_2
    move-exception v0

    goto :goto_d

    .line 409
    .end local v12    # "efid":I
    .end local v13    # "numLength":I
    .end local v14    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v15    # "index":I
    .end local v16    # "count":I
    .end local v18    # "extensionEF":I
    .end local v19    # "pendingResponse":Landroid/os/Message;
    .end local v20    # "anr":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v24    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .end local p2    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p3    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p4    # "pin2":Ljava/lang/String;
    .end local p5    # "response":Landroid/os/Message;
    .end local p6    # "object":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist updateContactToGroups(I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .line 889
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateContactToGroups(I[I)Z

    move-result v0

    return v0
.end method

.method public blacklist updateUsimAas(IILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .line 945
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateUsimAas(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateUsimGroup(ILjava/lang/String;)I
    .locals 1
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateUsimGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
