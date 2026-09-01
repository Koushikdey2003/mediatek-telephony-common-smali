.class public Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
.super Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.source "MtkUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;,
        Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist EVENT_AAS_LOAD_DONE:I = 0x5

.field private static final blacklist EVENT_AAS_LOAD_DONE_OPTMZ:I = 0x1c

.field private static final blacklist EVENT_AAS_UPDATE_DONE:I = 0xa

.field private static final blacklist EVENT_ANR_RECORD_LOAD_DONE:I = 0x10

.field private static final blacklist EVENT_ANR_RECORD_LOAD_OPTMZ_DONE:I = 0x17

.field private static final blacklist EVENT_ANR_UPDATE_DONE:I = 0x9

.field private static final blacklist EVENT_EMAIL_RECORD_LOAD_DONE:I = 0xf

.field private static final blacklist EVENT_EMAIL_RECORD_LOAD_OPTMZ_DONE:I = 0x16

.field private static final blacklist EVENT_EMAIL_UPDATE_DONE:I = 0x8

.field private static final blacklist EVENT_EXT1_LOAD_DONE:I = 0x3e9

.field private static final blacklist EVENT_GAS_LOAD_DONE:I = 0x6

.field private static final blacklist EVENT_GAS_UPDATE_DONE:I = 0xd

.field private static final blacklist EVENT_GET_RECORDS_SIZE_DONE:I = 0x3e8

.field private static final blacklist EVENT_GRP_RECORD_LOAD_DONE:I = 0x11

.field private static final blacklist EVENT_GRP_UPDATE_DONE:I = 0xc

.field private static final blacklist EVENT_IAP_RECORD_LOAD_DONE:I = 0xe

.field private static final blacklist EVENT_IAP_UPDATE_DONE:I = 0x7

.field private static final blacklist EVENT_QUERY_ANR_AVAILABLE_OPTMZ_DONE:I = 0x1a

.field private static final blacklist EVENT_QUERY_EMAIL_AVAILABLE_OPTMZ_DONE:I = 0x19

.field private static final blacklist EVENT_QUERY_PHB_ADN_INFO:I = 0x15

.field private static final blacklist EVENT_QUERY_SNE_AVAILABLE_OPTMZ_DONE:I = 0x1b

.field private static final blacklist EVENT_SELECT_EF_FILE_DONE:I = 0x14

.field private static final blacklist EVENT_SNE_RECORD_LOAD_DONE:I = 0x12

.field private static final blacklist EVENT_SNE_RECORD_LOAD_OPTMZ_DONE:I = 0x18

.field private static final blacklist EVENT_SNE_UPDATE_DONE:I = 0xb

.field private static final blacklist EVENT_UPB_CAPABILITY_QUERY_DONE:I = 0x13

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkUsimPhoneBookManager"

.field private static final blacklist PBR_NOT_NEED_NOTIFY:I = -0x1

.field private static final blacklist PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final blacklist UPB_EF_AAS:I = 0x3

.field private static final blacklist UPB_EF_ANR:I = 0x0

.field private static final blacklist UPB_EF_EMAIL:I = 0x1

.field private static final blacklist UPB_EF_GAS:I = 0x4

.field private static final blacklist UPB_EF_GRP:I = 0x5

.field private static final blacklist UPB_EF_SNE:I = 0x2

.field private static final blacklist USIM_DEFAULT_MAX_ADN_FILE_SIZE:I = 0xfa

.field private static final blacklist USIM_DEFAULT_MAX_EMAIL_FILE_SIZE:I = 0x64

.field public static final blacklist USIM_ERROR_CAPACITY_FULL:I = -0x1e

.field public static final blacklist USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final blacklist USIM_ERROR_NAME_LEN:I = -0xa

.field public static final blacklist USIM_ERROR_OTHERS:I = -0x32

.field public static final blacklist USIM_ERROR_STRING_TOOLONG:I = -0x28

.field private static final blacklist USIM_MAX_AAS_ENTRIES_COUNT:I = 0x5

.field public static final blacklist USIM_MAX_ANR_COUNT:I = 0x3

.field private static final blacklist USIM_TYPE2_CONDITIONAL_LENGTH:I = 0x2


# instance fields
.field private blacklist mAasForAnr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAasLock:Ljava/lang/Object;

.field private blacklist mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

.field private blacklist mAdnFileSize:I

