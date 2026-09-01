.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccCarrierPrivilegeRules;
.super Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.source "MtkUiccCarrierPrivilegeRules.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V
    .locals 0
    .param p1, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "loadedCallback"    # Landroid/os/Message;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handled by AOSP handleMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 56
    :cond_0
    const-string v0, "M: EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 58
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->handleMessage(Landroid/os/Message;)V

    .line 72
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 61
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_3

    .line 63
    const-string v1, "RADIO_NOT_AVAILABLE"

    .line 64
    .local v1, "errorMsg":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    .line 66
    .end local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_1

    .line 67
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->handleMessage(Landroid/os/Message;)V

    .line 77
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_1
    return-void
.end method
