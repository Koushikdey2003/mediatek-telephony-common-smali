.class public Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;
.super Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.source "MtkQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtkNetworkAvailabilityProvider"
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist MD_NW_TYPE_CELLULAR:I = 0x1

.field private static final blacklist MD_NW_TYPE_IWLAN:I = 0x2

.field private static final blacklist MD_NW_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;
    .param p2, "slotIndex"    # I

    .line 88
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;-><init>(Landroid/telephony/data/QualifiedNetworksService;I)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->getSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mLooper:Landroid/os/Looper;

    .line 97
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;Landroid/os/Looper;Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    .line 134
    const-string v0, "Register for qualified networks changed."

    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForQualifiedNetworkTypesChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_0
    const-string v0, "Constructor: mPhone.mCi is not instanceof MTKRIL!"

    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForQualifiedNetworkTypesChanged(Landroid/os/Handler;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    const-string v1, "close(): mPhone.mCi is not instanceof MTKRIL!"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 157
    return-void
.end method

.method public blacklist converNetworkType(I)I
    .locals 2
    .param p1, "mdReportType"    # I

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 169
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_0
    const/4 v0, 0x5

    .line 167
    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x3

    .line 164
    nop

    .line 172
    :goto_0
    return v0
.end method
