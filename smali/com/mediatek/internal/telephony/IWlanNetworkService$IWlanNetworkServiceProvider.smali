.class Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;
.super Landroid/telephony/NetworkService$NetworkServiceProvider;
.source "IWlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IWlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWlanNetworkServiceProvider"
.end annotation


# static fields
.field public static final blacklist GET_IWLAN_REGISTRATION_STATE_DONE:I = 0x2

.field public static final blacklist IWLAN_REGISTRATION_STATE_CHANGED:I = 0x1


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/Message;",
            "Landroid/telephony/NetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mWfcState:I

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;I)V
    .locals 2
    .param p2, "slotId"    # I

    .line 120
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/telephony/NetworkService$NetworkServiceProvider;-><init>(Landroid/telephony/NetworkService;I)V

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mWfcState:I

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mLock:Ljava/lang/Object;

    .line 123
    const-string v0, "IWlanNetworkServiceProvider construct."

    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$100(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->getSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    .line 130
    new-instance v0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;Landroid/os/Looper;Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    .line 169
    return-void
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    .line 100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    .line 100
    iget v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mWfcState:I

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;
    .param p1, "x1"    # I

    .line 100
    iput p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mWfcState:I

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;I)Landroid/telephony/NetworkRegistrationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->createRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo;
    .locals 29
    .param p1, "state"    # I

    .line 201
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v3, "createRegistrationState."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$100(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 202
    const/4 v2, 0x2

    .line 203
    .local v2, "domain":I
    const/4 v3, 0x2

    .line 205
    .local v3, "transportType":I
    const/4 v4, 0x0

    .line 206
    .local v4, "regState":I
    const/4 v5, 0x0

    .line 207
    .local v5, "accessNetworkTechnology":I
    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 208
    const/4 v4, 0x1

    .line 209
    const/16 v5, 0x12

    move v15, v4

    move/from16 v20, v5

    goto :goto_0

    .line 210
    :cond_0
    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    .line 211
    const/4 v4, 0x2

    .line 212
    const/16 v5, 0x12

    move v15, v4

    move/from16 v20, v5

    goto :goto_0

    .line 215
    :cond_1
    const/4 v4, 0x0

    .line 216
    const/4 v5, 0x0

    move v15, v4

    move/from16 v20, v5

    .line 219
    .end local v4    # "regState":I
    .end local v5    # "accessNetworkTechnology":I
    .local v15, "regState":I
    .local v20, "accessNetworkTechnology":I
    :goto_0
    const/16 v21, 0x0

    .line 220
    .local v21, "reasonForDenial":I
    const/4 v14, 0x0

    .line 221
    .local v14, "emergencyOnly":Z
    const/16 v22, 0x0

    .line 222
    .local v22, "maxDataCalls":I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-static {v4, v15, v2, v14}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$600(Lcom/mediatek/internal/telephony/IWlanNetworkService;IIZ)Ljava/util/ArrayList;

    move-result-object v23

    .line 224
    .local v23, "availableServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    .line 225
    .local v24, "cellIdentity":Landroid/telephony/CellIdentity;
    new-instance v4, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v4, v6, v6}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    move-object/from16 v18, v4

    .line 229
    .local v18, "lteVopsSupportInfo":Landroid/telephony/LteVopsSupportInfo;
    new-instance v25, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    move-object/from16 v4, v25

    move v5, v2

    move v6, v3

    move v7, v15

    move/from16 v8, v20

    move/from16 v9, v21

    move v10, v14

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move/from16 v27, v14

    .end local v14    # "emergencyOnly":Z
    .local v27, "emergencyOnly":Z
    move/from16 v14, v22

    move/from16 v28, v15

    .end local v15    # "regState":I
    .local v28, "regState":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    move/from16 v19, v26

    invoke-direct/range {v4 .. v19}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/LteVopsSupportInfo;Z)V

    return-object v25
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v1, "close."

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$100(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 197
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 198
    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 6
    .param p1, "domain"    # I
    .param p2, "callback"    # Landroid/telephony/NetworkServiceCallback;

    .line 177
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkRegistrationState for domain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->getSlotIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$100(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkRegistrationState invalid domain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    .line 191
    :goto_0
    return-void
.end method