.field private blacklist mAdnRecordSize:[I

.field private blacklist mAnrInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist mAnrRecordSize:I

.field private blacklist mCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field private blacklist mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected blacklist mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

.field private blacklist mEmailFileSize:I

.field private blacklist mEmailInfo:[I

.field private blacklist mEmailRecTable:[I

.field private blacklist mEmailRecordSize:I

.field private blacklist mExt1FileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private blacklist mGasForGrp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGasLock:Ljava/lang/Object;

.field private blacklist mIapFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private blacklist mIsReset:Z

.field private blacklist mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mPbrNeedNotify:I

.field private blacklist mPbrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReadEFLinerRecordSizeNum:I

.field private blacklist mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mRecordSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist mRefreshAdnInfo:Z

.field private blacklist mRefreshAnrInfo:Z

.field private blacklist mRefreshEmailInfo:Z

.field private blacklist mResult:I

.field private blacklist mSliceCount:I

.field private blacklist mSlotId:I

.field private blacklist mSneInfo:[I

.field private final blacklist mUPBCapabilityLock:Ljava/lang/Object;

.field private blacklist mUpbCap:[I

.field private blacklist mUpbDone:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 87
    nop

    .line 88
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 89
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
    sput-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->DBG:Z

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 4
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 100
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 101
    const/16 v1, 0x64

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    .line 102
    const/16 v1, 0xfa

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    .line 103
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    .line 107
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 108
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    .line 110
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 111
    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    .line 119
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 121
    const/16 v3, 0x190

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    .line 125
    const/16 v3, 0x8

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    .line 126
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    .line 227
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 100
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 101
    const/16 v1, 0x64

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    .line 102
    const/16 v1, 0xfa

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    .line 103
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    .line 107
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 108
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    .line 110
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 111
    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    .line 119
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 121
    const/16 v3, 0x190

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    .line 125
    const/16 v3, 0x8

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    .line 126
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 178
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    .line 232
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 236
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 239
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 240
    move-object v1, p2

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 241
    move-object v1, p3

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 242
    iput-object p4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 243
    if-nez p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    .line 244
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    .line 245
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 247
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aput v0, v2, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    .end local v1    # "i":I
    :cond_1
    const-string v0, "constructor finished. "

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    .line 84
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    return v0
.end method

.method static synthetic blacklist access$408(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    .line 84
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    return v0
.end method

.method private blacklist buildAnrRecord(Ljava/lang/String;II)[B
    .locals 6
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "recordSize"    # I
    .param p3, "aas"    # I

    .line 3443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildAnrRecord anr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",recordSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3445
    if-gtz p2, :cond_0

    .line 3446
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAnrRecordSize()V

    .line 3452
    :cond_0
    new-array v0, p2, [B

    .line 3454
    .local v0, "anrString":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 3455
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 3454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3458
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3460
    .local v1, "updatedAnr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "MtkUsimPhoneBookManager"

    if-eqz v2, :cond_2

    .line 3461
    const-string v2, "[buildAnrRecord] Empty dialing number"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    return-object v0

    .line 3463
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x14

    if-le v2, v4, :cond_3

    .line 3464
    const-string v2, "[buildAnrRecord] Max length of dialing number is 20"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    const/4 v2, 0x0

    return-object v2

    .line 3468
    :cond_3
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 3469
    .local v2, "bcdNumber":[B
    if-eqz v2, :cond_4

    .line 3470
    int-to-byte v3, p3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 3471
    const/4 v3, 0x2

    array-length v5, v2

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3473
    array-length v3, v2

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 3476
    :cond_4
    return-object v0
.end method

.method private blacklist buildAnrRecordOptmz(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "aas"    # I

    .line 1093
    const/16 v0, 0x81

    .line 1096
    .local v0, "ton":I
    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1097
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are multiple \'+\' in the number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUsimPhoneBookManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    const/16 v0, 0x91

    .line 1102
    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1105
    :cond_1
    const/16 v1, 0x4e

    const/16 v2, 0x3f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1107
    const/16 v1, 0x2c

    const/16 v2, 0x70

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1109
    const/16 v1, 0x3b

    const/16 v2, 0x77

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1116
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1117
    .local v1, "res":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1118
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1119
    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1121
    return-object v1
.end method

.method private blacklist buildEmailRecord(Ljava/lang/String;IIZ)[B
    .locals 9
    .param p1, "strEmail"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "recordSize"    # I
    .param p4, "emailType2"    # Z

    .line 3483
    new-array v0, p3, [B

    .line 3485
    .local v0, "eMailRecData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-ge v1, p3, :cond_0

    .line 3486
    aput-byte v2, v0, v1

    .line 3485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3489
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3490
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 3491
    .local v1, "eMailData":[B
    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v3, v2, :cond_1

    if-eqz p4, :cond_1

    .line 3492
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 3493
    :cond_1
    array-length v2, v0

    :goto_1
    nop

    .line 3494
    .local v2, "maxDataLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildEmailRecord eMailData.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", maxDataLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3497
    array-length v3, v1

    if-le v3, v2, :cond_2

    .line 3498
    const/4 v3, 0x0

    return-object v3

    .line 3501
    :cond_2
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3503
    if-eqz p4, :cond_3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 3504
    add-int/lit8 v4, p2, -0x1

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v4, v5

    .line 3505
    .local v4, "pbrIndex":I
    rem-int v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    .line 3506
    .local v5, "adnRecId":I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v3

    .line 3507
    .local v3, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v6, 0xc0

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3508
    .local v6, "adnFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    add-int/lit8 v7, p3, -0x2

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getSfi()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 3509
    add-int/lit8 v7, p3, -0x1

    int-to-byte v8, v5

    aput-byte v8, v0, v7

    .line 3510
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildEmailRecord x+1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getSfi()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", x+2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3513
    .end local v1    # "eMailData":[B
    .end local v2    # "maxDataLength":I
    .end local v3    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v4    # "pbrIndex":I
    .end local v5    # "adnRecId":I
    .end local v6    # "adnFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_3
    return-object v0
.end method

.method private blacklist changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "baseNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .line 5381
    .local p2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5382
    .local v0, "size":I
    const/4 v1, 0x0

    .line 5385
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5386
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 5387
    .local v2, "adnRecord":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v2, :cond_0

    .line 5388
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setRecordIndex(I)V

    .line 5385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5391
    .end local v2    # "adnRecord":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_1
    return-object p2
.end method

.method private blacklist checkIsPhbReady()Z
    .locals 10

    .line 5239
    const-string v0, "false"

    .line 5240
    .local v0, "strPhbReady":Ljava/lang/String;
    const-string v1, ""

    .line 5241
    .local v1, "strAllSimState":Ljava/lang/String;
    const-string v2, ""

    .line 5242
    .local v2, "strCurSimState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5244
    .local v3, "isSimLocked":Z
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 5245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isPhbReady] InvalidSlotId slotId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5246
    return v5

    .line 5249
    :cond_0
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    const-string v6, "vendor.gsm.sim.ril.phbready"

    const-string v7, "false"

    invoke-static {v4, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5252
    const-string v4, "ro.vendor.mtk_ril_mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "c6m_1rild"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "true"

    const-string v7, "[isPhbReady] isPhbReady: "

    if-eqz v4, :cond_1

    .line 5253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5254
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 5257
    :cond_1
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5258
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 5259
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5260
    .local v4, "values":[Ljava/lang/String;
    iget v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    if-ltz v8, :cond_2

    array-length v9, v4

    if-ge v8, v9, :cond_2

    aget-object v9, v4, v8

    if-eqz v9, :cond_2

    .line 5261
    aget-object v2, v4, v8

    .line 5265
    .end local v4    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, "NETWORK_LOCKED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_4

    .line 5266
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v8

    :goto_1
    move v3, v4

    .line 5268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",strSimState: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5269
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    move v5, v8

    :cond_5
    return v5
.end method

.method private blacklist countEmailCapacity(I)I
    .locals 13
    .param p1, "adnIndex"    # I

    .line 3108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3112
    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v0, v2

    .line 3113
    .local v0, "pbrRecNum":I
    mul-int/2addr v2, v0

    .line 3114
    .local v2, "nOffset":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3115
    .local v3, "numAdnRecs":I
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    add-int/2addr v4, v2

    .line 3116
    .local v4, "nMax":I
    if-ge v3, v4, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v4, v5

    .line 3117
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    .line 3118
    .local v5, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v6, 0xca

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3119
    .local v6, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const/4 v7, 0x0

    .line 3121
    .local v7, "used":I
    if-eqz v6, :cond_5

    .line 3122
    const/4 v1, 0x0

    .line 3123
    .local v1, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/4 v8, 0x0

    .line 3125
    .local v8, "emails":[Ljava/lang/String;
    move v9, v2

    .local v9, "i":I
    :goto_1
    if-ge v9, v4, :cond_4

    .line 3127
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v10

    .line 3132
    goto :goto_2

    .line 3128
    :catch_0
    move-exception v10

    .line 3129
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "countEmailCapacity: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 3131
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "index is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3129
    const-string v12, "MtkUsimPhoneBookManager"

    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    if-nez v1, :cond_2

    .line 3136
    goto :goto_3

    .line 3139
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    .line 3140
    if-eqz v8, :cond_3

    array-length v10, v8

    if-lez v10, :cond_3

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 3142
    add-int/lit8 v7, v7, 0x1

    .line 3125
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3145
    .end local v9    # "i":I
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "countEmailCapacity: email used: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3146
    .end local v1    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "emails":[Ljava/lang/String;
    nop

    .line 3149
    return v7

    .line 3147
    :cond_5
    return v1

    .line 3109
    .end local v0    # "pbrRecNum":I
    .end local v2    # "nOffset":I
    .end local v3    # "numAdnRecs":I
    .end local v4    # "nMax":I
    .end local v5    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v6    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v7    # "used":I
    :cond_6
    :goto_4
    return v1
.end method

.method private blacklist countEmailFileSize()I
    .locals 5

    .line 3093
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3094
    .local v0, "numAdnRecs":I
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v2, v0, v1

    .line 3096
    .local v2, "totalPbrRecNum":I
    rem-int v1, v0, v1

    if-lez v1, :cond_0

    .line 3097
    add-int/lit8 v2, v2, 0x1

    .line 3100
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    if-lez v2, :cond_1

    .line 3101
    const/4 v3, 0x0

    aget v1, v1, v3

    div-int/2addr v1, v2

    return v1

    .line 3103
    :cond_1
    const/16 v1, 0x64

    return v1
.end method

.method private blacklist createPbrFile(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 737
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 743
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 744
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    .line 745
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    .line 759
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    if-lez v2, :cond_1

    .line 760
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aget-byte v2, v2, v0

    if-eq v2, v3, :cond_1

    .line 761
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;-><init>(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    .line 768
    .local v1, "record":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    const/16 v4, 0xc0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 770
    .local v2, "file":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_3

    .line 771
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getSfi()I

    move-result v5

    .line 772
    .local v5, "sfi":I
    if-eq v5, v3, :cond_3

    .line 773
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 776
    .end local v1    # "record":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;
    .end local v2    # "file":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "sfi":I
    :cond_3
    goto :goto_1

    .line 777
    :cond_4
    return-void

    .line 738
    :cond_5
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 739
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 740
    return-void
.end method

.method private blacklist decodeGas(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "srcGas"    # Ljava/lang/String;

    .line 2122
    const-string v0, "MtkUsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeGas] gas string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2124
    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_3

    .line 2128
    :cond_1
    const/4 v1, 0x0

    .line 2131
    .local v1, "retGas":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2132
    .local v2, "ba":[B
    if-nez v2, :cond_2

    .line 2133
    const-string v3, "gas string is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    return-object v1

    .line 2136
    :cond_2
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string v6, "utf-16be"

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 2141
    .end local v2    # "ba":[B
    :goto_1
    goto :goto_2

    .line 2139
    :catch_0
    move-exception v2

    .line 2140
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "[decodeGas] RuntimeException"

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2137
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 2138
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "[decodeGas] implausible UnsupportedEncodingException"

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    goto :goto_1

    .line 2142
    :goto_2
    return-object v1

    .line 2125
    .end local v1    # "retGas":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2149
    .local v0, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2150
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2151
    .local v2, "hexInt":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_0

    .line 2152
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2154
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    .end local v2    # "hexInt":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2157
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAdnStorageInfo()[I
    .locals 4

    .line 4813
    const-string v0, "getAdnStorageInfo"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4815
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 4816
    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 4817
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4816
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 4819
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4821
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4824
    goto :goto_0

    .line 4825
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4822
    :catch_0
    move-exception v1

    .line 4823
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in getAdnStorageInfo"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4831
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    return-object v0

    .line 4825
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4827
    :cond_0
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v1, "GetAdnStorageInfo: filehandle is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getEmailRecNum([Ljava/lang/String;II[BI)I
    .locals 8
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "pbrRecNum"    # I
    .param p3, "nIapRecNum"    # I
    .param p4, "iapRec"    # [B
    .param p5, "tagNum"    # I

    .line 2968
    const/4 v0, 0x0

    .line 2969
    .local v0, "hasEmail":Z
    aget-byte v1, p4, p5

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 2971
    .local v1, "recNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailRecNum recNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2972
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez p1, :cond_1

    .line 2973
    if-ge v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 2974
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v5, v1, -0x1

    aput v3, v2, v5

    .line 2976
    :cond_0
    return v4

    .line 2979
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_3

    .line 2980
    aget-object v6, p1, v5

    if-eqz v6, :cond_2

    aget-object v6, p1, v5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2981
    const/4 v0, 0x1

    .line 2982
    goto :goto_1

    .line 2979
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2986
    .end local v5    # "i":I
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 2987
    if-ge v1, v2, :cond_4

    if-lez v1, :cond_4

    .line 2988
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v5, v1, -0x1

    aput v3, v2, v5

    .line 2990
    :cond_4
    return v4

    .line 2993
    :cond_5
    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    if-gt v1, v3, :cond_6

    if-ge v1, v2, :cond_6

    if-gtz v1, :cond_8

    .line 2995
    :cond_6
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v2, p2

    .line 2996
    .local v2, "nOffset":I
    move v3, v2

    .local v3, "i":I
    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v2

    if-ge v3, v5, :cond_8

    .line 2997
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2999
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v5, v3

    if-nez v6, :cond_7

    .line 3000
    add-int/lit8 v6, v3, 0x1

    sub-int v1, v6, v2

    .line 3001
    aput p3, v5, v3

    .line 3002
    goto :goto_3

    .line 2996
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3007
    .end local v2    # "nOffset":I
    .end local v3    # "i":I
    :cond_8
    :goto_3
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    if-le v1, v2, :cond_9

    .line 3008
    const/16 v1, 0xff

    .line 3011
    :cond_9
    if-ne v1, v4, :cond_a

    .line 3012
    const/4 v2, -0x2

    return v2

    .line 3015
    :cond_a
    return v1
.end method

.method private blacklist getUsimEfType(I)I
    .locals 4
    .param p1, "efTag"    # I

    .line 3204
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3209
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3211
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    .line 3212
    return v1

    .line 3215
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3217
    .local v2, "efFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_2

    .line 3218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUsimEfType] efTag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3219
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3218
    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v1

    return v1

    .line 3222
    :cond_2
    return v1

    .line 3205
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "efFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist isSupportSne()Z
    .locals 3

    .line 5404
    const/4 v0, 0x0

    .line 5405
    .local v0, "isSupport":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSne: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5406
    return v0
.end method

.method private blacklist loadAasFiles()Z
    .locals 4

    .line 4188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4189
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 4190
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4191
    const-string v1, "MtkUsimPhoneBookManager"

    const-string v3, "No PBR files"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    monitor-exit v0

    return v2

    .line 4195
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadPBRFiles()V

    .line 4197
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 4201
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4203
    .local v1, "numRecs":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 4204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4207
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAasFiles read num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4209
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 4211
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 4210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_4
    goto :goto_1

    .line 4214
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAasFileAndWaitOptmz()V

    .line 4217
    .end local v1    # "numRecs":I
    :cond_6
    :goto_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 4198
    :cond_7
    :goto_2
    monitor-exit v0

    return v2

    .line 4218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2753
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUsimPhoneBookManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    :cond_0
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUsimPhoneBookManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    return-void
.end method

.method private blacklist queryUpbCapablityAndWait()V
    .locals 4

    .line 1954
    const-string v0, "queryUpbCapablityAndWait begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1956
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1957
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1958
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 1957
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1961
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1962
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1965
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1968
    goto :goto_1

    .line 1966
    :catch_0
    move-exception v1

    .line 1967
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in queryUpbCapablityAndWait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpbCapablityAndWait done:N_Anr :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Sne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",L_Aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Gas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",L_Gas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Grp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1976
    return-void

    .line 1970
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private blacklist readAASFileAndWait(I)V
    .locals 7
    .param p1, "recId"    # I

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAASFileAndWait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 554
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    return-void

    .line 556
    :cond_1
    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 557
    .local v1, "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v1, :cond_2

    return-void

    .line 559
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    .line 560
    .local v2, "aasEfid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAASFileAndWait-get AAS EFID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AAS has been loaded for Pbr number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 566
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const-string v4, "MtkUsimPhoneBookManager"

    if-eqz v3, :cond_4

    .line 567
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 568
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 569
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 572
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    goto :goto_0

    .line 573
    :catch_0
    move-exception v5

    .line 574
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "Interrupted Exception in readAASFileAndWait"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 580
    return-void

    .line 577
    :cond_4
    const-string v3, "readAASFileAndWait-IccFileHandler is null"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void

    .line 549
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v1    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v2    # "aasEfid":I
    :cond_5
    :goto_1
    return-void
.end method

.method private blacklist readAasFileAndWaitOptmz()V
    .locals 6

    .line 781
    const-string v0, "readAasFileAndWaitOptmz begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 784
    :cond_0
    const/4 v0, 0x0

    .line 786
    .local v0, "aasRecNum":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x3

    aget v3, v1, v2

    if-gez v3, :cond_6

    .line 787
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1

    .line 793
    .local v1, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v1, :cond_2

    return-void

    .line 795
    :cond_2
    const/16 v3, 0xc7

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 796
    .local v3, "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v3, :cond_3

    return-void

    .line 798
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v4

    .line 799
    .local v4, "size":[I
    if-eqz v4, :cond_4

    array-length v5, v4

    if-ne v5, v2, :cond_4

    .line 800
    const/4 v2, 0x2

    aget v0, v4, v2

    .line 802
    .end local v1    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "size":[I
    :cond_4
    goto :goto_1

    .line 788
    :cond_5
    :goto_0
    return-void

    .line 803
    :cond_6
    aget v0, v1, v2

    .line 806
    :goto_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_7

    .line 807
    const/4 v0, 0x5

    .line 810
    :cond_7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x1

    const/16 v3, 0x1c

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBAasList(IILandroid/os/Message;)V

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    goto :goto_2

    .line 814
    :catch_0
    move-exception v1

    .line 815
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAasFileAndWaitOptmz"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v0    # "aasRecNum":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :goto_2
    const-string v0, "readAasFileAndWaitOptmz end"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method private blacklist readAdnFileAndWait(I)Z
    .locals 6
    .param p1, "recId"    # I

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAdnFileAndWait begin: recId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsReset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 709
    .local v0, "previousSize":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 710
    const/16 v3, 0x6f3a

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 709
    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 713
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    goto :goto_0

    .line 714
    :catch_0
    move-exception v2

    .line 715
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 723
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$202(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;I)I

    .line 726
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAdnFileAndWait end: recId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 728
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    if-nez v1, :cond_1

    .line 729
    const/4 v1, 0x1

    return v1

    .line 731
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist readAdnFileAndWaitForUICC(I)V
    .locals 6
    .param p1, "recId"    # I

    .line 5338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAdnFileAndWaitForUICC begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5345
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 5347
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 5349
    :cond_1
    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "MtkUsimPhoneBookManager"

    if-nez v2, :cond_2

    .line 5350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAdnFileAndWaitForUICC: No ADN tag in pbr record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    return-void

    .line 5354
    :cond_2
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    .line 5356
    .local v1, "efid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAdnFileAndWaitForUICC: EFADN id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UiccPhoneBookManager readAdnFileAndWaitForUICC: recId is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5359
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/16 v4, 0x6f3a

    .line 5360
    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    const/4 v5, 0x2

    .line 5361
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 5359
    invoke-virtual {v2, v1, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 5363
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5366
    goto :goto_0

    .line 5364
    :catch_0
    move-exception v2

    .line 5365
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5368
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5373
    .local v2, "previousSize":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_3

    .line 5374
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$202(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;I)I

    .line 5376
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAdnFileAndWaitForUICC end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5377
    return-void

    .line 5347
    .end local v1    # "efid":I
    .end local v2    # "previousSize":I
    :cond_4
    :goto_1
    return-void

    .line 5341
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist readAnrFileAndWait(I)V
    .locals 5
    .param p1, "recId"    # I

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAnrFileAndWait: recId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 617
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAnrFileAndWait: No anr tag in pbr record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 619
    return-void

    .line 622
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$100(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 623
    mul-int/lit16 v2, v1, 0x100

    add-int/lit16 v2, v2, 0xc4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 625
    .local v2, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_2

    .line 622
    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .restart local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_2
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_3

    .line 628
    iput v1, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mAnrIndex:I

    .line 629
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType2Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V

    goto :goto_1

    .line 631
    :cond_3
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_4

    .line 632
    iput v1, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mAnrIndex:I

    .line 633
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType1Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;I)V

    .line 639
    .end local v1    # "index":I
    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_4
    :goto_1
    return-void

    .line 612
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist readAnrFileAndWaitOptmz()V
    .locals 14

    .line 888
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 894
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    return-void

    .line 896
    :cond_1
    const/4 v2, 0x0

    .line 897
    .local v2, "anrIndex":I
    mul-int/lit16 v3, v2, 0x100

    add-int/lit16 v3, v3, 0xc4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 898
    .local v3, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v3, :cond_2

    return-void

    .line 900
    :cond_2
    const/4 v4, 0x0

    .line 901
    .local v4, "totalReadingNum":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 903
    .local v5, "numAdnRecs":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x1

    if-ge v6, v5, :cond_5

    .line 907
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .local v8, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 914
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 915
    :cond_3
    const/4 v9, 0x3

    new-array v9, v9, [I

    .line 916
    .local v9, "data":[I
    aput v1, v9, v1

    .line 917
    aput v6, v9, v7

    .line 918
    const/4 v10, 0x2

    aput v2, v9, v10

    .line 919
    const/4 v10, 0x0

    .line 921
    .local v10, "loadWhat":I
    const/16 v10, 0x17

    .line 922
    iget-object v11, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 923
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v10, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v7, v11, v12, v13}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBAnrEntry(IILandroid/os/Message;)V

    .line 924
    add-int/lit8 v4, v4, 0x1

    .line 903
    .end local v8    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "data":[I
    .end local v10    # "loadWhat":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 908
    :catch_0
    move-exception v8

    .line 909
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAnrFileAndWaitOptmz: mPhoneBookRecords IndexOutOfBoundsnumAdnRecs is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MtkUsimPhoneBookManager"

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v6    # "i":I
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_6

    .line 929
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 930
    return-void

    .line 932
    :cond_6
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readAnrFileAndWaitOptmz before mLock.wait "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " total:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 938
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 940
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    goto :goto_1

    .line 944
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 941
    :catch_1
    move-exception v8

    .line 942
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v9, "MtkUsimPhoneBookManager"

    const-string v10, "Interrupted Exception in readAnrFileAndWaitOptmz"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 946
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readAnrFileAndWaitOptmz after mLock.wait:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 948
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-ne v7, v6, :cond_7

    .line 949
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 951
    :cond_7
    return-void

    .line 944
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 889
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "anrIndex":I
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "totalReadingNum":I
    .end local v5    # "numAdnRecs":I
    :cond_8
    :goto_3
    return-void
.end method

.method private blacklist readAnrRecordSize()V
    .locals 8

    .line 4117
    const-string v0, "readAnrRecordSize"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const-string v1, "MtkUsimPhoneBookManager"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4124
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 4126
    .local v0, "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    .line 4127
    const-string v2, "readAnrRecordSize: fileIds null "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    return-void

    .line 4131
    :cond_1
    const/16 v3, 0xc4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4133
    .local v3, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_2

    goto :goto_1

    .line 4139
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 4140
    .local v4, "efid":I
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v5

    .line 4142
    .local v5, "size":[I
    if-eqz v5, :cond_4

    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    goto :goto_0

    .line 4147
    :cond_3
    aget v1, v5, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 4148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAnrRecordSize end size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4149
    return-void

    .line 4143
    :cond_4
    :goto_0
    const-string v2, "readAnrRecordSize: read record size error."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    return-void

    .line 4134
    .end local v4    # "efid":I
    .end local v5    # "size":[I
    :cond_5
    :goto_1
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 4135
    const-string v2, "readAnrRecordSize: No anr tag in pbr file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    return-void

    .line 4120
    .end local v0    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_6
    :goto_2
    const-string v0, "readAnrRecordSize: PBR null "

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    return-void
.end method

.method private blacklist readEmailFileAndWait(I)V
    .locals 5
    .param p1, "recId"    # I

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readEmailFileAndWait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 429
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    return-void

    .line 431
    :cond_1
    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 432
    .local v1, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v1, :cond_3

    .line 433
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    .line 435
    .local v2, "emailEfid":I
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_2

    .line 436
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType1Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;I)V

    .line 437
    return-void

    .line 438
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_3

    .line 439
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType2Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V

    .line 440
    return-void

    .line 443
    .end local v2    # "emailEfid":I
    :cond_3
    return-void

    .line 424
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v1    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist readEmailFileAndWaitOptmz()V
    .locals 13

    .line 823
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 830
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    return-void

    .line 832
    :cond_1
    const/16 v2, 0xca

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 833
    .local v2, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_2

    return-void

    .line 835
    :cond_2
    const/4 v3, 0x0

    .line 836
    .local v3, "totalReadingNum":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 837
    .local v4, "numAdnRecs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_5

    .line 841
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    .local v7, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 848
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_3

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 849
    :cond_3
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 850
    .local v8, "data":[I
    aput v1, v8, v1

    .line 851
    aput v5, v8, v6

    .line 852
    const/4 v9, 0x0

    .line 854
    .local v9, "loadWhat":I
    const/16 v9, 0x16

    .line 855
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 856
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v9, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v6, v12}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBEmailEntry(IILandroid/os/Message;)V

    .line 857
    add-int/lit8 v3, v3, 0x1

    .line 837
    .end local v7    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "data":[I
    .end local v9    # "loadWhat":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 842
    :catch_0
    move-exception v7

    .line 843
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readEmailFileAndWaitOptmz: mPhoneBookRecords IndexOutOfBoundsnumAdnRecs is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MtkUsimPhoneBookManager"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v5    # "i":I
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_6

    .line 862
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 863
    return-void

    .line 865
    :cond_6
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readEmailFileAndWaitOptmz before mLock.wait "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " total:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 871
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 873
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    goto :goto_1

    .line 877
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 874
    :catch_1
    move-exception v7

    .line 875
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in readEmailFileAndWaitOptmz"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 879
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readEmailFileAndWaitOptmz after mLock.wait: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 881
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v6, v5, :cond_7

    .line 882
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 884
    :cond_7
    return-void

    .line 877
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 824
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "totalReadingNum":I
    .end local v4    # "numAdnRecs":I
    :cond_8
    :goto_3
    return-void
.end method

.method private blacklist readEmailRecordSize()V
    .locals 8

    .line 4152
    const-string v0, "readEmailRecordSize"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const-string v1, "MtkUsimPhoneBookManager"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4159
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 4161
    .local v0, "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    .line 4162
    const-string v2, "readEmailRecordSize: fileId null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    return-void

    .line 4166
    :cond_1
    const/16 v3, 0xca

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4168
    .local v3, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_2

    goto :goto_1

    .line 4174
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 4175
    .local v4, "efid":I
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v5

    .line 4177
    .local v5, "size":[I
    if-eqz v5, :cond_4

    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    goto :goto_0

    .line 4182
    :cond_3
    const/4 v1, 0x2

    aget v1, v5, v1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    .line 4183
    aget v1, v5, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 4184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readEmailRecordSize Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4185
    return-void

    .line 4178
    :cond_4
    :goto_0
    const-string v2, "readEmailRecordSize: read record size error."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    return-void

    .line 4169
    .end local v4    # "efid":I
    .end local v5    # "size":[I
    :cond_5
    :goto_1
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 4170
    const-string v2, "readEmailRecordSize: No email tag in pbr file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    return-void

    .line 4155
    .end local v0    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_6
    :goto_2
    const-string v0, "readEmailRecordSize: PBR null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    return-void
.end method

.method private blacklist readExt1FileAndWait(I)V
    .locals 6
    .param p1, "recId"    # I

    .line 5200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readExt1FileAndWait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5206
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 5208
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const-string v1, "MtkUsimPhoneBookManager"

    if-eqz v0, :cond_4

    const/16 v2, 0xc2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 5213
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    .line 5214
    .local v2, "efid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readExt1FileAndWait-get EXT1 EFID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5216
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 5217
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 5218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXT1 has been loaded for Pbr number "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5219
    return-void

    .line 5223
    :cond_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_3

    .line 5224
    const/16 v3, 0x3e9

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5225
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 5226
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 5228
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5231
    goto :goto_0

    .line 5229
    :catch_0
    move-exception v4

    .line 5230
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v5, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 5236
    return-void

    .line 5233
    :cond_3
    const-string v3, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    return-void

    .line 5209
    .end local v2    # "efid":I
    :cond_4
    :goto_1
    const-string v2, "readExt1FileAndWait-PBR have no Ext1 record"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    return-void

    .line 5203
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist readGasListAndWait()V
    .locals 5

    .line 1979
    const-string v0, "readGasListAndWait begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1981
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1982
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-gtz v1, :cond_0

    .line 1983
    const-string v1, "readGasListAndWait no need to read. return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1984
    monitor-exit v0

    return-void

    .line 1987
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v2, v4, v2

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBGasList(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1990
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1993
    goto :goto_0

    .line 1991
    :catch_0
    move-exception v1

    .line 1992
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readGasListAndWait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1995
    const-string v0, "readGasListAndWait end"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1996
    return-void

    .line 1994
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private blacklist readGrpIdsAndWait()V
    .locals 11

    .line 642
    const-string v0, "readGrpIdsAndWait begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 650
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    return-void

    .line 652
    :cond_1
    const/16 v2, 0xc6

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 653
    .local v2, "grpFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_2

    return-void

    .line 655
    :cond_2
    const/4 v3, 0x0

    .line 656
    .local v3, "totalReadingNum":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 657
    .local v4, "numAdnRecs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const-string v6, "MtkUsimPhoneBookManager"

    const/4 v7, 0x1

    if-ge v5, v4, :cond_5

    .line 661
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    .line 666
    .local v6, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 668
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_3

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 669
    :cond_3
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 670
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v8

    .line 671
    .local v8, "adnIndex":I
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 673
    .local v9, "data":[I
    aput v5, v9, v1

    .line 674
    aput v8, v9, v7

    .line 675
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v10, 0x11

    invoke-virtual {p0, v10, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBGrpEntry(ILandroid/os/Message;)V

    .line 676
    add-int/lit8 v3, v3, 0x1

    .line 657
    .end local v6    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "adnIndex":I
    .end local v9    # "data":[I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 662
    :catch_0
    move-exception v8

    .line 663
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readGrpIdsAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v5    # "i":I
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_6

    .line 681
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 682
    return-void

    .line 684
    :cond_6
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readGrpIdsAndWait before mLock.wait "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " total:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 691
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 694
    goto :goto_1

    .line 692
    :catch_1
    move-exception v5

    .line 693
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v8, "Interrupted Exception in readGrpIdsAndWait"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readGrpIdsAndWait after mLock.wait after mLock.wait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 698
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v7, v5, :cond_7

    .line 699
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 701
    :cond_7
    return-void

    .line 645
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "grpFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "totalReadingNum":I
    .end local v4    # "numAdnRecs":I
    :cond_8
    :goto_2
    return-void
.end method

.method private blacklist readIapFileAndWait(IIZ)V
    .locals 16
    .param p1, "pbrIndex"    # I
    .param p2, "efid"    # I
    .param p3, "forceRefresh"    # Z

    .line 447
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIapFileAndWait pbrIndex :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",efid:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",forceRefresh:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 450
    if-gtz v3, :cond_0

    return-void

    .line 452
    :cond_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 453
    const-string v0, "readIapFileAndWait IapFileList is null !!!! recreate it !"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 457
    :cond_1
    const/4 v0, 0x0

    .line 458
    .local v0, "size":[I
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 459
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [I

    move-object v5, v0

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    move-object v5, v0

    .line 464
    .end local v0    # "size":[I
    .local v5, "size":[I
    :goto_0
    if-eqz v5, :cond_e

    array-length v0, v5

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    goto/16 :goto_8

    .line 472
    :cond_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    if-gt v0, v2, :cond_6

    .line 473
    const-string v0, "Create IAP first!"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v7, 0x0

    .line 477
    .local v7, "value":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v9, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    if-ge v8, v9, :cond_5

    .line 478
    aget v9, v5, v6

    new-array v7, v9, [B

    .line 479
    array-length v9, v7

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_4

    aget-byte v11, v7, v10

    .line 480
    .local v11, "tem":B
    nop

    .line 479
    .end local v11    # "tem":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 482
    :cond_4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 484
    .end local v8    # "i":I
    :cond_5
    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 485
    .end local v0    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v7    # "value":[B
    goto :goto_3

    .line 486
    :cond_6
    const-string v0, "This IAP has been loaded!"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 487
    if-nez v4, :cond_7

    .line 488
    return-void

    .line 492
    :cond_7
    :goto_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 493
    .local v7, "numAdnRecs":I
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    mul-int v8, v2, v0

    .line 494
    .local v8, "nOffset":I
    add-int/2addr v0, v8

    .line 495
    .local v0, "nMax":I
    if-ge v7, v0, :cond_8

    move v9, v7

    goto :goto_4

    :cond_8
    move v9, v0

    .line 497
    .end local v0    # "nMax":I
    .local v9, "nMax":I
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readIapFileAndWait nOffset "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", nMax "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "totalReadingNum":I
    move v10, v8

    move v11, v10

    move v10, v0

    .end local v0    # "totalReadingNum":I
    .local v10, "totalReadingNum":I
    .local v11, "i":I
    :goto_5
    const/4 v12, 0x1

    if-ge v11, v9, :cond_b

    .line 502
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 509
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_9

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_a

    .line 510
    :cond_9
    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 511
    const/4 v13, 0x2

    new-array v13, v13, [I

    .line 512
    .local v13, "data":[I
    aput v2, v13, v6

    .line 513
    sub-int v14, v11, v8

    aput v14, v13, v12

    .line 514
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v14, v11, 0x1

    sub-int/2addr v14, v8

    aget v15, v5, v6

    const/16 v6, 0xe

    invoke-virtual {v1, v6, v13}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v12, v3, v14, v15, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 516
    add-int/lit8 v10, v10, 0x1

    .line 499
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v13    # "data":[I
    :cond_a
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_5

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readIapFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "index is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "MtkUsimPhoneBookManager"

    invoke-static {v13, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v11    # "i":I
    :cond_b
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_c

    .line 521
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 522
    return-void

    .line 524
    :cond_c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readIapFileAndWait before mLock.wait "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " total:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 529
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 531
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    goto :goto_6

    .line 535
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 532
    :catch_1
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v11, "MtkUsimPhoneBookManager"

    const-string v13, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_6
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readIapFileAndWait after mLock.wait after mLock.wait:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 539
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v12, v0, :cond_d

    .line 540
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 542
    :cond_d
    return-void

    .line 535
    :goto_7
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 465
    .end local v7    # "numAdnRecs":I
    .end local v8    # "nOffset":I
    .end local v9    # "nMax":I
    .end local v10    # "totalReadingNum":I
    :cond_e
    :goto_8
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v6, "readIapFileAndWait: read record size error."

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v0, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 469
    return-void
.end method

.method private blacklist readSneFileAndWait(I)V
    .locals 5
    .param p1, "recId"    # I

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readSneFileAndWait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 591
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    return-void

    .line 593
    :cond_1
    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 594
    .local v1, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v1, :cond_2

    return-void

    .line 596
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    .line 597
    .local v2, "sneEfid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSneFileAndWait: EFSNE id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_3

    .line 600
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType2Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V

    .line 601
    return-void

    .line 602
    :cond_3
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_4

    .line 603
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType1Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;I)V

    .line 604
    return-void

    .line 606
    :cond_4
    return-void

    .line 586
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v1    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v2    # "sneEfid":I
    :cond_5
    :goto_0
    return-void
.end method

.method private blacklist readSneFileAndWaitOptmz()V
    .locals 13

    .line 955
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 961
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1

    return-void

    .line 963
    :cond_1
    const/16 v2, 0xc3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 964
    .local v2, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_2

    return-void

    .line 966
    :cond_2
    const/4 v3, 0x0

    .line 967
    .local v3, "totalReadingNum":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 968
    .local v4, "numAdnRecs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_5

    .line 972
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .local v7, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 979
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_3

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 980
    :cond_3
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 981
    .local v8, "data":[I
    aput v1, v8, v1

    .line 982
    aput v5, v8, v6

    .line 983
    const/4 v9, 0x0

    .line 985
    .local v9, "loadWhat":I
    const/16 v9, 0x18

    .line 986
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 987
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v9, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v6, v12}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBSneEntry(IILandroid/os/Message;)V

    .line 988
    add-int/lit8 v3, v3, 0x1

    .line 968
    .end local v7    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "data":[I
    .end local v9    # "loadWhat":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 973
    :catch_0
    move-exception v7

    .line 974
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readSneFileAndWaitOptmz: mPhoneBookRecords IndexOutOfBoundsnumAdnRecs is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MtkUsimPhoneBookManager"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .end local v5    # "i":I
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_6

    .line 993
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 994
    return-void

    .line 996
    :cond_6
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSneFileAndWaitOptmz before mLock.wait "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " total:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1002
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1004
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1007
    goto :goto_1

    .line 1008
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1005
    :catch_1
    move-exception v7

    .line 1006
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in readSneFileAndWaitOptmz"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1010
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSneFileAndWaitOptmz after mLock.wait: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1012
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v6, v5, :cond_7

    .line 1013
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1015
    :cond_7
    return-void

    .line 1008
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 956
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "totalReadingNum":I
    .end local v4    # "numAdnRecs":I
    :cond_8
    :goto_3
    return-void
.end method

.method private blacklist readType1Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;I)V
    .locals 23
    .param p1, "file"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .param p2, "anrIndex"    # I

    .line 3577
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType1Ef:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3579
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_0

    .line 3580
    return-void

    .line 3583
    :cond_0
    iget v3, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    .line 3584
    .local v3, "pbrIndex":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3585
    .local v4, "numAdnRecs":I
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    mul-int v5, v3, v0

    .line 3586
    .local v5, "nOffset":I
    add-int/2addr v0, v5

    .line 3587
    .local v0, "nMax":I
    if-ge v4, v0, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v0

    .line 3588
    .end local v0    # "nMax":I
    .local v6, "nMax":I
    :goto_0
    const/4 v7, 0x0

    .line 3589
    .local v7, "what":I
    const/4 v0, 0x0

    .line 3591
    .local v0, "size":[I
    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 3592
    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [I

    move-object v8, v0

    goto :goto_1

    .line 3594
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    move-object v8, v0

    .line 3597
    .end local v0    # "size":[I
    .local v8, "size":[I
    :goto_1
    if-eqz v8, :cond_12

    array-length v0, v8

    const/4 v9, 0x3

    if-eq v0, v9, :cond_3

    move/from16 v20, v3

    move/from16 v22, v5

    move/from16 v21, v6

    goto/16 :goto_b

    .line 3602
    :cond_3
    const/4 v10, 0x0

    aget v11, v8, v10

    .line 3603
    .local v11, "recordSize":I
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    rem-int/lit16 v12, v0, 0x100

    .line 3604
    .local v12, "tag":I
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    div-int/lit16 v13, v0, 0x100

    .line 3605
    .local v13, "fileIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readType1Ef: RecordSize = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3607
    const/16 v14, 0xca

    if-ne v12, v14, :cond_4

    .line 3608
    move v0, v5

    move v15, v0

    .local v15, "i":I
    :goto_2
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v0, v5

    if-ge v15, v0, :cond_4

    .line 3610
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aput v10, v0, v15
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3614
    nop

    .line 3608
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3611
    :catch_0
    move-exception v0

    .line 3612
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init RecTable error "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v14, "MtkUsimPhoneBookManager"

    invoke-static {v14, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v15    # "i":I
    :cond_4
    if-nez v11, :cond_5

    .line 3619
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v9, "readType1Ef: recordSize is 0. "

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    return-void

    .line 3623
    :cond_5
    const/4 v0, 0x0

    .line 3625
    .local v0, "totalReadingNum":I
    move v10, v5

    move v14, v10

    move v10, v0

    .end local v0    # "totalReadingNum":I
    .local v10, "totalReadingNum":I
    .local v14, "i":I
    :goto_3
    if-ge v14, v6, :cond_b

    .line 3629
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3635
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 3637
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_7

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v20, v3

    move/from16 v22, v5

    move/from16 v21, v6

    goto/16 :goto_6

    .line 3638
    :cond_7
    :goto_4
    new-array v15, v9, [I

    .line 3639
    .local v15, "data":[I
    iget v9, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    const/16 v16, 0x0

    aput v9, v15, v16

    .line 3640
    const/4 v9, 0x1

    aput v14, v15, v9

    .line 3641
    const/4 v9, 0x2

    aput p2, v15, v9

    .line 3642
    const/4 v9, 0x0

    .line 3644
    .local v9, "loadWhat":I
    move/from16 v20, v3

    const/16 v3, 0xc3

    .end local v3    # "pbrIndex":I
    .local v20, "pbrIndex":I
    if-eq v12, v3, :cond_a

    const/16 v3, 0xc4

    if-eq v12, v3, :cond_9

    const/16 v3, 0xca

    if-eq v12, v3, :cond_8

    .line 3660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v17, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const-string v0, "not support tag "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3651
    .end local v17    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_8
    move-object/from16 v17, v0

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v17    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    add-int/lit8 v0, v14, 0x1

    sub-int/2addr v0, v5

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v3, v5

    add-int/2addr v0, v3

    const/4 v3, 0x0

    aput v0, v15, v3

    .line 3652
    const/16 v9, 0xf

    .line 3653
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3654
    goto :goto_5

    .line 3646
    .end local v17    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_9
    move-object/from16 v17, v0

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v17    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/16 v9, 0x10

    .line 3647
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 3648
    goto :goto_5

    .line 3656
    .end local v17    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_a
    move-object/from16 v17, v0

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v17    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/16 v9, 0x12

    .line 3657
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3658
    nop

    .line 3664
    :goto_5
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    add-int/lit8 v18, v14, 0x1

    move/from16 v21, v6

    .end local v6    # "nMax":I
    .local v21, "nMax":I
    sub-int v6, v18, v5

    move/from16 v22, v5

    .end local v5    # "nOffset":I
    .local v22, "nOffset":I
    invoke-virtual {v1, v9, v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v3, v6, v11, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 3666
    add-int/lit8 v10, v10, 0x1

    .line 3625
    .end local v9    # "loadWhat":I
    .end local v15    # "data":[I
    .end local v17    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v20

    move/from16 v6, v21

    move/from16 v5, v22

    const/4 v9, 0x3

    goto/16 :goto_3

    .line 3630
    .end local v20    # "pbrIndex":I
    .end local v21    # "nMax":I
    .end local v22    # "nOffset":I
    .restart local v3    # "pbrIndex":I
    .restart local v5    # "nOffset":I
    .restart local v6    # "nMax":I
    :catch_1
    move-exception v0

    move/from16 v20, v3

    move/from16 v22, v5

    move/from16 v21, v6

    .line 3631
    .end local v3    # "pbrIndex":I
    .end local v5    # "nOffset":I
    .end local v6    # "nMax":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v20    # "pbrIndex":I
    .restart local v21    # "nMax":I
    .restart local v22    # "nOffset":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readType1Ef: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "index is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    goto :goto_7

    .line 3625
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v20    # "pbrIndex":I
    .end local v21    # "nMax":I
    .end local v22    # "nOffset":I
    .restart local v3    # "pbrIndex":I
    .restart local v5    # "nOffset":I
    .restart local v6    # "nMax":I
    :cond_b
    move/from16 v20, v3

    move/from16 v22, v5

    move/from16 v21, v6

    .line 3670
    .end local v3    # "pbrIndex":I
    .end local v5    # "nOffset":I
    .end local v6    # "nMax":I
    .end local v14    # "i":I
    .restart local v20    # "pbrIndex":I
    .restart local v21    # "nMax":I
    .restart local v22    # "nOffset":I
    :goto_7
    const/16 v3, 0xc3

    if-eq v12, v3, :cond_10

    const/16 v3, 0xc4

    if-eq v12, v3, :cond_e

    const/16 v3, 0xca

    if-eq v12, v3, :cond_c

    .line 3696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support tag "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3680
    :cond_c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_d

    .line 3681
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3682
    return-void

    .line 3684
    :cond_d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3686
    goto :goto_8

    .line 3672
    :cond_e
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_f

    .line 3673
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3674
    return-void

    .line 3676
    :cond_f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3678
    goto :goto_8

    .line 3688
    :cond_10
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_11

    .line 3689
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3690
    return-void

    .line 3692
    :cond_11
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3694
    nop

    .line 3700
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType1Ef before mLock.wait "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " total:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3702
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3704
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3707
    goto :goto_9

    .line 3708
    :catchall_0
    move-exception v0

    goto :goto_a

    .line 3705
    :catch_2
    move-exception v0

    .line 3706
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readType1Ef"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_9
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType1Ef after mLock.wait "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3711
    return-void

    .line 3708
    :goto_a
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3597
    .end local v10    # "totalReadingNum":I
    .end local v11    # "recordSize":I
    .end local v12    # "tag":I
    .end local v13    # "fileIndex":I
    .end local v20    # "pbrIndex":I
    .end local v21    # "nMax":I
    .end local v22    # "nOffset":I
    .restart local v3    # "pbrIndex":I
    .restart local v5    # "nOffset":I
    .restart local v6    # "nMax":I
    :cond_12
    move/from16 v20, v3

    move/from16 v22, v5

    move/from16 v21, v6

    .line 3598
    .end local v3    # "pbrIndex":I
    .end local v5    # "nOffset":I
    .end local v6    # "nMax":I
    .restart local v20    # "pbrIndex":I
    .restart local v21    # "nMax":I
    .restart local v22    # "nOffset":I
    :goto_b
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "readType1Ef: read record size error."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    return-void
.end method

.method private blacklist readType2Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V
    .locals 25
    .param p1, "file"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3715
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType2Ef:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3717
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v3, 0xa9

    if-eq v0, v3, :cond_0

    .line 3718
    return-void

    .line 3721
    :cond_0
    iget v3, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    .line 3722
    .local v3, "recId":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    iget v4, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v4

    .line 3724
    .local v4, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v4, :cond_1

    .line 3725
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v5, "Error: no fileIds"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    return-void

    .line 3729
    :cond_1
    const/16 v0, 0xc1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3730
    .local v5, "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v5, :cond_2

    .line 3731
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v6, "Can\'t locate EF_IAP in EF_PBR."

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    return-void

    .line 3735
    :cond_2
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v0

    const/4 v6, 0x0

    invoke-direct {v1, v3, v0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 3737
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_1b

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 3738
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    goto/16 :goto_e

    .line 3743
    :cond_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3744
    .local v7, "numAdnRecs":I
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    mul-int v8, v3, v0

    .line 3745
    .local v8, "nOffset":I
    add-int/2addr v0, v8

    .line 3746
    .local v0, "nMax":I
    if-ge v7, v0, :cond_4

    move v9, v7

    goto :goto_0

    :cond_4
    move v9, v0

    .line 3748
    .end local v0    # "nMax":I
    .local v9, "nMax":I
    :goto_0
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    const/16 v10, 0xca

    const/16 v11, 0xc4

    const/16 v12, 0xc3

    if-eq v0, v12, :cond_8

    if-eq v0, v11, :cond_7

    if-eq v0, v10, :cond_5

    .line 3764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no implement type2 EF "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "MtkUsimPhoneBookManager"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    return-void

    .line 3752
    :cond_5
    move v0, v8

    move v13, v0

    .local v13, "i":I
    :goto_1
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v0, v8

    if-ge v13, v0, :cond_6

    .line 3754
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aput v6, v0, v13
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3758
    nop

    .line 3752
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3755
    :catch_0
    move-exception v0

    .line 3756
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "init RecTable error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MtkUsimPhoneBookManager"

    invoke-static {v15, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v13    # "i":I
    :cond_6
    goto :goto_2

    .line 3750
    :cond_7
    goto :goto_2

    .line 3762
    :cond_8
    nop

    .line 3768
    :goto_2
    const/4 v0, 0x0

    .line 3769
    .local v0, "size":[I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v13

    .line 3770
    .local v13, "efid":I
    iget-object v14, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v14, :cond_9

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 3771
    iget-object v14, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [I

    move-object v14, v0

    goto :goto_3

    .line 3773
    :cond_9
    invoke-virtual {v1, v13}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    move-object v14, v0

    .line 3776
    .end local v0    # "size":[I
    .local v14, "size":[I
    :goto_3
    if-eqz v14, :cond_1a

    array-length v0, v14

    const/4 v15, 0x3

    if-eq v0, v15, :cond_a

    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    goto/16 :goto_d

    .line 3781
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readType2: RecordSize = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v14, v6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3782
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/ArrayList;

    .line 3784
    .local v10, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 3785
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v6, "Warning: IAP size is 0"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    return-void

    .line 3789
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v16

    .line 3790
    .local v16, "type2Index":I
    const/4 v0, 0x0

    .line 3792
    .local v0, "totalReadingNum":I
    move/from16 v17, v8

    move/from16 v18, v0

    move/from16 v11, v17

    .end local v0    # "totalReadingNum":I
    .local v11, "i":I
    .local v18, "totalReadingNum":I
    :goto_4
    if-ge v11, v9, :cond_13

    .line 3796
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3801
    .local v0, "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 3803
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_d

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_c

    goto :goto_5

    :cond_c
    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    move/from16 v3, v18

    goto/16 :goto_7

    .line 3804
    :cond_d
    :goto_5
    sub-int v12, v11, v8

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 3805
    .local v12, "iapRecord":[B
    aget-byte v6, v12, v16

    const/16 v15, 0xff

    and-int/2addr v6, v15

    .line 3807
    .local v6, "index":I
    if-lez v6, :cond_12

    if-lt v6, v15, :cond_e

    .line 3808
    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    move/from16 v3, v18

    goto/16 :goto_7

    .line 3811
    :cond_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    .end local v0    # "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v22, "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const-string v0, "Type2 iap["

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v0, v11, v8

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3814
    const/4 v0, 0x3

    new-array v15, v0, [I

    .line 3815
    .local v15, "data":[I
    const/16 v20, 0x0

    aput v3, v15, v20

    .line 3816
    const/16 v19, 0x1

    aput v11, v15, v19

    .line 3817
    const/16 v21, 0x0

    .line 3819
    .local v21, "loadWhat":I
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    move/from16 v23, v3

    const/16 v3, 0xc3

    .end local v3    # "recId":I
    .local v23, "recId":I
    if-eq v0, v3, :cond_11

    const/16 v3, 0xc4

    if-eq v0, v3, :cond_10

    const/16 v3, 0xca

    if-eq v0, v3, :cond_f

    .line 3836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support tag "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v21

    goto :goto_6

    .line 3827
    :cond_f
    add-int/lit8 v0, v11, 0x1

    sub-int/2addr v0, v8

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v3, v8

    add-int/2addr v0, v3

    const/4 v3, 0x0

    aput v0, v15, v3

    .line 3828
    const/16 v21, 0xf

    .line 3829
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3830
    move/from16 v0, v21

    goto :goto_6

    .line 3821
    :cond_10
    const/16 v21, 0x10

    .line 3822
    const/4 v0, 0x2

    iget v3, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mAnrIndex:I

    aput v3, v15, v0

    .line 3823
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 3824
    move/from16 v0, v21

    goto :goto_6

    .line 3832
    :cond_11
    const/16 v21, 0x12

    .line 3833
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3834
    move/from16 v0, v21

    .line 3840
    .end local v21    # "loadWhat":I
    .local v0, "loadWhat":I
    :goto_6
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v21, v4

    const/16 v19, 0x0

    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .local v21, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    aget v4, v14, v19

    move-object/from16 v24, v5

    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v24, "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual {v1, v0, v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v13, v6, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 3842
    move/from16 v3, v18

    .end local v18    # "totalReadingNum":I
    .local v3, "totalReadingNum":I
    add-int/lit8 v18, v3, 0x1

    .end local v3    # "totalReadingNum":I
    .restart local v18    # "totalReadingNum":I
    goto :goto_8

    .line 3807
    .end local v15    # "data":[I
    .end local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v22    # "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v23    # "recId":I
    .end local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v0, "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v3, "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_12
    move-object/from16 v22, v0

    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    move/from16 v3, v18

    .line 3792
    .end local v0    # "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v6    # "index":I
    .end local v12    # "iapRecord":[B
    .end local v18    # "totalReadingNum":I
    .local v3, "totalReadingNum":I
    .restart local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "recId":I
    .restart local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_7
    move/from16 v18, v3

    .end local v3    # "totalReadingNum":I
    .restart local v18    # "totalReadingNum":I
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v21

    move/from16 v3, v23

    move-object/from16 v5, v24

    const/4 v6, 0x0

    const/16 v12, 0xc3

    const/4 v15, 0x3

    goto/16 :goto_4

    .line 3797
    .end local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v23    # "recId":I
    .end local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v3, "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :catch_1
    move-exception v0

    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    move/from16 v3, v18

    .line 3798
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v18    # "totalReadingNum":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .local v3, "totalReadingNum":I
    .restart local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "recId":I
    .restart local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readType2Ef: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    goto :goto_9

    .line 3792
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v23    # "recId":I
    .end local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v3, "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v18    # "totalReadingNum":I
    :cond_13
    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    move/from16 v3, v18

    .line 3846
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v11    # "i":I
    .end local v18    # "totalReadingNum":I
    .local v3, "totalReadingNum":I
    .restart local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "recId":I
    .restart local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_9
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    const/16 v4, 0xc3

    if-eq v0, v4, :cond_18

    const/16 v4, 0xc4

    if-eq v0, v4, :cond_16

    const/16 v4, 0xca

    if-eq v0, v4, :cond_14

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support tag "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MtkUsimPhoneBookManager"

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3856
    :cond_14
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_15

    .line 3857
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3858
    return-void

    .line 3860
    :cond_15
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3862
    goto :goto_a

    .line 3848
    :cond_16
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_17

    .line 3849
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3850
    return-void

    .line 3852
    :cond_17
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3854
    goto :goto_a

    .line 3864
    :cond_18
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_19

    .line 3865
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3866
    return-void

    .line 3868
    :cond_19
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3870
    nop

    .line 3876
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readType2Ef before mLock.wait "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " total:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3878
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3880
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3883
    goto :goto_b

    .line 3884
    :catchall_0
    move-exception v0

    goto :goto_c

    .line 3881
    :catch_2
    move-exception v0

    .line 3882
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readType2Ef"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_b
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readType2Ef after mLock.wait "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3886
    return-void

    .line 3884
    :goto_c
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3776
    .end local v10    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v16    # "type2Index":I
    .end local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v23    # "recId":I
    .end local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v3, "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_1a
    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    .line 3777
    .end local v3    # "recId":I
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "recId":I
    .restart local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_d
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "readType2: read record size error."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    return-void

    .line 3737
    .end local v7    # "numAdnRecs":I
    .end local v8    # "nOffset":I
    .end local v9    # "nMax":I
    .end local v13    # "efid":I
    .end local v14    # "size":[I
    .end local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v23    # "recId":I
    .end local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_1b
    move/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    .line 3739
    .end local v3    # "recId":I
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v21    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "recId":I
    .restart local v24    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_e
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "Error: IAP file is empty"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    return-void
.end method

.method private blacklist updatePhoneAdnRecordWithAnrByIndex(III[B)V
    .locals 7
    .param p1, "recId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "anrRecData"    # [B

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithAnrByIndex the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th anr record is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2001
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2006
    const/4 v0, 0x1

    aget-byte v1, p4, v0

    .line 2007
    .local v1, "anrRecLength":I
    const/4 v2, 0x0

    aget-byte v2, p4, v2

    .line 2009
    .local v2, "anrAas":I
    if-lez v1, :cond_2

    const/16 v3, 0xb

    if-gt v1, v3, :cond_2

    .line 2010
    const/4 v3, 0x2

    aget-byte v0, p4, v0

    invoke-static {p4, v3, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 2015
    .local v0, "anr":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2016
    const/4 v3, 0x0

    .line 2018
    .local v3, "aas":Ljava/lang/String;
    if-lez v2, :cond_0

    const/16 v4, 0xff

    if-eq v2, v4, :cond_0

    .line 2019
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2020
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 2022
    .local v4, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v2, v5, :cond_0

    .line 2023
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    .line 2027
    .end local v4    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " th anr is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " the anrIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2032
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    .local v4, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2040
    invoke-virtual {v4, v0, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 2041
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 2042
    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 2044
    :cond_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2033
    .end local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_0
    move-exception v4

    .line 2034
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePhoneAdnRecordWithAnrByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2036
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2034
    const-string v6, "MtkUsimPhoneBookManager"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    return-void

    .line 2047
    .end local v0    # "anr":Ljava/lang/String;
    .end local v3    # "aas":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist updatePhoneAdnRecordWithAnrByIndexOptmz(IIILcom/mediatek/internal/telephony/phb/PhbEntry;)V
    .locals 6
    .param p1, "recId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "anrData"    # Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithAnrByIndexOptmz the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " anr record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1044
    if-eqz p4, :cond_3

    iget-object v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1047
    iget v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    const/16 v2, 0x91

    if-ne v0, v2, :cond_0

    .line 1048
    iget-object v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "anr":Ljava/lang/String;
    goto :goto_0

    .line 1050
    .end local v0    # "anr":Ljava/lang/String;
    :cond_0
    iget-object v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 1054
    .restart local v0    # "anr":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x3f

    const/16 v3, 0x4e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1056
    const/16 v2, 0x70

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1058
    const/16 v2, 0x77

    const/16 v3, 0x3b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1060
    iget v2, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 1062
    .local v2, "anrAas":I
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1063
    const/4 v1, 0x0

    .line 1064
    .local v1, "aas":Ljava/lang/String;
    if-lez v2, :cond_1

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    .line 1065
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1066
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 1069
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " th anr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " the anrIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1075
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 1083
    invoke-virtual {v3, v0, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 1084
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1085
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 1087
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1076
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_0
    move-exception v3

    .line 1077
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhoneAdnRecordWithAnrByIndex: mPhoneBookRecords IndexOutOfBoundsException size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 1078
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1077
    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1090
    .end local v0    # "anr":Ljava/lang/String;
    .end local v1    # "aas":Ljava/lang/String;
    .end local v2    # "anrAas":I
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist updatePhoneAdnRecordWithEmailByIndex(II[B)V
    .locals 7
    .param p1, "emailIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "emailRecData"    # [B

    .line 3891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithEmailByIndex emailIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adnIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3894
    if-nez p3, :cond_0

    .line 3895
    return-void

    .line 3898
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 3902
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 3903
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    const/16 v2, 0xca

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v2, 0xa9

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3904
    .local v0, "emailType2":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneAdnRecordWithEmailByIndex: Type2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " emailData: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3905
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3904
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3906
    array-length v2, p3

    .line 3908
    .local v2, "length":I
    if-eqz v0, :cond_3

    array-length v4, p3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 3909
    array-length v4, p3

    add-int/lit8 v2, v4, -0x2

    .line 3912
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhoneAdnRecordWithEmailByIndex length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3914
    new-array v4, v2, [B

    .line 3916
    .local v4, "validEMailData":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 3917
    const/4 v6, -0x1

    aput-byte v6, v4, v5

    .line 3916
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3920
    .end local v5    # "i":I
    :cond_4
    invoke-static {p3, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3923
    :try_start_0
    invoke-static {v4, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 3924
    .local v5, "email":Ljava/lang/String;
    if-eqz v5, :cond_5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3925
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3926
    .local v6, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-virtual {v6, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 3930
    .end local v6    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v6, p2, 0x1

    aput v6, v1, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3933
    .end local v5    # "email":Ljava/lang/String;
    goto :goto_2

    .line 3931
    :catch_0
    move-exception v1

    .line 3932
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[JE]updatePhoneAdnRecordWithEmailByIndex "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    return-void

    .line 3899
    .end local v0    # "emailType2":Z
    .end local v2    # "length":I
    .end local v4    # "validEMailData":[B
    :cond_6
    :goto_3
    return-void
.end method

.method private blacklist updatePhoneAdnRecordWithEmailByIndexOptmz(IILjava/lang/String;)V
    .locals 3
    .param p1, "emailIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "email"    # Ljava/lang/String;

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithEmailByIndex emailIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adnIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1023
    if-nez p3, :cond_0

    .line 1024
    return-void

    .line 1028
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 1030
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1034
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JE]updatePhoneAdnRecordWithEmailByIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUsimPhoneBookManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1036
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :goto_0
    nop

    .line 1037
    :goto_1
    return-void
.end method

.method private blacklist updatePhoneAdnRecordWithGrpByIndex(II[I)V
    .locals 5
    .param p1, "recIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIds"    # [I

    .line 3538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithGrpByIndex the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th grp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3540
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 3541
    return-void

    .line 3544
    :cond_0
    array-length v0, p3

    .line 3546
    .local v0, "grpSize":I
    if-lez v0, :cond_2

    .line 3550
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3556
    .local v1, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 3558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAdnRecordWithGrpByIndex the adnIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; the original index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3559
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3558
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3562
    .local v2, "grpIdsSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    .line 3563
    aget v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3564
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3562
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3567
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v0, -0x1

    aget v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 3569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneAdnRecordWithGrpByIndex grpIds is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3570
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneAdnRecordWithGrpByIndex the rec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3551
    .end local v1    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v2    # "grpIdsSb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 3552
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAdnRecordWithGrpByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 3554
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3552
    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    return-void

    .line 3573
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist updatePhoneAdnRecordWithSneByIndex(II[B)V
    .locals 4
    .param p1, "recNum"    # I
    .param p2, "adnIndex"    # I
    .param p3, "recData"    # [B

    .line 4642
    if-nez p3, :cond_0

    .line 4643
    return-void

    .line 4646
    :cond_0
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 4647
    .local v0, "sne":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneAdnRecordWithSneByIndex index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " recData file is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4649
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4653
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4659
    .local v1, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 4660
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    goto :goto_0

    .line 4654
    .end local v1    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_0
    move-exception v1

    .line 4655
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAdnRecordWithSneByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4657
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4655
    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    return-void

    .line 4662
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updatePhoneAdnRecordWithSneByIndexOptmz(ILjava/lang/String;)V
    .locals 3
    .param p1, "adnIndex"    # I
    .param p2, "sne"    # Ljava/lang/String;

    .line 1126
    if-nez p2, :cond_0

    .line 1127
    return-void

    .line 1130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithSneByIndex index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " recData file is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1132
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1136
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 1144
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneAdnRecordWithSneByIndex: mPhoneBookRecords IndexOutOfBoundsException size() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 1139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1138
    const-string v2, "MtkUsimPhoneBookManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void

    .line 1146
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateType2Anr(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V
    .locals 32
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "file"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3937
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "Index out of bounds."

    const-string v6, "MtkUsimPhoneBookManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateType2Ef anr:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",adnIndex:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",file:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3939
    add-int/lit8 v0, v3, -0x1

    iget v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v8, v0, v7

    .line 3940
    .local v8, "pbrRecNum":I
    add-int/lit8 v0, v3, -0x1

    rem-int v7, v0, v7

    .line 3942
    .local v7, "iapRecNum":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateType2Ef pbrRecNum:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",iapRecNum:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3944
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3945
    return-void

    .line 3947
    :cond_0
    if-nez v4, :cond_1

    .line 3948
    return-void

    .line 3951
    :cond_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move/from16 v24, v8

    goto/16 :goto_10

    .line 3954
    :cond_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    iget v9, v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v9

    .line 3955
    .local v9, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v9, :cond_3

    .line 3956
    return-void

    .line 3962
    :cond_3
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget v10, v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v0

    .line 3966
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    nop

    .line 3968
    if-nez v10, :cond_4

    .line 3969
    return-void

    .line 3971
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 3972
    const-string v0, "Warning: IAP size is 0"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    return-void

    .line 3976
    :cond_5
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [B

    .line 3978
    .local v17, "iap":[B
    if-nez v17, :cond_6

    .line 3979
    return-void

    .line 3982
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v0

    aget-byte v0, v17, v0

    const/16 v11, 0xff

    and-int/lit16 v15, v0, 0xff

    .line 3983
    .local v15, "index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateType2Ef orignal index :"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3985
    const-string v13, "updateType2Anr Error: No IAP file!"

    if-eqz v2, :cond_1d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    move/from16 v24, v8

    move-object/from16 v23, v10

    move/from16 v22, v15

    goto/16 :goto_e

    .line 4001
    :cond_7
    const/16 v16, 0x0

    .line 4002
    .local v16, "recNum":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, [I

    .line 4003
    .local v19, "tmpSize":[I
    const/4 v0, 0x2

    aget v12, v19, v0

    .line 4005
    .local v12, "size":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateType2Anr size :"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4006
    if-lez v15, :cond_8

    if-gt v15, v12, :cond_8

    .line 4007
    move/from16 v16, v15

    move/from16 v24, v8

    move-object/from16 v23, v10

    move/from16 v4, v16

    goto/16 :goto_b

    .line 4010
    :cond_8
    add-int/lit8 v0, v12, 0x1

    new-array v14, v0, [I

    .line 4012
    .local v14, "indexArray":[I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v12, :cond_9

    .line 4013
    const/16 v21, 0x0

    aput v21, v14, v0

    .line 4012
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4016
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v22, 0x1

    if-ge v0, v11, :cond_c

    .line 4017
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 4018
    .local v11, "value":[B
    if-eqz v11, :cond_a

    .line 4019
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v23

    move/from16 v24, v8

    .end local v8    # "pbrRecNum":I
    .local v24, "pbrRecNum":I
    aget-byte v8, v11, v23

    move-object/from16 v23, v10

    const/16 v10, 0xff

    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    and-int/2addr v8, v10

    .line 4020
    .local v8, "tem":I
    if-lez v8, :cond_b

    if-ge v8, v10, :cond_b

    if-gt v8, v12, :cond_b

    .line 4021
    aput v22, v14, v8

    goto :goto_2

    .line 4018
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "pbrRecNum":I
    .local v8, "pbrRecNum":I
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_a
    move/from16 v24, v8

    move-object/from16 v23, v10

    .line 4016
    .end local v8    # "pbrRecNum":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "value":[B
    .restart local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v24    # "pbrRecNum":I
    :cond_b
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v23

    move/from16 v8, v24

    const/16 v11, 0xff

    goto :goto_1

    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "pbrRecNum":I
    .restart local v8    # "pbrRecNum":I
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_c
    move/from16 v24, v8

    move-object/from16 v23, v10

    .line 4026
    .end local v0    # "i":I
    .end local v8    # "pbrRecNum":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v24    # "pbrRecNum":I
    const/4 v0, 0x0

    .line 4027
    .local v0, "sharedAnr":Z
    const/4 v8, 0x0

    .line 4029
    .local v8, "file2":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_f

    .line 4030
    iget v11, v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    if-eq v10, v11, :cond_e

    .line 4031
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v11}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v11

    move/from16 v25, v0

    .end local v0    # "sharedAnr":Z
    .local v25, "sharedAnr":Z
    mul-int/lit16 v0, v3, 0x100

    add-int/lit16 v0, v0, 0xc4

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4032
    if-nez v8, :cond_d

    goto :goto_4

    .line 4033
    :cond_d
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v11

    if-ne v0, v11, :cond_10

    .line 4034
    const/4 v0, 0x1

    move/from16 v25, v0

    .end local v25    # "sharedAnr":Z
    .restart local v0    # "sharedAnr":Z
    goto :goto_5

    .line 4030
    :cond_e
    move/from16 v25, v0

    .line 4029
    .end local v0    # "sharedAnr":Z
    .restart local v25    # "sharedAnr":Z
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v25

    goto :goto_3

    .end local v25    # "sharedAnr":Z
    .restart local v0    # "sharedAnr":Z
    :cond_f
    move/from16 v25, v0

    .line 4040
    .end local v0    # "sharedAnr":Z
    .end local v10    # "i":I
    .restart local v25    # "sharedAnr":Z
    :cond_10
    :goto_5
    if-eqz v25, :cond_15

    .line 4044
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget v10, v8, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4046
    .local v0, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_14

    .line 4047
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_13

    .line 4048
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 4049
    .restart local v11    # "value":[B
    if-eqz v11, :cond_11

    .line 4050
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v26

    move-object/from16 v27, v0

    .end local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v27, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    aget-byte v0, v11, v26

    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 4051
    .local v0, "tem":I
    if-lez v0, :cond_12

    if-ge v0, v4, :cond_12

    if-gt v0, v12, :cond_12

    .line 4052
    aput v22, v14, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 4049
    .end local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v0, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_11
    move-object/from16 v27, v0

    const/16 v4, 0xff

    .line 4047
    .end local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "value":[B
    .restart local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_12
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p3

    move-object/from16 v0, v27

    goto :goto_6

    .end local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_13
    move-object/from16 v27, v0

    .end local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_8

    .line 4046
    .end local v10    # "i":I
    .end local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_14
    move-object/from16 v27, v0

    .line 4060
    .end local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_8
    goto :goto_9

    .line 4057
    .end local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v0

    .line 4058
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    return-void

    .line 4063
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_15
    :goto_9
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    if-gt v0, v12, :cond_17

    .line 4064
    aget v4, v14, v0

    if-nez v4, :cond_16

    .line 4065
    move/from16 v16, v0

    .line 4066
    move/from16 v4, v16

    goto :goto_b

    .line 4063
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    move/from16 v4, v16

    .line 4071
    .end local v0    # "i":I
    .end local v8    # "file2":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v14    # "indexArray":[I
    .end local v16    # "recNum":I
    .end local v25    # "sharedAnr":Z
    .local v4, "recNum":I
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateType2Anr final index :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4073
    if-nez v4, :cond_18

    .line 4074
    return-void

    .line 4077
    :cond_18
    const/4 v5, 0x0

    .line 4078
    .local v5, "data":[B
    const/4 v8, 0x0

    .line 4079
    .local v8, "what":I
    const/4 v10, 0x0

    .line 4080
    .local v10, "fileId":I
    const/4 v11, 0x0

    .line 4083
    .local v11, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v14, v3, -0x1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v11, v0

    .line 4088
    goto :goto_c

    .line 4084
    :catch_1
    move-exception v0

    .line 4085
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v16, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "updateType2Anr: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4087
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "index is "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4085
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 4090
    .end local v11    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v16    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_c
    if-nez v0, :cond_19

    .line 4091
    return-void

    .line 4094
    :cond_19
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v14

    .line 4095
    .local v14, "aas":I
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    invoke-direct {v1, v2, v11, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v5

    .line 4096
    const/16 v8, 0x9

    .line 4097
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v10

    .line 4099
    if-eqz v5, :cond_1c

    .line 4100
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v30, 0x0

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    move-object/from16 v26, v11

    move/from16 v27, v10

    move/from16 v28, v4

    move-object/from16 v29, v5

    invoke-virtual/range {v26 .. v31}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 4101
    if-eq v4, v15, :cond_1b

    .line 4102
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v11

    move-object/from16 v21, v0

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v21, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    int-to-byte v0, v4

    aput-byte v0, v17, v11

    .line 4103
    const/16 v11, 0xc1

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 4104
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v6

    add-int/lit8 v13, v7, 0x1

    const/16 v16, 0x0

    .line 4105
    const/4 v11, 0x7

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 4104
    move-object v11, v0

    move/from16 v20, v12

    .end local v12    # "size":I
    .local v20, "size":I
    move v12, v6

    move v0, v14

    .end local v14    # "aas":I
    .local v0, "aas":I
    move-object/from16 v14, v17

    move/from16 v22, v15

    .end local v15    # "index":I
    .local v22, "index":I
    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_d

    .line 4109
    .end local v0    # "aas":I
    .end local v20    # "size":I
    .end local v22    # "index":I
    .restart local v12    # "size":I
    .restart local v14    # "aas":I
    .restart local v15    # "index":I
    :cond_1a
    invoke-static {v6, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    return-void

    .line 4101
    .end local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_1b
    move-object/from16 v21, v0

    move/from16 v20, v12

    move v0, v14

    move/from16 v22, v15

    .end local v12    # "size":I
    .end local v14    # "aas":I
    .end local v15    # "index":I
    .local v0, "aas":I
    .restart local v20    # "size":I
    .restart local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "index":I
    goto :goto_d

    .line 4099
    .end local v20    # "size":I
    .end local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v22    # "index":I
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v12    # "size":I
    .restart local v14    # "aas":I
    .restart local v15    # "index":I
    :cond_1c
    move-object/from16 v21, v0

    move/from16 v20, v12

    move v0, v14

    move/from16 v22, v15

    .line 4114
    .end local v12    # "size":I
    .end local v14    # "aas":I
    .end local v15    # "index":I
    .local v0, "aas":I
    .restart local v20    # "size":I
    .restart local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "index":I
    :goto_d
    return-void

    .line 3985
    .end local v0    # "aas":I
    .end local v4    # "recNum":I
    .end local v5    # "data":[B
    .end local v19    # "tmpSize":[I
    .end local v20    # "size":I
    .end local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v22    # "index":I
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "pbrRecNum":I
    .local v8, "pbrRecNum":I
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v15    # "index":I
    :cond_1d
    move/from16 v24, v8

    move-object/from16 v23, v10

    move/from16 v22, v15

    .line 3986
    .end local v8    # "pbrRecNum":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "index":I
    .restart local v22    # "index":I
    .restart local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v24    # "pbrRecNum":I
    :goto_e
    if-lez v22, :cond_1f

    .line 3987
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v0

    const/4 v4, -0x1

    aput-byte v4, v17, v0

    .line 3988
    const/16 v4, 0xc1

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 3989
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v12

    add-int/lit8 v13, v7, 0x1

    const/4 v15, 0x0

    .line 3990
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 3989
    move-object/from16 v14, v17

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_f

    .line 3994
    :cond_1e
    invoke-static {v6, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    return-void

    .line 3998
    :cond_1f
    :goto_f
    return-void

    .line 3963
    .end local v17    # "iap":[B
    .end local v22    # "index":I
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "pbrRecNum":I
    .restart local v8    # "pbrRecNum":I
    :catch_2
    move-exception v0

    move/from16 v24, v8

    .line 3964
    .end local v8    # "pbrRecNum":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "pbrRecNum":I
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    return-void

    .line 3951
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v24    # "pbrRecNum":I
    .restart local v8    # "pbrRecNum":I
    :cond_20
    move/from16 v24, v8

    .line 3952
    .end local v8    # "pbrRecNum":I
    .restart local v24    # "pbrRecNum":I
    :goto_10
    return-void
.end method

.method private blacklist updateType2Email([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)I
    .locals 23
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "emailFile"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3368
    move-object/from16 v7, p0

    move/from16 v8, p2

    const-string v9, "MtkUsimPhoneBookManager"

    add-int/lit8 v0, v8, -0x1

    iget v1, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v10, v0, v1

    .line 3369
    .local v10, "pbrRecNum":I
    add-int/lit8 v0, v8, -0x1

    rem-int v11, v0, v1

    .line 3370
    .local v11, "adnRecNum":I
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v12

    .line 3371
    .local v12, "emailType2Index":I
    const/4 v13, -0x1

    .line 3372
    .local v13, "efid":I
    const/4 v14, -0x1

    .line 3373
    .local v14, "recNum":I
    const/4 v1, 0x0

    .line 3376
    .local v1, "iapRec":[B
    const/16 v15, -0x32

    :try_start_0
    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3378
    .local v0, "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 3379
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v2

    .line 3387
    .end local v0    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "iapRec":[B
    .local v22, "iapRec":[B
    nop

    .line 3389
    add-int/lit8 v4, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v10

    move-object/from16 v5, v22

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getEmailRecNum([Ljava/lang/String;II[BI)I

    move-result v1

    .line 3391
    .end local v14    # "recNum":I
    .local v1, "recNum":I
    const/4 v0, -0x2

    if-ne v0, v1, :cond_0

    .line 3392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateType2Email: Email recNum is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3393
    const/16 v0, -0x1e

    return v0

    .line 3396
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateType2Email: found Email recNum is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3398
    int-to-byte v0, v1

    aput-byte v0, v22, v12

    .line 3399
    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    .line 3401
    .local v2, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v0, 0xc1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3402
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    .line 3409
    .end local v13    # "efid":I
    .local v3, "efid":I
    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v18, v11, 0x1

    const/16 v20, 0x0

    const/4 v4, 0x7

    .line 3410
    invoke-virtual {v7, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 3409
    move-object/from16 v16, v0

    move/from16 v17, v3

    move-object/from16 v19, v22

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3412
    const/16 v0, 0xff

    const/4 v4, 0x0

    if-eq v1, v0, :cond_3

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 3413
    const/4 v5, 0x0

    .line 3415
    .local v5, "eMailAd":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 3417
    :try_start_1
    aget-object v0, p1, v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    .line 3421
    goto :goto_0

    .line 3418
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 3419
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "Error: updateType2Email no email address, continuing"

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    iget v0, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v0, :cond_1

    .line 3424
    return v15

    .line 3427
    :cond_1
    const/4 v6, 0x1

    invoke-direct {v7, v5, v8, v0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;IIZ)[B

    move-result-object v0

    .line 3429
    .local v0, "eMailRecData":[B
    if-nez v0, :cond_2

    .line 3430
    const/16 v4, -0x28

    return v4

    .line 3434
    :cond_2
    const/16 v6, 0xca

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    .line 3435
    iget-object v6, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v20, 0x0

    const/16 v9, 0x8

    .line 3436
    invoke-virtual {v7, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 3435
    move-object/from16 v16, v6

    move/from16 v17, v3

    move/from16 v18, v1

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3439
    .end local v0    # "eMailRecData":[B
    .end local v5    # "eMailAd":Ljava/lang/String;
    :cond_3
    return v4

    .line 3405
    .end local v3    # "efid":I
    .restart local v13    # "efid":I
    :cond_4
    const-string v0, "updateType2Email Error: No IAP file!"

    invoke-static {v9, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    return v15

    .line 3381
    .end local v2    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v22    # "iapRec":[B
    .local v0, "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v1, "iapRec":[B
    .restart local v14    # "recNum":I
    :cond_5
    :try_start_2
    const-string v2, "Warning: IAP size is 0"

    invoke-static {v9, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3382
    return v15

    .line 3384
    .end local v0    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_1
    move-exception v0

    .line 3385
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "Index out of bounds."

    invoke-static {v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    return v15
.end method


# virtual methods
.method public blacklist addContactToGroup(II)Z
    .locals 17
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 2249
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    .line 2251
    .local v4, "ret":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addContactToGroup begin adnIndex is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to grp "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2253
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    if-lez v2, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v2, v0, :cond_0

    move/from16 v16, v4

    goto/16 :goto_9

    .line 2258
    :cond_0
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2262
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 2268
    .local v7, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2270
    if-eqz v7, :cond_8

    .line 2271
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " addContactToGroup the adn index is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " old grpList is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2271
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 2274
    .local v8, "grpList":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2275
    .local v9, "bExist":Z
    const/4 v0, -0x1

    .line 2278
    .local v0, "nOrder":I
    iget-object v10, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    .line 2279
    .local v10, "grpCount":I
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v12, v12, v11

    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v14, 0x5

    aget v13, v13, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v12, v13, :cond_1

    :try_start_2
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v11, v11, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v11, v12, v11

    .line 2280
    .local v11, "grpMaxCount":I
    :goto_0
    new-array v12, v10, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2282
    .local v12, "grpIdArray":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_2

    .line 2283
    :try_start_4
    aput v5, v12, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2282
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2286
    .end local v13    # "i":I
    :cond_2
    if-eqz v8, :cond_7

    .line 2287
    :try_start_5
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v5

    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2288
    .local v5, "grpIds":[Ljava/lang/String;
    const/4 v13, 0x0

    move v14, v13

    move v13, v0

    .end local v0    # "nOrder":I
    .local v13, "nOrder":I
    .local v14, "i":I
    :goto_2
    if-ge v14, v11, :cond_6

    .line 2294
    :try_start_6
    aget-object v0, v5, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v12, v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2300
    move/from16 v16, v4

    goto :goto_3

    .line 2298
    :catch_0
    move-exception v0

    .line 2299
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v15, "MtkUsimPhoneBookManager"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v16, v4

    .end local v4    # "ret":Z
    .local v16, "ret":Z
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    aget v0, v12, v14

    if-ne v3, v0, :cond_3

    .line 2303
    const/4 v0, 0x1

    .line 2304
    .end local v9    # "bExist":Z
    .local v0, "bExist":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " addContactToGroup the adn is already in the group. i is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2305
    move v9, v0

    goto :goto_4

    .line 2308
    .end local v0    # "bExist":Z
    .restart local v9    # "bExist":Z
    :cond_3
    if-gez v13, :cond_5

    aget v0, v12, v14

    if-eqz v0, :cond_4

    aget v0, v12, v14

    const/16 v4, 0xff

    if-ne v0, v4, :cond_5

    .line 2309
    :cond_4
    move v0, v14

    .line 2310
    .end local v13    # "nOrder":I
    .local v0, "nOrder":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " addContactToGroup found an unsed position in the group list. i is "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v13, v0

    .line 2288
    .end local v0    # "nOrder":I
    .restart local v13    # "nOrder":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v16

    goto :goto_2

    .end local v16    # "ret":Z
    .restart local v4    # "ret":Z
    :cond_6
    move/from16 v16, v4

    .line 2314
    .end local v4    # "ret":Z
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v14    # "i":I
    .restart local v16    # "ret":Z
    :goto_4
    goto :goto_5

    .line 2315
    .end local v13    # "nOrder":I
    .end local v16    # "ret":Z
    .restart local v0    # "nOrder":I
    .restart local v4    # "ret":Z
    :cond_7
    move/from16 v16, v4

    .end local v4    # "ret":Z
    .restart local v16    # "ret":Z
    const/4 v13, 0x0

    .line 2318
    .end local v0    # "nOrder":I
    .restart local v13    # "nOrder":I
    :goto_5
    if-nez v9, :cond_9

    if-ltz v13, :cond_9

    .line 2319
    aput v3, v12, v13

    .line 2320
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0xc

    .line 2321
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2320
    invoke-virtual {v0, v2, v12, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2324
    :try_start_9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2327
    goto :goto_6

    .line 2325
    :catch_1
    move-exception v0

    .line 2326
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in addContactToGroup"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_6
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v0, :cond_9

    .line 2330
    const/4 v4, 0x1

    .line 2331
    .end local v16    # "ret":Z
    .restart local v4    # "ret":Z
    add-int/lit8 v0, v2, -0x1

    :try_start_b
    invoke-direct {v1, v0, v2, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " addContactToGroup the adn index is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2333
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2332
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2334
    const/4 v0, -0x1

    iput v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_7

    .line 2270
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "bExist":Z
    .end local v10    # "grpCount":I
    .end local v11    # "grpMaxCount":I
    .end local v12    # "grpIdArray":[I
    .end local v13    # "nOrder":I
    :cond_8
    move/from16 v16, v4

    .line 2338
    .end local v4    # "ret":Z
    .end local v7    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v16    # "ret":Z
    :cond_9
    move/from16 v4, v16

    .end local v16    # "ret":Z
    .restart local v4    # "ret":Z
    :goto_7
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addContactToGroup end adnIndex is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to grp "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2341
    return v4

    .line 2338
    :catchall_0
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "ret":Z
    .restart local v16    # "ret":Z
    goto :goto_8

    .line 2263
    .end local v16    # "ret":Z
    .restart local v4    # "ret":Z
    :catch_2
    move-exception v0

    move/from16 v16, v4

    .line 2264
    .end local v4    # "ret":Z
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "ret":Z
    :try_start_c
    const-string v4, "MtkUsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addContactToGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2266
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "index is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2264
    invoke-static {v4, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    return v5

    .line 2338
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1
    move-exception v0

    move/from16 v4, v16

    .end local v16    # "ret":Z
    .restart local v4    # "ret":Z
    :goto_8
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 2253
    :cond_a
    move/from16 v16, v4

    .line 2254
    .end local v4    # "ret":Z
    .restart local v16    # "ret":Z
    :goto_9
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v4, "addContactToGroup no records or invalid index."

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    return v5
.end method

.method public blacklist checkEmailCapacityFree(I[Ljava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z
    .locals 7
    .param p1, "adnIndex"    # I
    .param p2, "emails"    # [Ljava/lang/String;
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3029
    const/4 v0, 0x0

    .line 3031
    .local v0, "hasEmail":Z
    const/4 v1, 0x1

    if-eqz p2, :cond_b

    const/16 v2, 0xca

    .line 3032
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimEfType(I)I

    move-result v2

    const/16 v3, 0xa8

    if-eq v2, v3, :cond_b

    if-eqz p3, :cond_0

    .line 3033
    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 3041
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 3042
    aget-object v3, p2, v2

    if-eqz v3, :cond_1

    aget-object v3, p2, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3043
    const/4 v0, 0x1

    .line 3044
    move v2, v0

    goto :goto_1

    .line 3041
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 3048
    .end local v0    # "hasEmail":Z
    .local v2, "hasEmail":Z
    :goto_1
    if-nez v2, :cond_3

    .line 3049
    return v1

    .line 3052
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 3053
    add-int/lit8 v0, p1, -0x1

    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v0, v4

    .line 3054
    .local v0, "pbrRecNum":I
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v4, v0

    .line 3056
    .local v4, "nOffset":I
    move v5, v4

    .local v5, "i":I
    :goto_2
    iget v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_5

    .line 3057
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v5

    if-nez v6, :cond_4

    .line 3058
    return v1

    .line 3056
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3061
    .end local v5    # "i":I
    :cond_5
    return v3

    .line 3063
    .end local v0    # "pbrRecNum":I
    .end local v4    # "nOffset":I
    :cond_6
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3064
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    array-length v0, v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_9

    .line 3065
    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v5, 0x19

    .line 3066
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3065
    invoke-virtual {v0, v1, v1, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3069
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3072
    goto :goto_3

    .line 3070
    :catch_0
    move-exception v0

    .line 3071
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in CheckEmailCapacityFree"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_8

    .line 3075
    monitor-exit v4

    return v1

    .line 3077
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->countEmailFileSize()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    .line 3079
    :cond_9
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3080
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->countEmailCapacity(I)I

    move-result v0

    .line 3081
    .local v0, "used":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckEmailCapacityFree: mEmailFileSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " used: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " adnIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3084
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    if-ge v0, v4, :cond_a

    .line 3085
    return v1

    .line 3087
    :cond_a
    return v3

    .line 3079
    .end local v0    # "used":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 3038
    .end local v2    # "hasEmail":Z
    .local v0, "hasEmail":Z
    :cond_b
    :goto_4
    return v1
.end method

.method public blacklist checkEmailLength([Ljava/lang/String;)Z
    .locals 10
    .param p1, "emails"    # [Ljava/lang/String;

    .line 3232
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_6

    .line 3234
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 3238
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    .line 3239
    .local v2, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v2, :cond_1

    .line 3240
    return v0

    .line 3243
    :cond_1
    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3244
    .local v3, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v3, :cond_2

    .line 3245
    return v0

    .line 3248
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    move v4, v1

    .line 3249
    .local v4, "emailType2":Z
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    if-eqz v4, :cond_4

    .line 3250
    add-int/lit8 v5, v5, -0x2

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 3251
    .local v5, "maxDataLength":I
    :goto_1
    aget-object v7, p1, v1

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v7

    .line 3253
    .local v7, "eMailData":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkEmailLength eMailData.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", maxDataLength="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3256
    if-eq v5, v6, :cond_6

    array-length v6, v7

    if-le v6, v5, :cond_6

    .line 3257
    return v1

    .line 3235
    .end local v2    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "emailType2":Z
    .end local v5    # "maxDataLength":I
    .end local v7    # "eMailData":[B
    :cond_5
    :goto_2
    return v0

    .line 3260
    :cond_6
    return v0
.end method

.method public blacklist checkSneCapacityFree(ILjava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z
    .locals 6
    .param p1, "adnIndex"    # I
    .param p2, "sne"    # Ljava/lang/String;
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3163
    const/4 v0, 0x0

    .line 3165
    .local v0, "oldSne":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 3166
    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getSne()Ljava/lang/String;

    move-result-object v0

    .line 3169
    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_5

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0xc3

    .line 3170
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimEfType(I)I

    move-result v2

    const/16 v3, 0xa8

    if-eq v2, v3, :cond_5

    if-eqz v0, :cond_1

    .line 3171
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 3179
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3181
    return v1

    .line 3183
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3184
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    if-nez v3, :cond_3

    .line 3185
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x2

    const/16 v5, 0x1b

    .line 3186
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3185
    invoke-virtual {v3, v4, v1, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3188
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3191
    goto :goto_0

    .line 3189
    :catch_0
    move-exception v3

    .line 3190
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in checkSneCapacityFree"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3195
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    if-eqz v2, :cond_4

    aget v2, v2, v1

    if-lez v2, :cond_4

    .line 3196
    return v1

    .line 3198
    :cond_4
    const/4 v1, 0x0

    return v1

    .line 3193
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 3176
    :cond_5
    :goto_1
    return v1
.end method

.method public blacklist getAdnRecordsCapacity()[I
    .locals 11

    .line 4745
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 4748
    .local v0, "capacity":[I
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v2, :cond_1

    .line 4750
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getAdnStorageInfo()[I

    .line 4751
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 4754
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    array-length v5, v1

    if-eq v5, v2, :cond_2

    goto/16 :goto_6

    .line 4757
    :cond_2
    const/4 v5, 0x1

    aget v6, v1, v5

    aput v6, v0, v3

    .line 4758
    aget v1, v1, v3

    aput v1, v0, v5

    .line 4762
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    const/4 v6, 0x3

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    if-eqz v1, :cond_3

    array-length v1, v1

    if-eq v1, v6, :cond_4

    .line 4763
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v7, 0x19

    .line 4764
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4763
    invoke-virtual {v1, v5, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V

    .line 4765
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4767
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4770
    goto :goto_0

    .line 4771
    :catchall_0
    move-exception v2

    goto/16 :goto_5

    .line 4768
    :catch_0
    move-exception v7

    .line 4769
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in getAdnRecordsCapacity"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4772
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    .line 4775
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    if-eqz v1, :cond_a

    array-length v7, v1

    if-eq v7, v6, :cond_5

    goto/16 :goto_4

    .line 4778
    :cond_5
    aget v7, v1, v3

    const/4 v8, 0x2

    aput v7, v0, v8

    .line 4779
    aget v7, v1, v3

    aget v1, v1, v5

    sub-int/2addr v7, v1

    aput v7, v0, v6

    .line 4783
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    .line 4784
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v1, v1

    if-eq v1, v6, :cond_7

    .line 4785
    :cond_6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v7, 0x1a

    .line 4786
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4785
    invoke-virtual {v1, v3, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V

    .line 4787
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4789
    :try_start_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4792
    goto :goto_1

    .line 4793
    :catchall_1
    move-exception v2

    goto/16 :goto_3

    .line 4790
    :catch_1
    move-exception v7

    .line 4791
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v9, "MtkUsimPhoneBookManager"

    const-string v10, "Interrupted Exception in getAdnRecordsCapacity"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4793
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4794
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 4797
    :cond_7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v1, v1

    if-eq v1, v6, :cond_8

    goto :goto_2

    .line 4800
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v3

    aput v1, v0, v2

    .line 4801
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v5

    sub-int/2addr v1, v4

    const/4 v4, 0x5

    aput v1, v0, v4

    .line 4804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdnRecordsCapacity: max adn="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", used adn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max email="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", used email="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max anr="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", used anr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4809
    return-object v0

    .line 4798
    :cond_9
    :goto_2
    return-object v4

    .line 4793
    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 4776
    :cond_a
    :goto_4
    return-object v4

    .line 4771
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 4755
    :cond_b
    :goto_6
    return-object v4
.end method

.method public blacklist getAnrCount()I
    .locals 5

    .line 4527
    const-string v0, "getAnrCount begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4529
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4530
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4531
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4533
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4536
    goto :goto_0

    .line 4534
    :catch_0
    move-exception v1

    .line 4535
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in getAnrCount"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4540
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    if-gtz v0, :cond_1

    .line 4541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnrCount end mAnrRecordSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4542
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    return v0

    .line 4544
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnrCount done: N_ANR is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4547
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 4538
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getEmailCount()I
    .locals 5

    .line 4551
    const-string v0, "getEmailCount begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4553
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4554
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4555
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4558
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4561
    goto :goto_0

    .line 4559
    :catch_0
    move-exception v1

    .line 4560
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in getEmailCount"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4565
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v0, :cond_1

    .line 4566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmailCount end mEmailRecordSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4567
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    return v0

    .line 4570
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmailCount done: N_EMAIL is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4572
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 4563
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .locals 23

    .line 4835
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    move v2, v0

    .line 4837
    .local v2, "is3G":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhonebookMemStorageExt isUsim "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4839
    if-nez v2, :cond_1

    .line 4840
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v0

    return-object v0

    .line 4843
    :cond_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 4844
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadPBRFiles()V

    .line 4847
    :cond_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move/from16 v18, v2

    goto/16 :goto_18

    .line 4851
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhonebookMemStorageExt slice "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4852
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    .line 4854
    .local v5, "response":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 4855
    new-instance v6, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;-><init>()V

    aput-object v6, v5, v0

    .line 4854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4858
    .end local v0    # "i":I
    :cond_5
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4859
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "mPhoneBookRecords has not been loaded."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4860
    return-object v5

    .line 4863
    :cond_6
    const/4 v0, 0x0

    .line 4864
    .local v0, "size":[I
    const/4 v6, 0x0

    .line 4865
    .local v6, "used":I
    const/4 v7, 0x0

    .line 4867
    .local v7, "currentTotal":I
    const/4 v8, 0x0

    .local v8, "pbrIndex":I
    :goto_2
    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_28

    .line 4868
    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v9

    .line 4869
    .local v9, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    iget-object v10, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4870
    .local v10, "numAdnRecs":I
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    mul-int v12, v8, v11

    .line 4871
    .local v12, "nOffset":I
    add-int/2addr v11, v12

    .line 4872
    .local v11, "nMax":I
    if-ge v10, v11, :cond_7

    move v13, v10

    goto :goto_3

    :cond_7
    move v13, v11

    :goto_3
    move v11, v13

    .line 4875
    const/16 v13, 0xc0

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4877
    .local v13, "adnFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const/4 v14, 0x2

    if-eqz v13, :cond_e

    .line 4878
    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v15

    .line 4879
    .end local v0    # "size":[I
    .local v15, "size":[I
    if-eqz v15, :cond_9

    .line 4880
    aget-object v0, v5, v8

    aget v3, v15, v4

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnLength(I)V

    .line 4881
    if-lez v7, :cond_8

    .line 4882
    aget-object v0, v5, v8

    aget v3, v15, v14

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnTotal(I)V

    goto :goto_4

    .line 4884
    :cond_8
    aget-object v0, v5, v8

    aget v3, v15, v14

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4888
    :cond_9
    :goto_4
    aget-object v0, v5, v8

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnType(I)V

    .line 4889
    aget-object v0, v5, v8

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4891
    const/4 v0, 0x0

    .line 4893
    .end local v6    # "used":I
    .local v0, "used":I
    const/4 v3, 0x0

    .line 4895
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move v6, v12

    move v14, v0

    .end local v0    # "used":I
    .local v6, "j":I
    .local v14, "used":I
    :goto_5
    if-ge v6, v11, :cond_d

    .line 4897
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 4902
    goto :goto_6

    .line 4898
    :catch_0
    move-exception v0

    .line 4899
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v18, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4901
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "index is "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4899
    const-string v4, "MtkUsimPhoneBookManager"

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    if-eqz v3, :cond_c

    .line 4904
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 4905
    :cond_a
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 4906
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4907
    add-int/lit8 v14, v14, 0x1

    .line 4908
    const/4 v0, 0x0

    move-object v3, v0

    .line 4895
    :cond_c
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto :goto_5

    .line 4911
    .end local v6    # "j":I
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adn used "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4912
    aget-object v0, v5, v8

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnUsed(I)V

    move v6, v14

    move-object v0, v15

    .line 4916
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v14    # "used":I
    .end local v15    # "size":[I
    .local v0, "size":[I
    .local v6, "used":I
    :cond_e
    const/16 v3, 0xc4

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4918
    .local v3, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v3, :cond_13

    .line 4919
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v4

    .line 4920
    .end local v0    # "size":[I
    .local v4, "size":[I
    if-eqz v4, :cond_f

    .line 4921
    aget-object v0, v5, v8

    const/4 v14, 0x0

    aget v15, v4, v14

    invoke-virtual {v0, v15}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAnrLength(I)V

    .line 4922
    aget-object v0, v5, v8

    const/4 v14, 0x2

    aget v15, v4, v14

    invoke-virtual {v0, v15}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAnrTotal(I)V

    .line 4924
    :cond_f
    aget-object v0, v5, v8

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAnrType(I)V

    .line 4925
    const/4 v0, 0x0

    .line 4927
    .end local v6    # "used":I
    .local v0, "used":I
    const/4 v6, 0x0

    .line 4928
    .local v6, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/4 v14, 0x0

    .line 4930
    .local v14, "anrStr":Ljava/lang/String;
    move v15, v12

    move/from16 v18, v2

    move v2, v15

    move-object v15, v14

    move-object v14, v6

    move v6, v0

    .end local v0    # "used":I
    .local v2, "i":I
    .local v6, "used":I
    .local v14, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v15, "anrStr":Ljava/lang/String;
    .local v18, "is3G":Z
    :goto_7
    if-ge v2, v11, :cond_12

    .line 4932
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4937
    .end local v14    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move-object v14, v0

    move-object/from16 v20, v3

    goto :goto_8

    .line 4933
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v14    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_1
    move-exception v0

    .line 4934
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v19, v0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v19, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v20, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const-string v3, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4936
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "index is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4934
    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_8
    if-nez v14, :cond_10

    .line 4940
    const-string v0, "null anr rec "

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4941
    goto :goto_9

    .line 4944
    :cond_10
    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v0

    .line 4946
    .end local v15    # "anrStr":Ljava/lang/String;
    .local v0, "anrStr":Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 4947
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "anrStr: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4948
    add-int/lit8 v6, v6, 0x1

    move-object v15, v0

    goto :goto_9

    .line 4930
    :cond_11
    move-object v15, v0

    .end local v0    # "anrStr":Ljava/lang/String;
    .restart local v15    # "anrStr":Ljava/lang/String;
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v20

    goto :goto_7

    .end local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_12
    move-object/from16 v20, v3

    .line 4951
    .end local v2    # "i":I
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anr used: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4952
    aget-object v0, v5, v8

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAnrUsed(I)V

    move-object v0, v4

    goto :goto_a

    .line 4918
    .end local v4    # "size":[I
    .end local v14    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v15    # "anrStr":Ljava/lang/String;
    .end local v18    # "is3G":Z
    .end local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v0, "size":[I
    .local v2, "is3G":Z
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_13
    move/from16 v18, v2

    move-object/from16 v20, v3

    .line 4956
    .end local v2    # "is3G":Z
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v18    # "is3G":Z
    .restart local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_a
    const/16 v2, 0xca

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4958
    .local v2, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_18

    .line 4959
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 4960
    .end local v0    # "size":[I
    .local v3, "size":[I
    if-eqz v3, :cond_14

    .line 4961
    aget-object v0, v5, v8

    const/4 v4, 0x0

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setEmailLength(I)V

    .line 4962
    aget-object v0, v5, v8

    const/4 v4, 0x2

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setEmailTotal(I)V

    .line 4965
    :cond_14
    aget-object v0, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setEmailType(I)V

    .line 4966
    const/4 v0, 0x0

    .line 4967
    .end local v6    # "used":I
    .local v0, "used":I
    const/4 v4, 0x0

    .line 4968
    .local v4, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/4 v6, 0x0

    .line 4970
    .local v6, "emails":[Ljava/lang/String;
    move v14, v12

    move v15, v14

    move-object v14, v6

    move v6, v0

    .end local v0    # "used":I
    .local v6, "used":I
    .local v14, "emails":[Ljava/lang/String;
    .local v15, "i":I
    :goto_b
    if-ge v15, v11, :cond_17

    .line 4972
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4977
    .end local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move-object v4, v0

    move-object/from16 v21, v2

    goto :goto_c

    .line 4973
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_2
    move-exception v0

    .line 4974
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v19, v0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    .end local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v21, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const-string v2, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4976
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "index is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4974
    const-string v2, "MtkUsimPhoneBookManager"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_c
    if-nez v4, :cond_15

    .line 4980
    const-string v0, "null email rec "

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4981
    move-object/from16 v19, v3

    goto :goto_d

    .line 4984
    :cond_15
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    .line 4986
    .end local v14    # "emails":[Ljava/lang/String;
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v0, :cond_16

    array-length v2, v0

    if-lez v2, :cond_16

    const/4 v2, 0x0

    aget-object v14, v0, v2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_16

    .line 4987
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    .end local v3    # "size":[I
    .local v19, "size":[I
    const-string v3, "email: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v2

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4988
    add-int/lit8 v6, v6, 0x1

    move-object v14, v0

    goto :goto_d

    .line 4986
    .end local v19    # "size":[I
    .restart local v3    # "size":[I
    :cond_16
    move-object/from16 v19, v3

    .line 4970
    .end local v3    # "size":[I
    .restart local v19    # "size":[I
    move-object v14, v0

    .end local v0    # "emails":[Ljava/lang/String;
    .restart local v14    # "emails":[Ljava/lang/String;
    :goto_d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v19

    move-object/from16 v2, v21

    goto :goto_b

    .end local v19    # "size":[I
    .end local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_17
    move-object/from16 v21, v2

    move-object/from16 v19, v3

    .line 4991
    .end local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .end local v15    # "i":I
    .restart local v19    # "size":[I
    .restart local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email used: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4992
    aget-object v0, v5, v8

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setEmailUsed(I)V

    move-object/from16 v0, v19

    goto :goto_e

    .line 4958
    .end local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v14    # "emails":[Ljava/lang/String;
    .end local v19    # "size":[I
    .end local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v0, "size":[I
    .restart local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_18
    move-object/from16 v21, v2

    .line 4996
    .end local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_e
    const/16 v2, 0xc2

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4998
    .local v2, "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_1f

    .line 4999
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 5000
    .end local v0    # "size":[I
    .restart local v3    # "size":[I
    if-eqz v3, :cond_19

    .line 5001
    aget-object v0, v5, v8

    const/4 v4, 0x0

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Length(I)V

    .line 5002
    aget-object v0, v5, v8

    const/4 v4, 0x2

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Total(I)V

    .line 5005
    :cond_19
    aget-object v0, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Type(I)V

    .line 5006
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5007
    :try_start_3
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readExt1FileAndWait(I)V

    .line 5008
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5010
    const/4 v0, 0x0

    .line 5012
    .end local v6    # "used":I
    .local v0, "used":I
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_1e

    .line 5013
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5014
    .local v4, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v4, :cond_1d

    .line 5015
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5016
    .local v6, "len":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_f
    if-ge v14, v6, :cond_1c

    .line 5017
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 5018
    .local v15, "arr":[B
    move-object/from16 v19, v2

    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v19, "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    .end local v3    # "size":[I
    .local v22, "size":[I
    const-string v3, "ext1["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5019
    if-eqz v15, :cond_1b

    array-length v2, v15

    if-lez v2, :cond_1b

    .line 5020
    const/4 v2, 0x0

    aget-byte v3, v15, v2

    const/4 v2, 0x1

    if-eq v3, v2, :cond_1a

    const/4 v3, 0x0

    aget-byte v2, v15, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 5021
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 5016
    .end local v15    # "arr":[B
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    goto :goto_f

    .end local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_1c
    move-object/from16 v19, v2

    move-object/from16 v22, v3

    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .restart local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    goto :goto_10

    .line 5014
    .end local v6    # "len":I
    .end local v14    # "i":I
    .end local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_1d
    move-object/from16 v19, v2

    move-object/from16 v22, v3

    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .restart local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    goto :goto_10

    .line 5012
    .end local v4    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_1e
    move-object/from16 v19, v2

    move-object/from16 v22, v3

    .line 5027
    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .restart local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    :goto_10
    aget-object v2, v5, v8

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Used(I)V

    move v6, v0

    move-object/from16 v0, v22

    goto :goto_12

    .line 5008
    .end local v0    # "used":I
    .end local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    .local v6, "used":I
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .restart local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    :goto_11
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_11

    .line 4998
    .end local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .local v0, "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_1f
    move-object/from16 v19, v2

    .line 5031
    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_12
    const/16 v2, 0xc8

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 5032
    .local v2, "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_21

    .line 5033
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    .line 5034
    if-eqz v0, :cond_20

    .line 5035
    aget-object v3, v5, v8

    const/4 v4, 0x0

    aget v14, v0, v4

    invoke-virtual {v3, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setGasLength(I)V

    .line 5036
    aget-object v3, v5, v8

    const/4 v4, 0x2

    aget v14, v0, v4

    invoke-virtual {v3, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setGasTotal(I)V

    .line 5038
    :cond_20
    aget-object v3, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setGasType(I)V

    .line 5042
    :cond_21
    const/16 v3, 0xc7

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 5043
    .local v3, "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v3, :cond_23

    .line 5044
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    .line 5045
    if-eqz v0, :cond_22

    .line 5046
    aget-object v4, v5, v8

    const/4 v14, 0x0

    aget v15, v0, v14

    invoke-virtual {v4, v15}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAasLength(I)V

    .line 5047
    aget-object v4, v5, v8

    const/4 v14, 0x2

    aget v14, v0, v14

    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAasTotal(I)V

    .line 5049
    :cond_22
    aget-object v4, v5, v8

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAasType(I)V

    .line 5053
    :cond_23
    const/16 v4, 0xc3

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 5054
    .local v4, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v4, :cond_25

    .line 5055
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    .line 5056
    if-eqz v0, :cond_24

    .line 5057
    aget-object v14, v5, v8

    move-object/from16 v16, v2

    const/4 v15, 0x0

    .end local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v16, "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    aget v2, v0, v15

    invoke-virtual {v14, v2}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSneLength(I)V

    .line 5058
    aget-object v2, v5, v8

    aget v14, v0, v15

    invoke-virtual {v2, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSneTotal(I)V

    goto :goto_13

    .line 5056
    .end local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_24
    move-object/from16 v16, v2

    .line 5060
    .end local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_13
    aget-object v2, v5, v8

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSneType(I)V

    goto :goto_14

    .line 5054
    .end local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_25
    move-object/from16 v16, v2

    .line 5064
    .end local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_14
    const/16 v2, 0xcb

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 5065
    .local v2, "ccpFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_27

    .line 5066
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    .line 5067
    if-eqz v0, :cond_26

    .line 5068
    aget-object v14, v5, v8

    move-object/from16 v17, v3

    const/4 v15, 0x0

    .end local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v17, "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    aget v3, v0, v15

    invoke-virtual {v14, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setCcpLength(I)V

    .line 5069
    aget-object v3, v5, v8

    aget v14, v0, v15

    invoke-virtual {v3, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setCcpTotal(I)V

    goto :goto_15

    .line 5067
    .end local v17    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_26
    move-object/from16 v17, v3

    const/4 v15, 0x0

    .line 5071
    .end local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v17    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_15
    aget-object v3, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setCcpType(I)V

    goto :goto_16

    .line 5065
    .end local v17    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_27
    move-object/from16 v17, v3

    const/4 v15, 0x0

    .line 4867
    .end local v2    # "ccpFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v9    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v10    # "numAdnRecs":I
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "adnFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v19    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_16
    add-int/lit8 v8, v8, 0x1

    move v4, v15

    move/from16 v2, v18

    goto/16 :goto_2

    .end local v18    # "is3G":Z
    .local v2, "is3G":Z
    :cond_28
    move/from16 v18, v2

    .line 5075
    .end local v2    # "is3G":Z
    .end local v8    # "pbrIndex":I
    .restart local v18    # "is3G":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 5076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhonebookMemStorageExt["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5075
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 5079
    .end local v2    # "i":I
    :cond_29
    return-object v5

    .line 4847
    .end local v0    # "size":[I
    .end local v5    # "response":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .end local v6    # "used":I
    .end local v7    # "currentTotal":I
    .end local v18    # "is3G":Z
    .local v2, "is3G":Z
    :cond_2a
    move/from16 v18, v2

    .line 4848
    .end local v2    # "is3G":Z
    .restart local v18    # "is3G":Z
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .locals 12

    .line 5083
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    .line 5084
    .local v1, "response":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    new-instance v2, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5085
    const/4 v2, 0x0

    .line 5086
    .local v2, "size":[I
    const/16 v4, 0x6f3a

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v2

    .line 5088
    const/4 v4, 0x2

    if-eqz v2, :cond_1

    .line 5089
    aget-object v5, v1, v3

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnLength(I)V

    .line 5090
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isAdnAccessible()Z

    move-result v5

    if-ne v5, v0, :cond_0

    .line 5091
    aget-object v5, v1, v3

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnTotal(I)V

    goto :goto_0

    .line 5093
    :cond_0
    aget-object v5, v1, v3

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnTotal(I)V

    .line 5097
    :cond_1
    :goto_0
    aget-object v5, v1, v3

    const/16 v6, 0xa8

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnType(I)V

    .line 5098
    aget-object v5, v1, v3

    invoke-virtual {v5, v0}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSliceIndex(I)V

    .line 5099
    const/16 v5, 0x6f4a

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v2

    .line 5101
    if-eqz v2, :cond_2

    .line 5102
    aget-object v6, v1, v3

    aget v7, v2, v3

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Length(I)V

    .line 5103
    aget-object v6, v1, v3

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Total(I)V

    .line 5106
    :cond_2
    aget-object v6, v1, v3

    const/16 v7, 0xaa

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Type(I)V

    .line 5108
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5109
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v7, :cond_6

    .line 5110
    const/16 v7, 0x3e9

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 5111
    .local v7, "msg":Landroid/os/Message;
    iput v3, v7, Landroid/os/Message;->arg1:I

    .line 5112
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v8, v5, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5114
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5117
    goto :goto_1

    .line 5115
    :catch_0
    move-exception v5

    .line 5116
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5118
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "msg":Landroid/os/Message;
    :goto_1
    nop

    .line 5122
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5124
    const/4 v5, 0x0

    .line 5126
    .local v5, "used":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 5127
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 5129
    .local v6, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v6, :cond_5

    .line 5130
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 5132
    .local v7, "len":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_5

    .line 5133
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 5134
    .local v9, "arr":[B
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ext1["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5135
    if-eqz v9, :cond_4

    array-length v10, v9

    if-lez v10, :cond_4

    .line 5136
    aget-byte v10, v9, v3

    if-eq v10, v0, :cond_3

    aget-byte v10, v9, v3

    if-ne v10, v4, :cond_4

    .line 5137
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 5132
    .end local v9    # "arr":[B
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 5144
    .end local v6    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v7    # "len":I
    .end local v8    # "i":I
    :cond_5
    aget-object v0, v1, v3

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Used(I)V

    .line 5145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhonebookMemStorageExt2G:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5146
    return-object v1

    .line 5119
    .end local v5    # "used":I
    :cond_6
    :try_start_3
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5120
    monitor-exit v6

    return-object v1

    .line 5122
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public blacklist getSneRecordLen()I
    .locals 8

    .line 4595
    const/4 v0, 0x0

    .line 4597
    .local v0, "resultSize":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->hasSne()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4598
    return v2

    .line 4601
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 4605
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1

    .line 4606
    .local v1, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v1, :cond_2

    .line 4607
    return v3

    .line 4610
    :cond_2
    const/16 v3, 0xc3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4611
    .local v3, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v3, :cond_3

    .line 4612
    return v2

    .line 4615
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 4616
    .local v4, "efid":I
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v5

    const/16 v6, 0xa9

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v2

    .line 4617
    .local v5, "sneType2":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSneRecordLen: EFSNE id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4618
    const/4 v6, 0x0

    .line 4620
    .local v6, "size":[I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 4621
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, [I

    goto :goto_1

    .line 4623
    :cond_5
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v6

    .line 4626
    :goto_1
    if-eqz v6, :cond_7

    .line 4627
    if-eqz v5, :cond_6

    .line 4628
    aget v2, v6, v2

    add-int/lit8 v0, v2, -0x2

    goto :goto_2

    .line 4630
    :cond_6
    aget v0, v6, v2

    .line 4634
    :cond_7
    :goto_2
    return v0

    .line 4602
    .end local v1    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "efid":I
    .end local v5    # "sneType2":Z
    .end local v6    # "size":[I
    :cond_8
    :goto_3
    return v3
.end method

.method public blacklist getUpbDone()I
    .locals 1

    .line 4638
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    return v0
.end method

.method public blacklist getUsimAasById(II)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .line 4242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAasById by id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pbrIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPbrNeedNotify "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4245
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 4247
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4249
    .local v0, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 4250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimAasById NonNULL by id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4251
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 4254
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsimAasById NULL by id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4255
    return-object v2
.end method

.method public blacklist getUsimAasList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .line 4222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAasList start mPbrNeedNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4225
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4227
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4228
    .local v1, "allAas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    return-object v0

    .line 4230
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 4231
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4232
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4233
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aasIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",pbrIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4234
    new-instance v5, Lcom/mediatek/internal/telephony/phb/AlphaTag;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v6, v4, v2}, Lcom/mediatek/internal/telephony/phb/AlphaTag;-><init>(ILjava/lang/String;I)V

    .line 4235
    .local v5, "tag":Lcom/mediatek/internal/telephony/phb/AlphaTag;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4231
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "tag":Lcom/mediatek/internal/telephony/phb/AlphaTag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4230
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4238
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public blacklist getUsimAasMaxCount()I
    .locals 5

    .line 4493
    const-string v0, "getUsimAasMaxCount begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4495
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4496
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4497
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4499
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4502
    goto :goto_0

    .line 4500
    :catch_0
    move-exception v1

    .line 4501
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in getUsimAasMaxCount"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAasMaxCount done: N_AAS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4508
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    return v0

    .line 4504
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getUsimAasMaxNameLen()I
    .locals 5

    .line 4474
    const-string v0, "getUsimAasMaxNameLen begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4476
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4477
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4478
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4480
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4483
    goto :goto_0

    .line 4481
    :catch_0
    move-exception v1

    .line 4482
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in getUsimAasMaxNameLen"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAasMaxNameLen done: L_AAS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4489
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    return v0

    .line 4485
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getUsimGroupById(I)Ljava/lang/String;
    .locals 4
    .param p1, "nGasId"    # I

    .line 2065
    const/4 v0, 0x0

    .line 2067
    .local v0, "grpName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsimGroupById nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2069
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2070
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 2071
    .local v1, "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    if-eqz v1, :cond_0

    .line 2072
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 2073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimGroupById index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2078
    .end local v1    # "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsimGroupById grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2079
    return-object v0
.end method

.method public blacklist getUsimGroups()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .line 2050
    const-string v0, "getUsimGroups begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2052
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2053
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2054
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 2056
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 2059
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readGasListAndWait()V

    .line 2060
    const-string v0, "getUsimGroups end"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    return-object v0

    .line 2056
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getUsimGrpMaxCount()I
    .locals 4

    .line 2734
    const/4 v0, -0x1

    .line 2736
    .local v0, "ret":I
    const-string v1, "getUsimGrpMaxCount begin"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2738
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2739
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2740
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    if-gez v2, :cond_0

    .line 2741
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 2743
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v2, v2, v3

    move v0, v2

    goto :goto_0

    .line 2745
    :cond_1
    const/4 v0, -0x1

    .line 2747
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimGrpMaxCount done: N_Gas is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2748
    monitor-exit v1

    .line 2749
    return v0

    .line 2748
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getUsimGrpMaxNameLen()I
    .locals 4

    .line 2714
    const/4 v0, -0x1

    .line 2716
    .local v0, "ret":I
    const-string v1, "getUsimGrpMaxNameLen begin"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2718
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2719
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2720
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    if-gez v2, :cond_0

    .line 2721
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 2723
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v2, v2, v3

    move v0, v2

    goto :goto_0

    .line 2725
    :cond_1
    const/4 v0, -0x1

    .line 2727
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimGrpMaxNameLen done: L_Gas is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2728
    monitor-exit v1

    .line 2729
    return v0

    .line 2728
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 1151
    const/4 v0, 0x0

    .line 1153
    .local v0, "userData":[I
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    const/4 v3, 0x3

    if-eq v1, v2, :cond_38

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_35

    const/4 v2, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnRecognized Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUsimPhoneBookManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1817
    :pswitch_0
    const-string v1, "Load UPB AAS done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1819
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1821
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1822
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 1823
    .local v2, "aasList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 1824
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 1825
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1826
    aget-object v4, v2, v3

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1827
    .local v4, "aas":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load UPB AAS done i is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", aas is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1825
    .end local v4    # "aas":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1833
    .end local v2    # "aasList":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1834
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1835
    monitor-exit v2

    .line 1836
    goto/16 :goto_1e

    .line 1835
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1747
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1749
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1750
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    .line 1751
    if-nez v2, :cond_1

    .line 1752
    const-string v2, "mSneInfo Null!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1754
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSneInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1759
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1760
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1761
    monitor-exit v2

    .line 1762
    goto/16 :goto_1e

    .line 1761
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 1724
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1725
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1727
    .local v2, "tmpAnrInfo":[I
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 1728
    if-nez v2, :cond_3

    .line 1729
    const-string v3, "tmpAnrInfo Null!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1731
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmpAnrInfo = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1733
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 1734
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    goto :goto_2

    .line 1735
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1736
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1738
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1743
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1744
    monitor-exit v3

    .line 1745
    goto/16 :goto_1e

    .line 1744
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v4

    .line 1708
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "tmpAnrInfo":[I
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1709
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    .line 1710
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    .line 1711
    if-nez v2, :cond_7

    .line 1712
    const-string v2, "mEmailInfo Null!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1714
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmailInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1719
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1720
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1721
    monitor-exit v2

    .line 1722
    goto/16 :goto_1e

    .line 1721
    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v3

    .line 1764
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1765
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1766
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1768
    .local v2, "sneResult":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1769
    .local v3, "isNotify":Z
    if-eqz v2, :cond_9

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_9

    .line 1770
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM Sne record done result is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1772
    aget v4, v0, v5

    invoke-direct {p0, v4, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithSneByIndexOptmz(ILjava/lang/String;)V

    .line 1775
    :cond_9
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "haman, mReadingSneNum when load done after minus: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1777
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mNeedNotify:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", sne index:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adn i:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1776
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1780
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_3c

    .line 1781
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1782
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1783
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1784
    :try_start_4
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1785
    monitor-exit v4

    goto :goto_5

    :catchall_4
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v5

    .line 1787
    :cond_a
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SNE_RECORD_LOAD_OPTMZ_DONE end mLock.notify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1791
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "sneResult":Ljava/lang/String;
    .end local v3    # "isNotify":Z
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1792
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1793
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 1794
    .local v2, "anrResult":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1796
    .restart local v3    # "isNotify":Z
    if-eqz v2, :cond_b

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_b

    .line 1797
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading USIM Anr record done result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1798
    aget v7, v0, v6

    aget v8, v0, v5

    aget v9, v0, v4

    aget-object v10, v2, v6

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndexOptmz(IIILcom/mediatek/internal/telephony/phb/PhbEntry;)V

    .line 1802
    :cond_b
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1803
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "haman, mReadingAnrNum when load done after minus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1804
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mNeedNotify:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", anr index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", adn i:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1803
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1806
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_3c

    .line 1807
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1808
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1809
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1810
    :try_start_5
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1811
    monitor-exit v4

    goto :goto_6

    :catchall_5
    move-exception v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v5

    .line 1813
    :cond_c
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_ANR_RECORD_LOAD_OPTMZ_DONE end mLock.notify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1681
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "anrResult":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    .end local v3    # "isNotify":Z
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1682
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1683
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1684
    .local v2, "emailResult":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1686
    .restart local v3    # "isNotify":Z
    if-eqz v2, :cond_d

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_d

    .line 1687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM Email record done result is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1688
    aget v4, v0, v6

    aget v7, v0, v5

    invoke-direct {p0, v4, v7, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithEmailByIndexOptmz(IILjava/lang/String;)V

    .line 1692
    :cond_d
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "haman, mReadingEmailNum when load done after minus: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1694
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mNeedNotify:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", email index:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adn i:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1693
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1697
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_3c

    .line 1698
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1699
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1700
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1701
    :try_start_6
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1702
    monitor-exit v4

    goto :goto_7

    :catchall_6
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v5

    .line 1704
    :cond_e
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_EMAIL_RECORD_LOAD_OPTMZ_DONE end mLock.notify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1155
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "emailResult":Ljava/lang/String;
    .end local v3    # "isNotify":Z
    :pswitch_7
    const-string v1, "EVENT_QUERY_PHB_ADN_INFO"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1157
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1159
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 1160
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1161
    .local v2, "info":[I
    const/4 v7, 0x4

    if-eqz v2, :cond_f

    array-length v8, v2

    if-ne v8, v7, :cond_f

    .line 1162
    new-array v7, v7, [I

    iput-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1163
    aget v8, v2, v6

    aput v8, v7, v6

    .line 1164
    aget v8, v2, v5

    aput v8, v7, v5

    .line 1165
    aget v8, v2, v4

    aput v8, v7, v4

    .line 1166
    aget v8, v2, v3

    aput v8, v7, v3

    .line 1167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recordSize[0]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",recordSize[1]="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    aget v5, v6, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",recordSize[2]="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    aget v4, v5, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",recordSize[3]="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    aget v3, v4, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 1172
    :cond_f
    new-array v7, v7, [I

    iput-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1173
    aput v6, v7, v6

    .line 1174
    aput v6, v7, v5

    .line 1175
    aput v6, v7, v4

    .line 1176
    aput v6, v7, v3

    .line 1180
    .end local v2    # "info":[I
    :cond_10
    :goto_8
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1181
    :try_start_7
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1182
    monitor-exit v2

    .line 1183
    goto/16 :goto_1e

    .line 1182
    :catchall_7
    move-exception v3

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v3

    .line 1668
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1670
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_11

    .line 1671
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    goto :goto_9

    .line 1673
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Select EF file fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :goto_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1677
    :try_start_8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1678
    monitor-exit v2

    .line 1679
    goto/16 :goto_1e

    .line 1678
    :catchall_8
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v3

    .line 1410
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    const-string v1, "Query UPB capability done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1412
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1414
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_12

    .line 1415
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    .line 1418
    :cond_12
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1419
    :try_start_9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1420
    monitor-exit v2

    .line 1421
    goto/16 :goto_1e

    .line 1420
    :catchall_9
    move-exception v3

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v3

    .line 1574
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    const-string v1, "Loading USIM SNE record done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1575
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1576
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1577
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1579
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v2, :cond_13

    .line 1580
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v3

    .line 1582
    .local v3, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v3, :cond_13

    .line 1583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM SNE record done result is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 1584
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1583
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1585
    aget v4, v0, v6

    aget v5, v0, v5

    iget-object v7, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {p0, v4, v5, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithSneByIndex(II[B)V

    .line 1589
    .end local v3    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_13
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haman, mReadingSneNum when load done after minus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mNeedNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1591
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1590
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1592
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_3c

    .line 1593
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1594
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1595
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1596
    :try_start_a
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1597
    monitor-exit v3

    goto :goto_a

    :catchall_a
    move-exception v4

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v4

    .line 1599
    :cond_14
    :goto_a
    const-string v3, "EVENT_SNE_RECORD_LOAD_DONE end mLock.notify"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1383
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1384
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1385
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1387
    .local v2, "isNotify":Z
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_15

    .line 1388
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 1390
    .local v3, "grpIds":[I
    array-length v4, v3

    if-lez v4, :cond_15

    .line 1391
    aget v4, v0, v6

    aget v5, v0, v5

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 1395
    .end local v3    # "grpIds":[I
    :cond_15
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haman, mReadingGrpNum when load done after minus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1397
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mNeedNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1396
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1399
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_3c

    .line 1400
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1401
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1402
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1403
    :try_start_b
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1404
    monitor-exit v3

    goto :goto_b

    :catchall_b
    move-exception v4

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v4

    .line 1406
    :cond_16
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GRP_RECORD_LOAD_DONE end mLock.notify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1250
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "isNotify":Z
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1251
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1252
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1254
    .local v2, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v2, :cond_17

    .line 1255
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v3

    .line 1257
    .local v3, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v3, :cond_17

    .line 1258
    aget v7, v0, v6

    aget v5, v0, v5

    aget v4, v0, v4

    iget-object v8, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {p0, v7, v5, v4, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndex(III[B)V

    .line 1263
    .end local v3    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_17
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haman, mReadingAnrNum when load done after minus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mNeedNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1265
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1264
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1266
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_3c

    .line 1267
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1268
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1269
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1270
    :try_start_c
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1271
    monitor-exit v3

    goto :goto_c

    :catchall_c
    move-exception v4

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v4

    .line 1273
    :cond_18
    :goto_c
    const-string v3, "EVENT_ANR_RECORD_LOAD_DONE end mLock.notify"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1303
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1304
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1305
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1307
    .local v2, "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading USIM email record done email index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", adn i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1309
    if-eqz v2, :cond_19

    .line 1310
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v3

    .line 1312
    .restart local v3    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v3, :cond_19

    .line 1313
    aget v4, v0, v6

    aget v5, v0, v5

    iget-object v7, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {p0, v4, v5, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithEmailByIndex(II[B)V

    .line 1317
    .end local v3    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_19
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haman, mReadingEmailNum when load done after minus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1319
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mNeedNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1318
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1321
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_3c

    .line 1322
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1323
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1324
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1325
    :try_start_d
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1326
    monitor-exit v3

    goto :goto_d

    :catchall_d
    move-exception v4

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v4

    .line 1328
    :cond_1a
    :goto_d
    const-string v3, "EVENT_EMAIL_RECORD_LOAD_DONE end mLock.notify"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1625
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1626
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1627
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1628
    .local v2, "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1629
    .local v3, "isNotify":Z
    if-eqz v2, :cond_1c

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1c

    .line 1630
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v4

    .line 1632
    .local v4, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v4, :cond_1c

    .line 1633
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading USIM Iap record done result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 1634
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1633
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1639
    :try_start_e
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    aget v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1641
    .local v7, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1b

    .line 1642
    aget v8, v0, v5

    iget-object v9, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1644
    :cond_1b
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Warning: IAP size is 0"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_0

    .line 1648
    :goto_e
    goto :goto_f

    .line 1646
    .end local v7    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v7

    .line 1647
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Index out of bounds."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    .end local v4    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    :goto_f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "haman, mReadingIapNum when load done after minus: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1654
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mNeedNotify "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Iap pbr:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adn i:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1653
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1657
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_3c

    .line 1658
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1659
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1660
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1661
    :try_start_f
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1662
    monitor-exit v4

    goto :goto_10

    :catchall_e
    move-exception v5

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    throw v5

    .line 1664
    :cond_1d
    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_IAP_RECORD_LOAD_DONE end mLock.notify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1446
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v3    # "isNotify":Z
    :pswitch_f
    const-string v1, "update UPB GAS done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1448
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1450
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1e

    .line 1451
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_11

    .line 1453
    :cond_1e
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 1455
    .local v3, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_1f

    .line 1456
    const/16 v2, -0xa

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_11

    .line 1457
    :cond_1f
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_20

    .line 1458
    const/16 v2, -0x14

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_11

    .line 1460
    :cond_20
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 1464
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException;
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update UPB GAS done mResult is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1466
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1467
    :try_start_10
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1468
    monitor-exit v3

    .line 1469
    goto/16 :goto_1e

    .line 1468
    :catchall_f
    move-exception v2

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    throw v2

    .line 1471
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    const-string v1, "update UPB GRP done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1473
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1475
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_21

    .line 1476
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_12

    .line 1478
    :cond_21
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 1481
    :goto_12
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1482
    :try_start_11
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1483
    monitor-exit v2

    .line 1484
    goto/16 :goto_1e

    .line 1483
    :catchall_10
    move-exception v3

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    throw v3

    .line 1603
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_11
    const-string v1, "update UPB SNE done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1604
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1605
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_24

    .line 1606
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "EVENT_SNE_UPDATE_DONE exception"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1607
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1609
    .local v2, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_22

    .line 1610
    const/16 v3, -0x28

    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_13

    .line 1611
    :cond_22
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_23

    .line 1612
    const/16 v3, -0x1e

    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_13

    .line 1614
    :cond_23
    const/16 v3, -0x32

    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 1616
    .end local v2    # "e":Lcom/android/internal/telephony/CommandException;
    :goto_13
    goto :goto_14

    .line 1617
    :cond_24
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 1620
    :goto_14
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1621
    :try_start_12
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1622
    monitor-exit v2

    .line 1623
    goto/16 :goto_1e

    .line 1622
    :catchall_11
    move-exception v3

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    throw v3

    .line 1519
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    const-string v1, "EVENT_AAS_UPDATE_DONE done."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1521
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1522
    :try_start_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1523
    monitor-exit v1

    .line 1524
    goto/16 :goto_1e

    .line 1523
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    throw v2

    .line 1357
    :pswitch_13
    const-string v1, "Updating USIM ANR records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1359
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1361
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1363
    .local v2, "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_25

    .line 1364
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "EVENT_ANR_UPDATE_DONE exception"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 1366
    :cond_25
    if-eqz v2, :cond_27

    .line 1367
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v3

    .line 1369
    .local v3, "exception":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v3, :cond_26

    .line 1370
    const-string v4, "Updating USIM ANR records successfully!"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1371
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 1373
    .end local v3    # "exception":Lcom/android/internal/telephony/uicc/IccException;
    :cond_26
    goto :goto_15

    .line 1374
    :cond_27
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 1378
    :goto_15
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1379
    :try_start_14
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1380
    monitor-exit v3

    .line 1381
    goto/16 :goto_1e

    .line 1380
    :catchall_13
    move-exception v4

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_13

    throw v4

    .line 1332
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_14
    const-string v1, "Updating USIM Email records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1334
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1336
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_28

    .line 1337
    const-string v2, "Updating USIM Email records successfully!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1338
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    goto :goto_16

    .line 1340
    :cond_28
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "EVENT_EMAIL_UPDATE_DONE exception"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    :goto_16
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1344
    :try_start_15
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1345
    monitor-exit v2

    .line 1346
    goto/16 :goto_1e

    .line 1345
    :catchall_14
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    throw v3

    .line 1348
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    const-string v1, "Updating USIM IAP records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1350
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1352
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3c

    .line 1353
    const-string v2, "Updating USIM IAP records successfully!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1423
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    const-string v1, "Load UPB GAS done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1425
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1427
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_29

    .line 1428
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 1429
    .local v2, "gasList":[Ljava/lang/String;
    if-eqz v2, :cond_29

    array-length v3, v2

    if-lez v3, :cond_29

    .line 1430
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 1431
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_29

    .line 1432
    aget-object v4, v2, v3

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1434
    .local v4, "gas":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v6, v4}, Lcom/mediatek/internal/telephony/phb/UsimGroup;-><init>(ILjava/lang/String;)V

    .line 1435
    .local v5, "uGasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load UPB GAS done i is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", gas is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1431
    .end local v4    # "gas":Ljava/lang/String;
    .end local v5    # "uGasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1441
    .end local v2    # "gasList":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_29
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1442
    :try_start_16
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1443
    monitor-exit v2

    .line 1444
    goto/16 :goto_1e

    .line 1443
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_15

    throw v3

    .line 1487
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1488
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1490
    .local v2, "pbrIndexAAS":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_AAS_LOAD_DONE done pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1493
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2c

    .line 1494
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1496
    .local v3, "aasFileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v3, :cond_2c

    .line 1497
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1498
    .local v4, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_18
    if-ge v7, v4, :cond_2b

    .line 1501
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1502
    .local v8, "aas":[B
    if-nez v8, :cond_2a

    .line 1503
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    goto :goto_19

    .line 1506
    :cond_2a
    array-length v9, v8

    .line 1507
    invoke-static {v8, v6, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v9

    .line 1508
    .local v9, "aasAlphaTag":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    .end local v8    # "aas":[B
    .end local v9    # "aasAlphaTag":Ljava/lang/String;
    :goto_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 1510
    .end local v7    # "i":I
    :cond_2b
    iput-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 1514
    .end local v3    # "aasFileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "size":I
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1515
    :try_start_17
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1516
    monitor-exit v3

    .line 1517
    goto/16 :goto_1e

    .line 1516
    :catchall_16
    move-exception v4

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    throw v4

    .line 1290
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "pbrIndexAAS":I
    :pswitch_18
    const-string v1, "Loading USIM Email records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1292
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1294
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2d

    .line 1295
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1298
    :cond_2d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1299
    :try_start_18
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1300
    monitor-exit v2

    .line 1301
    goto/16 :goto_1e

    .line 1300
    :catchall_17
    move-exception v3

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    throw v3

    .line 1277
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    const-string v1, "Loading USIM IAP records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1279
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1281
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2e

    .line 1282
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 1285
    :cond_2e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1286
    :try_start_19
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1287
    monitor-exit v2

    .line 1288
    goto/16 :goto_1e

    .line 1287
    :catchall_18
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_18

    throw v3

    .line 1211
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1a
    const-string v1, "Loading USIM ADN records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1213
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1215
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_32

    .line 1217
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 1218
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2f

    .line 1220
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 1221
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1220
    invoke-direct {p0, v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1222
    .local v2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1224
    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->initPhbStorage(Ljava/util/ArrayList;)V

    .line 1226
    .end local v2    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    goto :goto_1a

    .line 1227
    :cond_2f
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_31

    .line 1228
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1230
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1231
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->initPhbStorage(Ljava/util/ArrayList;)V

    .line 1235
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading USIM ADN records "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 1237
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading USIM ADN records ar.result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 1242
    :cond_32
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Loading USIM ADN records fail."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :goto_1a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1246
    :try_start_1a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1247
    monitor-exit v3

    .line 1248
    goto/16 :goto_1e

    .line 1247
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_19

    throw v2

    .line 1185
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: EVENT_PBR_LOAD_DONE:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1188
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    if-ne v1, v2, :cond_33

    .line 1189
    goto/16 :goto_1e

    .line 1192
    :cond_33
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1194
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_34

    .line 1195
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    goto :goto_1b

    .line 1200
    :cond_34
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsimPhoneBookManager, get PBR with exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :goto_1b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1206
    :try_start_1b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1207
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1a

    .line 1208
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 1209
    goto/16 :goto_1e

    .line 1207
    :catchall_1a
    move-exception v3

    :try_start_1c
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1a

    throw v3

    .line 1552
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_35
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1553
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1555
    .local v2, "pbrIndexExt1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EXT1_LOAD_DONE done pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1557
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_37

    .line 1558
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1560
    .local v3, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v3, :cond_37

    .line 1561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_EXT1_LOAD_DONE done size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1562
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    if-nez v4, :cond_36

    .line 1563
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    .line 1565
    :cond_36
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    .end local v3    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_37
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1570
    :try_start_1d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1571
    monitor-exit v4

    .line 1572
    goto/16 :goto_1e

    .line 1571
    :catchall_1b
    move-exception v3

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1b

    throw v3

    .line 1526
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "pbrIndexExt1":I
    :cond_38
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1527
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1529
    .local v2, "efid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_RECORDS_SIZE_DONE done, recNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ef_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1532
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3b

    .line 1533
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 1534
    .local v4, "recordSize":[I
    array-length v5, v4

    if-ne v5, v3, :cond_3a

    .line 1535
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-nez v3, :cond_39

    .line 1536
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    .line 1538
    :cond_39
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    .line 1540
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get wrong record size format"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    .end local v4    # "recordSize":[I
    :goto_1c
    goto :goto_1d

    .line 1543
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get EF record size failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkUsimPhoneBookManager"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :goto_1d
    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    if-lez v3, :cond_3c

    .line 1546
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1547
    :try_start_1e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1548
    monitor-exit v3

    goto :goto_1e

    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1c

    throw v4

    .line 1841
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    :cond_3c
    :goto_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist hasExistGroup(Ljava/lang/String;)I
    .locals 5
    .param p1, "grpName"    # Ljava/lang/String;

    .line 2688
    const/4 v0, -0x1

    .line 2690
    .local v0, "grpId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasExistGroup grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2692
    if-nez p1, :cond_0

    .line 2693
    return v0

    .line 2696
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2697
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2698
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 2700
    .local v2, "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsimGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 2704
    goto :goto_1

    .line 2697
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2709
    .end local v1    # "i":I
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasExistGroup grpId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2710
    return v0
.end method

.method public blacklist hasSne()Z
    .locals 5

    .line 4576
    const-string v0, "hasSne begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4578
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4579
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4580
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4583
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4586
    goto :goto_0

    .line 4584
    :catch_0
    move-exception v1

    .line 4585
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in hasSne"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasSne done: N_Sne is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4591
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 4588
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist insertUsimAas(Ljava/lang/String;)I
    .locals 19
    .param p1, "aasName"    # Ljava/lang/String;

    .line 4316
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUsimAas begin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mPbrNeedNotify "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4318
    const/4 v0, 0x0

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 4322
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    return v4

    .line 4324
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v3

    .line 4325
    .local v3, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 4327
    .local v5, "len":I
    if-le v5, v3, :cond_2

    .line 4328
    return v0

    .line 4331
    :cond_2
    const/4 v6, -0x1

    .line 4333
    .local v6, "index":I
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4334
    const/4 v0, 0x0

    .line 4335
    .local v0, "aasIndex":I
    const/4 v8, 0x0

    .line 4337
    .local v8, "found":Z
    :try_start_0
    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4339
    .local v9, "allAas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 4340
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4341
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    .line 4339
    .end local v11    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4342
    .restart local v11    # "value":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v8, 0x1

    .line 4343
    add-int/lit8 v0, v10, 0x1

    .line 4344
    move v10, v8

    move v8, v0

    goto :goto_2

    .line 4339
    .end local v11    # "value":Ljava/lang/String;
    :cond_5
    move v10, v8

    move v8, v0

    .line 4348
    .end local v0    # "aasIndex":I
    .local v8, "aasIndex":I
    .local v10, "found":Z
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertUsimAas aasIndex:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",found:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4349
    if-nez v10, :cond_6

    .line 4351
    const/4 v0, -0x2

    monitor-exit v7

    return v0

    .line 4354
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4355
    .local v16, "temp":Ljava/lang/String;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    move-object v11, v0

    .line 4356
    .local v11, "msg":Landroid/os/Message;
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/16 v17, 0x0

    move v15, v8

    move-object/from16 v18, v11

    invoke-virtual/range {v12 .. v18}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4359
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4362
    goto :goto_3

    .line 4360
    :catch_0
    move-exception v0

    .line 4361
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v12, "MtkUsimPhoneBookManager"

    const-string v13, "Interrupted Exception in insertUsimAas"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4365
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertUsimAas UPB_EF_AAS: ar "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4367
    if-eqz v0, :cond_8

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_7

    goto :goto_4

    .line 4377
    :cond_7
    const-string v12, "MtkUsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertUsimAas exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    monitor-exit v7

    return v4

    .line 4368
    :cond_8
    :goto_4
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4369
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_9

    .line 4370
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v4, v12, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4371
    const-string v12, "insertUsimAas update mAasForAnr done"

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto :goto_5

    .line 4373
    :cond_9
    const-string v12, "insertUsimAas mAasForAnr is null"

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4375
    :goto_5
    monitor-exit v7

    return v8

    .line 4380
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "aasIndex":I
    .end local v9    # "allAas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "found":Z
    .end local v11    # "msg":Landroid/os/Message;
    .end local v16    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4319
    .end local v3    # "limit":I
    .end local v5    # "len":I
    .end local v6    # "index":I
    :cond_a
    :goto_6
    return v0
.end method

.method public declared-synchronized blacklist insertUsimGroup(Ljava/lang/String;)I
    .locals 11
    .param p1, "grpName"    # Ljava/lang/String;

    monitor-enter p0

    .line 2161
    const/4 v0, -0x1

    .line 2163
    .local v0, "index":I
    :try_start_0
    const-string v1, "insertUsimGroup grpName"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2165
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2166
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 2169
    :cond_0
    const/4 v2, 0x0

    .line 2170
    .local v2, "gasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    const/4 v3, 0x0

    .line 2172
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2173
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    move-object v2, v4

    .line 2174
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2175
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v4

    move v0, v4

    .line 2176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertUsimGroup index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2177
    goto :goto_1

    .line 2172
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2181
    :cond_2
    :goto_1
    if-gez v0, :cond_3

    .line 2182
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "insertUsimGroup fail: gas file is full."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/16 v0, -0x14

    .line 2184
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 2187
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2189
    .local v8, "temp":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v7, 0xd

    .line 2190
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2189
    move v7, v0

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2193
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2196
    goto :goto_2

    .line 2194
    :catch_0
    move-exception v4

    .line 2195
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in insertUsimGroup"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-gez v4, :cond_4

    .line 2199
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "result is negative. insertUsimGroup"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v4

    .line 2202
    :cond_4
    :try_start_5
    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 2203
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2167
    .end local v2    # "gasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    .end local v3    # "i":I
    .end local v8    # "temp":Ljava/lang/String;
    :cond_5
    :goto_3
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "insertUsimGroup fail "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2207
    monitor-exit p0

    return v0

    .line 2206
    :catchall_0
    move-exception v2

    :goto_5
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 2160
    .end local v0    # "index":I
    .end local p1    # "grpName":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist isAdnAccessible()Z
    .locals 6

    .line 5274
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v2, :cond_1

    .line 5275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5276
    const/16 v2, 0x14

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5278
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f3a

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->selectEFFile(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5280
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5283
    goto :goto_0

    .line 5281
    :catch_0
    move-exception v3

    .line 5282
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in isAdnAccessible"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5284
    .end local v2    # "response":Landroid/os/Message;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    if-eqz v0, :cond_1

    .line 5287
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/EFResponseData;->getFileStatus()I

    move-result v0

    .line 5295
    .local v0, "fs":I
    and-int/lit8 v2, v0, 0x5

    if-lez v2, :cond_0

    .line 5296
    return v1

    .line 5298
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 5284
    .end local v0    # "fs":I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 5302
    :cond_1
    return v1
.end method

.method public blacklist isAnrCapacityFree(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z
    .locals 11
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 2772
    const/4 v0, 0x0

    .line 2774
    .local v0, "oldAnr":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 2775
    invoke-virtual {p4, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2778
    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_a

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    if-ltz p3, :cond_a

    .line 2779
    const/16 v2, 0xc4

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimEfType(I)I

    move-result v3

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_a

    if-eqz v0, :cond_1

    .line 2780
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 2788
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 2790
    add-int/lit8 v3, p2, -0x1

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v3, v5

    .line 2791
    .local v3, "pbrRecNum":I
    add-int/lit8 v6, p2, -0x1

    rem-int/2addr v6, v5

    .line 2795
    .local v6, "anrRecNum":I
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrCapacityFree anr: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2797
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 2802
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    mul-int/lit16 v7, p3, 0x100

    add-int/2addr v7, v2

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 2805
    .local v2, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_3

    .line 2806
    return v4

    .line 2809
    :cond_3
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v5

    .line 2810
    .local v5, "anrFileId":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 2811
    .local v7, "sizeInfo":[I
    const/4 v8, 0x2

    aget v8, v7, v8

    .line 2812
    .local v8, "size":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAnrCapacityFree size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2814
    add-int/lit8 v9, v6, 0x1

    if-ge v8, v9, :cond_4

    .line 2815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAnrCapacityFree: anrRecNum out of size: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2816
    return v4

    .line 2824
    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "anrFileId":I
    .end local v7    # "sizeInfo":[I
    .end local v8    # "size":I
    :cond_4
    nop

    .line 2826
    return v1

    .line 2798
    :cond_5
    :goto_0
    const-string v1, "isAnrCapacityFree: mAnrFileSize is empty"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2799
    return v4

    .line 2821
    :catch_0
    move-exception v1

    .line 2822
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAnrCapacityFree exception:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    return v4

    .line 2818
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2819
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v5, "isAnrCapacityFree Index out of bounds."

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    return v4

    .line 2829
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "pbrRecNum":I
    .end local v6    # "anrRecNum":I
    :cond_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2830
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p3, v3, :cond_8

    .line 2831
    :cond_7
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    add-int/lit8 v5, p3, 0x1

    const/16 v6, 0x1a

    .line 2832
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2831
    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2835
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2838
    goto :goto_1

    .line 2836
    :catch_2
    move-exception v3

    .line 2837
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in isAnrCapacityFree"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2842
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    .line 2843
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v1

    if-lez v2, :cond_9

    .line 2844
    return v1

    .line 2846
    :cond_9
    return v4

    .line 2840
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 2785
    :cond_a
    :goto_2
    return v1
.end method

.method public blacklist isPbrExsit()Z
    .locals 2

    .line 5398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPbrExsit: mIsPbrPresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5399
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isUsimPhbEfAndNeedReset(I)Z
    .locals 7
    .param p1, "fileId"    # I

    .line 5310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUsimPhbEfAndNeedReset, fileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5312
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 5317
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5319
    .local v0, "numRecs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 5320
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v3

    .line 5321
    .local v3, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v4, 0xc0

    .local v4, "j":I
    :goto_1
    const/16 v5, 0xcb

    if-gt v4, v5, :cond_4

    .line 5322
    const/16 v6, 0xc5

    if-eq v4, v6, :cond_2

    const/16 v6, 0xc9

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 5326
    :cond_1
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v5

    if-ne p1, v5, :cond_3

    .line 5327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsimPhbEfAndNeedReset, return true with EF: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5328
    const/4 v1, 0x1

    return v1

    .line 5324
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsimPhbEfAndNeedReset, not reset EF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5325
    nop

    .line 5321
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5319
    .end local v3    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5333
    .end local v2    # "i":I
    :cond_5
    const-string v2, "isUsimPhbEfAndNeedReset, return false."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5334
    return v1

    .line 5313
    .end local v0    # "numRecs":I
    :cond_6
    :goto_3
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v2, "isUsimPhbEfAndNeedReset, No PBR files"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5314
    return v1
.end method

.method public blacklist loadEfFilesFromUsim(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
    .local v0, "prevTime":J
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    .line 295
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v4, :cond_0

    .line 297
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshCache:Z

    .line 298
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->refreshCache()V

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v2

    return-object v3

    .line 303
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    monitor-exit v2

    return-object v5

    .line 307
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadEfFilesFromUsim, mPbrNeedNotify ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 308
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 309
    :cond_3
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 310
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readPbrFileAndWait()V

    .line 313
    :cond_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_5

    .line 331
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadEfFilesFromUsim mPbrNeedNotify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 333
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-gez v4, :cond_6

    .line 334
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEmailRecordSize()V

    .line 337
    :cond_6
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    if-gez v4, :cond_7

    .line 338
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAnrRecordSize()V

    .line 341
    :cond_7
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v4

    const/16 v5, 0xc0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 342
    .local v4, "adnEf":I
    if-lez v4, :cond_8

    .line 343
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v5

    .line 344
    .local v5, "size":[I
    if-eqz v5, :cond_8

    array-length v7, v5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 345
    const/4 v7, 0x2

    aget v7, v5, v7

    iput v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    .line 349
    .end local v5    # "size":[I
    :cond_8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    const/16 v7, 0xc3

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 350
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v5

    .line 350
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    .line 354
    :cond_9
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 356
    .local v5, "numRecs":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 357
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_a

    .line 358
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 359
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAdnFileAndWaitForUICC(I)V

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_a
    goto :goto_1

    .line 364
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAasFileAndWaitOptmz()V

    .line 365
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAdnFileAndWait(I)Z

    .line 368
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 369
    const-string v3, "loadEfFilesFromUsim mPhoneBookRecords Empty"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v2

    return-object v3

    .line 375
    :cond_c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 376
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v5, :cond_e

    .line 381
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isSupportSne()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 382
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readSneFileAndWait(I)V

    .line 385
    :cond_d
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 386
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    :cond_e
    goto :goto_3

    .line 390
    :cond_f
    const-string v3, "loadEfFilesFromUsim Speed up read begin"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readSneFileAndWaitOptmz()V

    .line 392
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAnrFileAndWaitOptmz()V

    .line 393
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEmailFileAndWaitOptmz()V

    .line 394
    const-string v3, "loadEfFilesFromUsim Speed up read end"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 397
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readGrpIdsAndWait()V

    .line 399
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    .line 400
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 403
    .end local v4    # "adnEf":I
    .end local v5    # "numRecs":I
    :cond_10
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 411
    .local v2, "endTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadEfFilesFromUsim Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " AppType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 412
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 413
    .end local v2    # "endTime":J
    goto :goto_4

    .line 414
    :cond_11
    const-string v2, "loadEfFilesFromUsim end"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 417
    :goto_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v2

    .line 316
    :cond_12
    :goto_5
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    if-nez v4, :cond_14

    .line 317
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAdnFileAndWait(I)Z

    move-result v4

    if-ne v6, v4, :cond_13

    .line 318
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 319
    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 320
    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 321
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 323
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadEfFilesFromUsim getRecordIfLoaded EF_ADN pbrP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/16 v4, 0x6f3a

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getRecordsIfLoaded(ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 327
    :cond_14
    const-string v3, "loadEfFilesFromUsim phb not ready and Reset"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 328
    monitor-exit v2

    return-object v5

    .line 403
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public blacklist loadPBRFiles()V
    .locals 2

    .line 4512
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4513
    return-void

    .line 4516
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4519
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 4520
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 4521
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readPbrFileAndWait()V

    .line 4523
    :cond_2
    monitor-exit v0

    .line 4524
    return-void

    .line 4523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist moveContactFromGroupsToGroups(I[I[I)Z
    .locals 16
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .line 2483
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2485
    .local v5, "ret":Z
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-eqz v0, :cond_12

    if-lez v2, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v2, v0, :cond_0

    goto/16 :goto_f

    .line 2490
    :cond_0
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2491
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object v8, v0

    .line 2493
    .local v8, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v8, :cond_11

    .line 2496
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v9, 0x7

    aget v0, v0, v9

    move v10, v0

    .line 2497
    .local v10, "grpCount":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v9

    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    if-le v0, v11, :cond_1

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v12

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v9

    :goto_0
    move v9, v0

    .line 2498
    .local v9, "grpMaxCount":I
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 2500
    .local v11, "grpIds":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " moveContactFromGroupsToGroups the adn index is "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " original grpIds is "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", fromGrpIdList: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    if-nez v3, :cond_2

    const-string v12, "null"

    goto :goto_1

    :cond_2
    move-object v12, v3

    :goto_1
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", toGrpIdList: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2504
    if-nez v4, :cond_3

    const-string v12, "null"

    goto :goto_2

    :cond_3
    move-object v12, v4

    :goto_2
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2500
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2506
    new-array v0, v10, [I

    move-object v12, v0

    .line 2508
    .local v12, "grpIdIntArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v10, :cond_4

    .line 2509
    aput v6, v12, v0

    .line 2508
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2513
    .end local v0    # "i":I
    :cond_4
    if-eqz v11, :cond_5

    .line 2514
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    .line 2515
    .local v13, "grpIdStrArray":[Ljava/lang/String;
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_4
    if-ge v14, v9, :cond_5

    .line 2521
    :try_start_1
    aget-object v0, v13, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v12, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2527
    goto :goto_5

    .line 2525
    :catch_0
    move-exception v0

    .line 2526
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v15, "MtkUsimPhoneBookManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto :goto_4

    .line 2533
    .end local v13    # "grpIdStrArray":[Ljava/lang/String;
    .end local v14    # "i":I
    :cond_5
    if-eqz v3, :cond_8

    .line 2534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v6, v3

    if-ge v0, v6, :cond_8

    .line 2535
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7
    if-ge v6, v9, :cond_7

    .line 2536
    aget v13, v12, v6

    aget v14, v3, v0

    if-ne v13, v14, :cond_6

    .line 2537
    const/4 v13, 0x0

    aput v13, v12, v6

    .line 2535
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2534
    .end local v6    # "j":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2544
    .end local v0    # "i":I
    :cond_8
    if-eqz v4, :cond_10

    .line 2545
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    array-length v6, v4

    if-ge v0, v6, :cond_10

    .line 2546
    const/4 v6, 0x0

    .line 2547
    .local v6, "bEmpty":Z
    const/4 v13, 0x0

    .line 2550
    .local v13, "bExist":Z
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_9
    if-ge v14, v9, :cond_a

    .line 2551
    aget v15, v12, v14

    aget v3, v4, v0

    if-ne v15, v3, :cond_9

    .line 2552
    const/4 v13, 0x1

    .line 2553
    goto :goto_a

    .line 2550
    :cond_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    goto :goto_9

    .line 2557
    .end local v14    # "k":I
    :cond_a
    :goto_a
    const/4 v3, 0x1

    if-ne v13, v3, :cond_b

    .line 2558
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v14, "moveContactFromGroupsToGroups the adn isalready in the group."

    invoke-static {v3, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    goto :goto_d

    .line 2564
    :cond_b
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_b
    if-ge v3, v9, :cond_e

    .line 2565
    aget v14, v12, v3

    if-eqz v14, :cond_d

    aget v14, v12, v3

    const/16 v15, 0xff

    if-ne v14, v15, :cond_c

    goto :goto_c

    .line 2564
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2566
    :cond_d
    :goto_c
    const/4 v6, 0x1

    .line 2567
    aget v14, v4, v0

    aput v14, v12, v3

    .line 2572
    .end local v3    # "j":I
    :cond_e
    if-nez v6, :cond_f

    .line 2573
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v14, "moveContactFromGroupsToGroups no empty to add."

    invoke-static {v3, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    monitor-exit v7

    const/4 v3, 0x0

    return v3

    .line 2545
    .end local v6    # "bEmpty":Z
    .end local v13    # "bExist":Z
    :cond_f
    :goto_d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    goto :goto_8

    .line 2579
    .end local v0    # "i":I
    :cond_10
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xc

    .line 2580
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2579
    invoke-virtual {v0, v2, v12, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2582
    :try_start_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2585
    goto :goto_e

    .line 2583
    :catch_1
    move-exception v0

    .line 2584
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in moveContactFromGroupsToGroups"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_e
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v0, :cond_11

    .line 2588
    const/4 v5, 0x1

    .line 2589
    add-int/lit8 v0, v2, -0x1

    invoke-direct {v1, v0, v2, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveContactFromGroupsToGroups the adn index is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2590
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2592
    const/4 v0, -0x1

    iput v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2595
    .end local v8    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "grpCount":I
    .end local v11    # "grpIds":Ljava/lang/String;
    .end local v12    # "grpIdIntArray":[I
    :cond_11
    monitor-exit v7

    .line 2596
    return v5

    .line 2595
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 2486
    :cond_12
    :goto_f
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "moveContactFromGroupsToGroups no records or invalid index."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/4 v3, 0x0

    return v3
.end method

.method public blacklist readEFLinearRecordSize(I)[I
    .locals 6
    .param p1, "fileId"    # I

    .line 5160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readEFLinearRecordSize fileid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",recordNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5163
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5164
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5166
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5167
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 5169
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    .line 5170
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5173
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5176
    goto :goto_0

    .line 5174
    :catch_0
    move-exception v2

    .line 5175
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readEFLinearRecordSize"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5176
    nop

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 5178
    :cond_0
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v4, "readEFLinearRecordSize-IccFileHandler is null"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5181
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v2, :cond_1

    .line 5182
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    .line 5185
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 5187
    .local v2, "recordSize":[I
    :goto_1
    if-eqz v2, :cond_3

    .line 5188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEFLinearRecordSize fileid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",count:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",recordNum:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 5192
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readEFLinearRecordSize fileid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",recordSize: null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5195
    :goto_2
    monitor-exit v1

    return-object v2

    .line 5196
    .end local v2    # "recordSize":[I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public declared-synchronized blacklist removeContactFromGroup(II)Z
    .locals 13
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    monitor-enter p0

    .line 2345
    const/4 v0, 0x0

    .line 2347
    .local v0, "ret":Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContactFromGroup begin adnIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to grp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2349
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-lez p1, :cond_6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto/16 :goto_5

    .line 2354
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2358
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2364
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2366
    if-eqz v3, :cond_5

    .line 2367
    :try_start_2
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v4

    .line 2368
    .local v4, "grpList":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 2369
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, " the adn is not in any group. "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v2

    .line 2373
    :cond_1
    :try_start_3
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2374
    .local v5, "grpIds":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2375
    .local v6, "bExist":Z
    const/4 v7, -0x1

    .line 2376
    .local v7, "nOrder":I
    array-length v8, v5

    new-array v8, v8, [I

    .line 2378
    .local v8, "grpIdArray":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ge v9, v10, :cond_3

    .line 2384
    :try_start_4
    aget-object v10, v5, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    .line 2385
    aget v10, v8, v9

    if-ne p2, v10, :cond_2

    .line 2386
    const/4 v6, 0x1

    .line 2387
    move v7, v9

    .line 2388
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " removeContactFromGroup the adn is in the group. i is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2395
    :cond_2
    goto :goto_1

    .line 2393
    :catch_0
    move-exception v10

    .line 2394
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v11, "MtkUsimPhoneBookManager"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2399
    .end local v9    # "i":I
    :cond_3
    if-eqz v6, :cond_4

    if-ltz v7, :cond_4

    .line 2400
    aput v2, v8, v7

    .line 2401
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v9, 0xc

    .line 2402
    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2401
    invoke-virtual {v2, p1, v8, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2404
    :try_start_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2407
    goto :goto_2

    .line 2405
    :catch_1
    move-exception v2

    .line 2406
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v9, "MtkUsimPhoneBookManager"

    const-string v10, "Interrupted Exception in removeContactFromGroup"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v2, :cond_5

    .line 2410
    const/4 v0, 0x1

    .line 2411
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2412
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_3

    .line 2416
    :cond_4
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v9, " removeContactFromGroup the adn is not in the group. "

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2419
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "bExist":Z
    .end local v7    # "nOrder":I
    .end local v8    # "grpIdArray":[I
    :cond_5
    :goto_3
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2420
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContactFromGroup end adnIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to grp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2421
    monitor-exit p0

    return v0

    .line 2419
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 2359
    :catch_2
    move-exception v3

    .line 2360
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    const-string v4, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeContactFromGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2362
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2360
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return v2

    .line 2419
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_1
    move-exception v2

    :goto_4
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v2

    .line 2350
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :cond_6
    :goto_5
    const-string v1, "MtkUsimPhoneBookManager"

    const-string v3, "removeContactFromGroup no records or invalid index."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2351
    monitor-exit p0

    return v2

    .line 2344
    .end local v0    # "ret":Z
    .end local p1    # "adnIndex":I
    .end local p2    # "grpIndex":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist removeContactGroup(I)Z
    .locals 11
    .param p1, "adnIndex"    # I

    .line 2605
    const/4 v0, 0x0

    .line 2607
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContactsGroup adnIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2609
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 2613
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2617
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2623
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2625
    if-nez v3, :cond_1

    .line 2626
    :try_start_1
    monitor-exit v1

    return v0

    .line 2629
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeContactsGroup rec is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v4

    .line 2633
    .local v4, "grpList":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2634
    monitor-exit v1

    return v0

    .line 2637
    :cond_2
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2638
    .local v5, "grpIds":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2640
    .local v6, "hasGroup":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v7, v8, :cond_4

    .line 2646
    :try_start_2
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2647
    .local v8, "value":I
    if-lez v8, :cond_3

    const/16 v9, 0xff

    if-ge v8, v9, :cond_3

    .line 2648
    const/4 v6, 0x1

    .line 2649
    goto :goto_2

    .line 2656
    .end local v8    # "value":I
    :cond_3
    goto :goto_1

    .line 2654
    :catch_0
    move-exception v8

    .line 2655
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v9, "MtkUsimPhoneBookManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2660
    .end local v7    # "i":I
    :cond_4
    :goto_2
    if-eqz v6, :cond_6

    .line 2661
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    new-array v8, v2, [I

    const/16 v9, 0xc

    .line 2662
    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2661
    invoke-virtual {v7, p1, v8, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2665
    :try_start_4
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2668
    goto :goto_3

    .line 2666
    :catch_1
    move-exception v7

    .line 2667
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in removeContactGroup"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iget v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v7, :cond_6

    .line 2671
    const/4 v0, 0x1

    .line 2672
    array-length v7, v5

    new-array v7, v7, [I

    .line 2674
    .local v7, "grpIdArray":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v9, v5

    if-ge v8, v9, :cond_5

    .line 2675
    aput v2, v7, v8

    .line 2674
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2677
    .end local v8    # "i":I
    :cond_5
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p1, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " removeContactGroup the adn index is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2678
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2680
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2683
    .end local v7    # "grpIdArray":[I
    :cond_6
    monitor-exit v1

    return v0

    .line 2684
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "hasGroup":Z
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 2618
    :catch_2
    move-exception v3

    .line 2619
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeContactGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2621
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2619
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    monitor-exit v1

    return v2

    .line 2684
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2610
    :cond_7
    :goto_6
    return v0
.end method

.method public blacklist removeUsimAasById(II)Z
    .locals 12
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeUsimAasById by id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pbrIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mPbrNeedNotify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4262
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4264
    :cond_0
    move v0, p1

    .line 4265
    .local v0, "aasIndex":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    .line 4267
    .local v2, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-eqz v2, :cond_7

    const/16 v3, 0xc7

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 4272
    :cond_1
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    .line 4273
    .local v3, "efid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeUsimAasById result,efid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4275
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_6

    .line 4276
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4277
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v5

    .line 4278
    .local v5, "len":I
    new-array v6, v5, [B

    .line 4280
    .local v6, "aasString":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 4281
    const/4 v8, -0x1

    aput-byte v8, v6, v7

    .line 4280
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4284
    .end local v7    # "i":I
    :cond_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4286
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10, v0, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4288
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4291
    goto :goto_1

    .line 4289
    :catch_0
    move-exception v8

    .line 4290
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v9, "MtkUsimPhoneBookManager"

    const-string v11, "Interrupted Exception in removesimAasById"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4294
    iget-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 4296
    .local v7, "ar":Landroid/os/AsyncResult;
    if-eqz v7, :cond_4

    iget-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    goto :goto_2

    .line 4306
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeUsimAasById exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MtkUsimPhoneBookManager"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    return v1

    .line 4297
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4298
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    .line 4299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove aas done "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4300
    add-int/lit8 v8, v0, -0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4302
    :cond_5
    const-string v8, "remove aas mAasForAnr is null "

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4304
    :goto_3
    return v10

    .line 4292
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 4310
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "len":I
    .end local v6    # "aasString":[B
    :cond_6
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "removeUsimAasById-IccFileHandler is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    return v1

    .line 4268
    .end local v3    # "efid":I
    :cond_7
    :goto_4
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "removeUsimAasById-PBR have no AAS EF file"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    return v1
.end method

.method public declared-synchronized blacklist removeUsimGroupById(I)Z
    .locals 7
    .param p1, "nGasId"    # I

    monitor-enter p0

    .line 2083
    const/4 v0, 0x0

    .line 2085
    .local v0, "ret":Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeUsimGroupById nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2087
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2088
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 2091
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 2093
    .local v2, "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    if-eqz v2, :cond_1

    .line 2094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeUsimGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2097
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2098
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0xd

    .line 2099
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2098
    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2102
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2105
    goto :goto_0

    .line 2103
    :catch_0
    move-exception v3

    .line 2104
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in removeUsimGroupById"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v3, :cond_4

    .line 2108
    const/4 v0, 0x1

    .line 2109
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 2110
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2113
    :cond_2
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "removeUsimGroupById fail: this gas doesn\'t exist "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 2116
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2089
    :cond_3
    :goto_1
    :try_start_5
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "removeUsimGroupById fail "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2117
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeUsimGroupById result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2118
    monitor-exit p0

    return v0

    .line 2116
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_1
    move-exception v2

    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2082
    .end local v0    # "ret":Z
    .end local p1    # "nGasId":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist reset()V
    .locals 5

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    .line 256
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 258
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 259
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshCache:Z

    .line 262
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 263
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 264
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 265
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 266
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 267
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    .line 268
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    .line 269
    const/16 v2, 0x190

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    .line 270
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    .line 271
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    .line 272
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    .line 273
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    const/4 v4, -0x1

    if-ge v2, v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aput v4, v3, v2

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "i":I
    :cond_0
    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 277
    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 278
    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 279
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    .line 280
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    .line 281
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 282
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset finished, mPbrNeedNotify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 288
    return-void

    .line 285
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist updateAdnAas(II)Z
    .locals 5
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .line 4450
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v0, v1

    .line 4451
    .local v0, "pbrRecNum":I
    add-int/lit8 v2, p1, -0x1

    rem-int/2addr v2, v1

    .line 4455
    .local v2, "index":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4461
    .local v1, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 4463
    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 4465
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 4466
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 4467
    .local v4, "anr":Ljava/lang/String;
    invoke-virtual {p0, v4, p1, v3, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V

    .line 4465
    .end local v4    # "anr":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4470
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 4456
    .end local v1    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_0
    move-exception v1

    .line 4457
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateADNAAS: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4459
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4457
    const-string v4, "MtkUsimPhoneBookManager"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    const/4 v3, 0x0

    return v3
.end method

.method public blacklist updateAnrByAdnIndex(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V
    .locals 26
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 2862
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    add-int/lit8 v0, v11, -0x1

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v14, v0, v3

    .line 2863
    .local v14, "pbrRecNum":I
    add-int/lit8 v0, v11, -0x1

    rem-int v15, v0, v3

    .line 2865
    .local v15, "anrRecNum":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 2869
    :cond_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v10

    .line 2871
    .local v10, "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v10, :cond_1

    .line 2872
    const-string v0, "updateAnrByAdnIndex: No anr tag in pbr record 0"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2873
    return-void

    .line 2876
    :cond_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v20, v10

    goto/16 :goto_7

    .line 2881
    :cond_2
    mul-int/lit16 v0, v12, 0x100

    add-int/lit16 v0, v0, 0xc4

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 2883
    .local v9, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v9, :cond_3

    .line 2884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAnrByAdnIndex no efFile anrIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2885
    return-void

    .line 2888
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAnrByAdnIndex begin effile "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2890
    const/4 v0, 0x0

    .line 2891
    .local v0, "oldAnr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2893
    .local v3, "oldAas":I
    if-eqz v13, :cond_4

    .line 2894
    invoke-virtual {v13, v12}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2895
    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v3

    move-object/from16 v16, v0

    move/from16 v17, v3

    goto :goto_0

    .line 2893
    :cond_4
    move-object/from16 v16, v0

    move/from16 v17, v3

    .line 2898
    .end local v0    # "oldAnr":Ljava/lang/String;
    .end local v3    # "oldAas":I
    .local v16, "oldAnr":Ljava/lang/String;
    .local v17, "oldAas":I
    :goto_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v0

    const/16 v3, 0x9

    if-nez v0, :cond_7

    .line 2899
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 2900
    .local v4, "efid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrByAdnIndex recId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " EF_ANR id is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2901
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2900
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2903
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v5, 0xa9

    if-ne v0, v5, :cond_5

    .line 2904
    invoke-direct {v1, v2, v11, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateType2Anr(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V

    .line 2905
    return-void

    .line 2910
    :cond_5
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2918
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v5

    .line 2919
    .local v5, "aas":I
    iget v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    invoke-direct {v1, v2, v6, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v6

    .line 2921
    .local v6, "data":[B
    if-eqz v6, :cond_6

    .line 2922
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v20, v15, 0x1

    const/16 v22, 0x0

    .line 2923
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 2922
    move-object/from16 v18, v7

    move/from16 v19, v4

    move-object/from16 v21, v6

    invoke-virtual/range {v18 .. v23}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2925
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "efid":I
    .end local v5    # "aas":I
    .end local v6    # "data":[B
    :cond_6
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    goto/16 :goto_4

    .line 2911
    .restart local v4    # "efid":I
    :catch_0
    move-exception v0

    .line 2912
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrByAdnIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2914
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "index is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2912
    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    return-void

    .line 2929
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "efid":I
    :cond_7
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v0

    .line 2935
    .local v18, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2937
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v8

    .line 2938
    .local v8, "aas":I
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2940
    .local v7, "msg":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2941
    const/4 v0, 0x0

    if-eqz v2, :cond_9

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    goto :goto_1

    .line 2951
    :cond_8
    invoke-direct {v1, v2, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildAnrRecordOptmz(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    .line 2952
    .local v19, "param":[Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x0

    add-int/lit8 v5, v12, 0x1

    aget-object v0, v19, v0

    const/16 v20, 0x1

    aget-object v20, v19, v20

    const/16 v21, 0x2

    aget-object v21, v19, v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v22, v6

    move/from16 v6, p2

    move-object/from16 v23, v7

    .end local v7    # "msg":Landroid/os/Message;
    .local v23, "msg":Landroid/os/Message;
    move-object v7, v0

    move/from16 v24, v8

    .end local v8    # "aas":I
    .local v24, "aas":I
    move-object/from16 v8, v20

    move-object/from16 v25, v9

    .end local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v25, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    move-object/from16 v9, v21

    move-object/from16 v20, v10

    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .local v20, "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    move-object/from16 v10, v23

    :try_start_3
    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v5, v23

    goto :goto_2

    .line 2960
    .end local v19    # "param":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v5, v23

    move-object/from16 v3, v25

    goto/16 :goto_6

    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v23    # "msg":Landroid/os/Message;
    .end local v24    # "aas":I
    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v8    # "aas":I
    .restart local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v24, v8

    move-object/from16 v20, v10

    move-object v5, v7

    move-object v3, v9

    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "aas":I
    .end local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "msg":Landroid/os/Message;
    .restart local v24    # "aas":I
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    goto :goto_6

    .line 2941
    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v23    # "msg":Landroid/os/Message;
    .end local v24    # "aas":I
    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v8    # "aas":I
    .restart local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_9
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    .line 2942
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "aas":I
    .end local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "msg":Landroid/os/Message;
    .restart local v24    # "aas":I
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_1
    if-eqz v16, :cond_b

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v5, v23

    move-object/from16 v3, v25

    goto :goto_5

    .line 2945
    :cond_a
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    add-int/lit8 v4, v12, 0x1

    move-object/from16 v5, v23

    .end local v23    # "msg":Landroid/os/Message;
    .local v5, "msg":Landroid/os/Message;
    :try_start_5
    invoke-virtual {v3, v0, v4, v11, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2956
    :goto_2
    :try_start_6
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2959
    goto :goto_3

    .line 2960
    :catchall_2
    move-exception v0

    move-object/from16 v3, v25

    goto :goto_6

    .line 2957
    :catch_1
    move-exception v0

    .line 2958
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateAnrByAdnIndexOptmz"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2962
    .end local v5    # "msg":Landroid/os/Message;
    .end local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v24    # "aas":I
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAnrByAdnIndex end effile "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v3, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2963
    return-void

    .line 2960
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v24    # "aas":I
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :catchall_3
    move-exception v0

    move-object/from16 v3, v25

    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    goto :goto_6

    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v23    # "msg":Landroid/os/Message;
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :catchall_4
    move-exception v0

    move-object/from16 v5, v23

    move-object/from16 v3, v25

    .end local v23    # "msg":Landroid/os/Message;
    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v5    # "msg":Landroid/os/Message;
    goto :goto_6

    .line 2942
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v23    # "msg":Landroid/os/Message;
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_b
    move-object/from16 v5, v23

    move-object/from16 v3, v25

    .line 2943
    .end local v23    # "msg":Landroid/os/Message;
    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_5
    :try_start_8
    monitor-exit v22

    return-void

    .line 2960
    :catchall_5
    move-exception v0

    :goto_6
    monitor-exit v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 2930
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v24    # "aas":I
    .restart local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :catch_2
    move-exception v0

    move-object v3, v9

    move-object/from16 v20, v10

    .line 2931
    .end local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrByAdnIndexOptmz: mPhoneBookRecords IndexOutOfBoundsException size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2932
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2931
    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    return-void

    .line 2876
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v16    # "oldAnr":Ljava/lang/String;
    .end local v17    # "oldAas":I
    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_c
    move-object/from16 v20, v10

    .line 2877
    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :goto_7
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "updateAnrByAdnIndex: mPhoneBookRecords is empty"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    return-void

    .line 2866
    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_d
    :goto_8
    return-void
.end method

.method public blacklist updateContactToGroups(I[I)Z
    .locals 9
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .line 2425
    const/4 v0, 0x0

    .line 2427
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-lez p1, :cond_5

    .line 2428
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2433
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateContactToGroups begin grpIdList is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to grp list count "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2436
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2437
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 2439
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v3, :cond_4

    .line 2440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateContactToGroups the adn index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " old grpList is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2440
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2443
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    .line 2445
    .local v4, "grpCount":I
    array-length v5, p2

    if-le v5, v4, :cond_1

    .line 2446
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "updateContactToGroups length of grpIdList > grpCount."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    monitor-exit v1

    return v2

    .line 2450
    :cond_1
    new-array v5, v4, [I

    .line 2452
    .local v5, "grpIdArray":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 2453
    array-length v7, p2

    if-ge v6, v7, :cond_2

    aget v7, p2, v6

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    aput v7, v5, v6

    .line 2454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateContactToGroups i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",grpIdArray["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2452
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2457
    .end local v6    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0xc

    .line 2458
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2457
    invoke-virtual {v2, p1, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2460
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2463
    goto :goto_2

    .line 2461
    :catch_0
    move-exception v2

    .line 2462
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "MtkUsimPhoneBookManager"

    const-string v7, "Interrupted Exception in updateContactToGroups"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v2, :cond_4

    .line 2466
    const/4 v0, 0x1

    .line 2467
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p1, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateContactToGroups the adn index is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2468
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2470
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2473
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "grpCount":I
    .end local v5    # "grpIdArray":[I
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContactToGroups end grpIdList is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to grp list count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2477
    return v0

    .line 2473
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2429
    :cond_5
    :goto_3
    const-string v1, "MtkUsimPhoneBookManager"

    const-string v3, "updateContactToGroups no records or invalid index."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    return v2
.end method

.method public blacklist updateEmailsByAdnIndex([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .locals 25
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3272
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p2

    add-int/lit8 v0, v10, -0x1

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v11, v0, v3

    .line 3273
    .local v11, "pbrRecNum":I
    add-int/lit8 v0, v10, -0x1

    rem-int v12, v0, v3

    .line 3276
    .local v12, "adnRecNum":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v13, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_c

    .line 3280
    :cond_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v14

    .line 3282
    .local v14, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_b

    .line 3286
    :cond_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_a

    .line 3290
    :cond_2
    const/16 v0, 0xca

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3291
    .local v15, "efFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v15, :cond_3

    .line 3292
    const-string v0, "updateEmailsByAdnIndex: No email tag in pbr record 0"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3293
    return v13

    .line 3296
    :cond_3
    const/4 v0, 0x0

    .line 3297
    .local v0, "oldEmails":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 3299
    .local v3, "oldEmail":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 3300
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 3299
    :cond_4
    move-object v9, v0

    .line 3303
    .end local v0    # "oldEmails":[Ljava/lang/String;
    .local v9, "oldEmails":[Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_5

    array-length v0, v9

    if-eqz v0, :cond_5

    aget-object v0, v9, v13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3304
    aget-object v3, v9, v13

    move-object v8, v3

    goto :goto_1

    .line 3307
    :cond_5
    move-object v8, v3

    .end local v3    # "oldEmail":Ljava/lang/String;
    .local v8, "oldEmail":Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v22

    .line 3308
    .local v22, "efid":I
    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v3, 0xa9

    const/4 v4, 0x1

    if-ne v0, v3, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v13

    :goto_2
    move v6, v0

    .line 3309
    .local v6, "emailType2":Z
    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v23

    .line 3311
    .local v23, "emailType2Index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmailsByAdnIndex: pbrrecNum is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " EF_EMAIL id is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3312
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3311
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3314
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_c

    .line 3315
    if-eqz v6, :cond_7

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 3316
    invoke-direct {v1, v2, v10, v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateType2Email([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)I

    move-result v0

    return v0

    .line 3318
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmailsByAdnIndex file: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3320
    if-eqz v2, :cond_9

    array-length v0, v2

    if-gtz v0, :cond_8

    goto :goto_3

    :cond_8
    aget-object v0, v2, v13

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v0, 0x0

    .line 3322
    .local v0, "email":Ljava/lang/String;
    :goto_4
    iget v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v4, :cond_a

    .line 3323
    const/16 v3, -0x32

    return v3

    .line 3326
    :cond_a
    invoke-direct {v1, v0, v10, v4, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;IIZ)[B

    move-result-object v4

    .line 3328
    .local v4, "data":[B
    if-nez v4, :cond_b

    .line 3329
    const/16 v3, -0x28

    return v3

    .line 3332
    :cond_b
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v18, v12, 0x1

    const/16 v20, 0x0

    .line 3333
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 3332
    move-object/from16 v16, v5

    move/from16 v17, v22

    move-object/from16 v19, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3334
    return v13

    .line 3337
    .end local v0    # "email":Ljava/lang/String;
    .end local v4    # "data":[B
    :cond_c
    const/4 v5, 0x1

    .line 3338
    .local v5, "emailIndex":I
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3340
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3341
    if-eqz v2, :cond_f

    :try_start_0
    array-length v0, v2

    if-eqz v0, :cond_f

    aget-object v0, v2, v13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v17, v9

    goto/16 :goto_6

    .line 3348
    :cond_d
    aget-object v0, v2, v13

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_e

    .line 3349
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v13

    .line 3360
    :catchall_0
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v17, v9

    move/from16 v24, v5

    move-object v5, v3

    move/from16 v3, v24

    goto/16 :goto_9

    .line 3351
    :cond_e
    :try_start_2
    aget-object v0, v2, v13

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v7

    move-object v7, v0

    .line 3352
    .local v7, "temp":Ljava/lang/String;
    :try_start_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v4, 0x1

    const/16 v17, 0x0

    move-object/from16 v18, v3

    .end local v3    # "msg":Landroid/os/Message;
    .local v18, "msg":Landroid/os/Message;
    move-object v3, v0

    move/from16 v19, v5

    .end local v5    # "emailIndex":I
    .local v19, "emailIndex":I
    move/from16 v20, v6

    .end local v6    # "emailType2":Z
    .local v20, "emailType2":Z
    move/from16 v6, p2

    move-object/from16 v21, v8

    .end local v8    # "oldEmail":Ljava/lang/String;
    .local v21, "oldEmail":Ljava/lang/String;
    move-object/from16 v8, v17

    move-object/from16 v17, v9

    .end local v9    # "oldEmails":[Ljava/lang/String;
    .local v17, "oldEmails":[Ljava/lang/String;
    move-object/from16 v9, v18

    :try_start_4
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v5, v18

    move/from16 v3, v19

    goto :goto_7

    .line 3360
    .end local v7    # "temp":Ljava/lang/String;
    .end local v17    # "oldEmails":[Ljava/lang/String;
    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "emailIndex":I
    .end local v20    # "emailType2":Z
    .end local v21    # "oldEmail":Ljava/lang/String;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v5    # "emailIndex":I
    .restart local v6    # "emailType2":Z
    .restart local v8    # "oldEmail":Ljava/lang/String;
    .restart local v9    # "oldEmails":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v20, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v16, v7

    :goto_5
    move-object/from16 v21, v8

    move-object/from16 v17, v9

    move/from16 v24, v5

    move-object v5, v3

    move/from16 v3, v24

    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "emailIndex":I
    .end local v6    # "emailType2":Z
    .end local v8    # "oldEmail":Ljava/lang/String;
    .end local v9    # "oldEmails":[Ljava/lang/String;
    .restart local v17    # "oldEmails":[Ljava/lang/String;
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v19    # "emailIndex":I
    .restart local v20    # "emailType2":Z
    .restart local v21    # "oldEmail":Ljava/lang/String;
    goto :goto_9

    .line 3341
    .end local v17    # "oldEmails":[Ljava/lang/String;
    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "emailIndex":I
    .end local v20    # "emailType2":Z
    .end local v21    # "oldEmail":Ljava/lang/String;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v5    # "emailIndex":I
    .restart local v6    # "emailType2":Z
    .restart local v8    # "oldEmail":Ljava/lang/String;
    .restart local v9    # "oldEmails":[Ljava/lang/String;
    :cond_f
    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v17, v9

    .line 3342
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "emailIndex":I
    .end local v6    # "emailType2":Z
    .end local v8    # "oldEmail":Ljava/lang/String;
    .end local v9    # "oldEmails":[Ljava/lang/String;
    .restart local v17    # "oldEmails":[Ljava/lang/String;
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v19    # "emailIndex":I
    .restart local v20    # "emailType2":Z
    .restart local v21    # "oldEmail":Ljava/lang/String;
    :goto_6
    if-nez v21, :cond_10

    .line 3343
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return v13

    .line 3360
    :catchall_3
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v3, v19

    goto :goto_9

    .line 3346
    :cond_10
    :try_start_5
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v5, v18

    move/from16 v3, v19

    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "emailIndex":I
    .local v3, "emailIndex":I
    .local v5, "msg":Landroid/os/Message;
    :try_start_6
    invoke-virtual {v0, v4, v3, v10, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 3356
    :goto_7
    :try_start_7
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 3359
    goto :goto_8

    .line 3357
    :catch_0
    move-exception v0

    .line 3358
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in updateEmailsByAdnIndex"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_8
    monitor-exit v16

    .line 3361
    return v13

    .line 3360
    :catchall_4
    move-exception v0

    goto :goto_9

    .end local v3    # "emailIndex":I
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v19    # "emailIndex":I
    :catchall_5
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v3, v19

    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "emailIndex":I
    .restart local v3    # "emailIndex":I
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_9
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 3287
    .end local v3    # "emailIndex":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v15    # "efFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v17    # "oldEmails":[Ljava/lang/String;
    .end local v20    # "emailType2":Z
    .end local v21    # "oldEmail":Ljava/lang/String;
    .end local v22    # "efid":I
    .end local v23    # "emailType2Index":I
    :cond_11
    :goto_a
    return v13

    .line 3283
    :cond_12
    :goto_b
    return v13

    .line 3277
    .end local v14    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_13
    :goto_c
    return v13
.end method

.method public blacklist updateSneByAdnIndex(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .locals 19
    .param p1, "sne"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 4673
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSneByAdnIndex begin, adnIndex "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4675
    add-int/lit8 v0, v10, -0x1

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v11, v0, v3

    .line 4676
    .local v11, "pbrRecNum":I
    add-int/lit8 v0, v10, -0x1

    rem-int v12, v0, v3

    .line 4678
    .local v12, "nIapRecNum":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 4682
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 4683
    .local v13, "msg":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v14

    .line 4685
    .local v14, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-eqz v14, :cond_a

    const/16 v0, 0xc3

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_7

    .line 4690
    :cond_1
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    .line 4694
    :cond_2
    const/4 v3, 0x0

    .line 4696
    .local v3, "oldSne":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 4697
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getSne()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_0

    .line 4696
    :cond_3
    move-object v15, v3

    .line 4700
    .end local v3    # "oldSne":Ljava/lang/String;
    .local v15, "oldSne":Ljava/lang/String;
    :goto_0
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4701
    .local v16, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v17

    .line 4702
    .local v17, "efid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSneByAdnIndex: EF_SNE id is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4703
    const/4 v9, 0x1

    .line 4705
    .local v9, "efIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSneByAdnIndex: efIndex is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4707
    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4708
    const/4 v0, 0x0

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v18, v8

    move v2, v9

    goto :goto_1

    .line 4715
    :cond_4
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    .line 4716
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    .line 4728
    :catchall_0
    move-exception v0

    move-object/from16 v18, v8

    move v2, v9

    goto :goto_5

    .line 4718
    :cond_5
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4720
    .local v7, "temp":Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x2

    const/4 v0, 0x0

    move v5, v9

    move/from16 v6, p2

    move-object/from16 v18, v8

    move-object v8, v0

    move v2, v9

    .end local v9    # "efIndex":I
    .local v2, "efIndex":I
    move-object v9, v13

    :try_start_3
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 4728
    .end local v2    # "efIndex":I
    .end local v7    # "temp":Ljava/lang/String;
    .restart local v9    # "efIndex":I
    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    move v2, v9

    .end local v9    # "efIndex":I
    .restart local v2    # "efIndex":I
    goto :goto_5

    .line 4708
    .end local v2    # "efIndex":I
    .restart local v9    # "efIndex":I
    :cond_6
    move-object/from16 v18, v8

    move v2, v9

    .line 4709
    .end local v9    # "efIndex":I
    .restart local v2    # "efIndex":I
    :goto_1
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    .line 4713
    :cond_7
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v10, v13}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4724
    :goto_2
    :try_start_4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4727
    goto :goto_3

    .line 4725
    :catch_0
    move-exception v0

    .line 4726
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateSneByAdnIndex"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSneByAdnIndex end, adnIndex "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4730
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    return v0

    .line 4710
    :cond_8
    :goto_4
    :try_start_6
    monitor-exit v18

    return v0

    .line 4728
    :catchall_2
    move-exception v0

    :goto_5
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 4691
    .end local v2    # "efIndex":I
    .end local v15    # "oldSne":Ljava/lang/String;
    .end local v16    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v17    # "efid":I
    :cond_9
    :goto_6
    return v3

    .line 4686
    :cond_a
    :goto_7
    const-string v0, "updateSneByAdnIndex: No SNE tag in pbr file 0"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4687
    return v3

    .line 4679
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_b
    :goto_8
    return v3
.end method

.method public blacklist updateUsimAas(IILjava/lang/String;)Z
    .locals 22
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .line 4384
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimAas index "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",pbrIndex "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",aasName "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mPbrNeedNotify "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4387
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    return v5

    .line 4389
    :cond_0
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4391
    .local v6, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v2, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v2, v0, :cond_1

    goto/16 :goto_5

    .line 4396
    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 4397
    .local v7, "aas":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUsimAas old aas "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4399
    if-eqz v3, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 4402
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v8

    .line 4403
    .local v8, "limit":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    .line 4405
    .local v9, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateUsimAas aas limit "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4407
    if-le v9, v8, :cond_3

    .line 4408
    return v5

    .line 4411
    :cond_3
    const/4 v10, 0x0

    .line 4412
    .local v10, "offset":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateUsimAas offset "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4413
    add-int v18, v2, v10

    .line 4414
    .local v18, "aasIndex":I
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4415
    .local v19, "temp":Ljava/lang/String;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 4417
    .local v15, "msg":Landroid/os/Message;
    iget-object v14, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    monitor-enter v14

    .line 4418
    :try_start_0
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v14

    move/from16 v14, v18

    move-object/from16 v21, v15

    .end local v15    # "msg":Landroid/os/Message;
    .local v21, "msg":Landroid/os/Message;
    move-object/from16 v15, v19

    move-object/from16 v17, v21

    :try_start_1
    invoke-virtual/range {v11 .. v17}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4420
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4423
    goto :goto_0

    .line 4424
    :catchall_0
    move-exception v0

    move-object/from16 v11, v21

    goto :goto_3

    .line 4421
    :catch_0
    move-exception v0

    .line 4422
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v11, "MtkUsimPhoneBookManager"

    const-string v12, "Interrupted Exception in updateUsimAas"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4426
    move-object/from16 v11, v21

    .end local v21    # "msg":Landroid/os/Message;
    .local v11, "msg":Landroid/os/Message;
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4428
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_5

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_4

    goto :goto_1

    .line 4438
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateUsimAas exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MtkUsimPhoneBookManager"

    invoke-static {v13, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    return v5

    .line 4429
    :cond_5
    :goto_1
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4430
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    .line 4431
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v5, v12, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4432
    const-string v12, "updateUsimAas update mAasForAnr done"

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 4434
    :cond_6
    const-string v12, "updateUsimAas mAasForAnr is null"

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4436
    :goto_2
    const/4 v12, 0x1

    return v12

    .line 4424
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "msg":Landroid/os/Message;
    .restart local v21    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v0

    move-object/from16 v11, v21

    .end local v21    # "msg":Landroid/os/Message;
    .restart local v11    # "msg":Landroid/os/Message;
    goto :goto_3

    .end local v11    # "msg":Landroid/os/Message;
    .restart local v15    # "msg":Landroid/os/Message;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v14

    move-object v11, v15

    .end local v15    # "msg":Landroid/os/Message;
    .restart local v11    # "msg":Landroid/os/Message;
    :goto_3
    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 4400
    .end local v8    # "limit":I
    .end local v9    # "len":I
    .end local v10    # "offset":I
    .end local v11    # "msg":Landroid/os/Message;
    .end local v18    # "aasIndex":I
    .end local v19    # "temp":Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v0

    return v0

    .line 4392
    .end local v7    # "aas":Ljava/lang/String;
    :cond_8
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUsimAas not found aas index "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "MtkUsimPhoneBookManager"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    return v5
.end method

.method public declared-synchronized blacklist updateUsimGroup(ILjava/lang/String;)I
    .locals 10
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    monitor-enter p0

    .line 2211
    const/4 v0, -0x1

    .line 2212
    .local v0, "ret":I
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimGroup nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2214
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2215
    const/4 v2, -0x1

    :try_start_1
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2217
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 2219
    :cond_0
    if-eqz p2, :cond_2

    .line 2220
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2221
    .local v7, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v2, 0xd

    .line 2222
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2221
    move v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2225
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2228
    goto :goto_1

    .line 2226
    :catch_0
    move-exception v2

    .line 2227
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateUsimGroup"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2218
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "updateUsimGroup fail "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_2
    :goto_1
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v2, :cond_4

    .line 2232
    move v0, p1

    .line 2233
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 2234
    .local v2, "uGasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    if-eqz v2, :cond_3

    .line 2235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimGroup index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v2, p2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    goto :goto_2

    .line 2238
    :cond_3
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "updateUsimGroup the entry doesn\'t exist "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    .end local v2    # "uGasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    :goto_2
    goto :goto_3

    .line 2241
    :cond_4
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    move v0, v2

    .line 2243
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2245
    monitor-exit p0

    return v0

    .line 2243
    :catchall_0
    move-exception v2

    :goto_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 2210
    .end local v0    # "ret":I
    .end local p1    # "nGasId":I
    .end local p2    # "grpName":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist updateUsimPhonebookRecordsList(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPhonebookRecordsList update the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th record."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3527
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3528
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3529
    .local v0, "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3530
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 3532
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3533
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 3535
    .end local v0    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_1
    return-void
.end method
