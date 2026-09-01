.class public Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;
.super Landroid/os/Handler;
.source "DeviceRegisterHandler.java"


# static fields
.field private static final blacklist EVENT_CDMA_CARD_INITIAL_ESN_OR_MEID:I = 0x6b


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 70
    iput-object p2, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;->mController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 71
    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 80
    .local v0, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_0

    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 87
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;->mController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->setCdmaCardEsnOrMeid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 99
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    return-void
.end method
