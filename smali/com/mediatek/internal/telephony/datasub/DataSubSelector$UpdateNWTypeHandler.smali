.class Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;
.super Landroid/os/Handler;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateNWTypeHandler"
.end annotation


# static fields
.field static final blacklist MESSAGE_SET_PREFERRED_NETWORK_TYPE:I


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;

    .line 365
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;-><init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    return-void
.end method

.method private blacklist handleSetPreferredNetworkTypeResponse(Landroid/os/Message;II)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "subId"    # I
    .param p3, "mode"    # I

    .line 381
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 382
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 383
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetPreferredNetwrokTypeResponse2: networkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    const-string v3, "handleSetPreferredNetworkTypeResponse:exception in setting network."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$UpdateNWTypeHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;II)V

    .line 374
    nop

    .line 378
    :goto_0
    return-void
.end method
