.class public Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
.super Ljava/lang/Object;
.source "MtkEmbmsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;,
        Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;,
        Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;,
        Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;
    }
.end annotation


# static fields
.field private static final blacklist MSG_ID_EVENT_IND:I = 0x2

.field private static final blacklist MSG_ID_EVENT_REQUEST:I = 0x0

.field private static final blacklist MSG_ID_EVENT_RESPONSE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MtkEmbmsAdaptor"

.field private static blacklist sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

.field private blacklist mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "construtor 2 parameter is called - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mContext:Landroid/content/Context;

    .line 84
    new-instance v1, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;-><init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 85
    invoke-static {v1, p1, p2}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->access$000(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 87
    new-instance v1, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;-><init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V

    .line 92
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;->start()V

    .line 94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 96
    .local v1, "numPhones":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 97
    aget-object v3, p2, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 98
    .local v3, "mci":Lcom/mediatek/internal/telephony/MtkRIL;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->setAtInfoNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    .end local v3    # "mci":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_0
    const-string v2, "construtor is called - end"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method public static blacklist getDefault(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 108
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 112
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    return-object v0
.end method

.method private blacklist messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 124
    const-string v0, "UNKNOWN"

    return-object v0

    .line 122
    :cond_0
    const-string v0, "MSG_ID_EVENT_IND"

    return-object v0

    .line 120
    :cond_1
    const-string v0, "MSG_ID_EVENT_RESPONSE"

    return-object v0

    .line 118
    :cond_2
    const-string v0, "MSG_ID_EVENT_REQUEST"

    return-object v0
.end method
