.class public Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;
.super Lcom/android/internal/telephony/CallManager$CallManagerHandler;
.source "MtkCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtkCallManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkCallManager;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkCallManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkCallManager;

    .line 53
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;->this$0:Lcom/mediatek/internal/telephony/MtkCallManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 61
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 62
    .local v1, "subId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;->this$0:Lcom/mediatek/internal/telephony/MtkCallManager;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;->this$0:Lcom/mediatek/internal/telephony/MtkCallManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkCallManager;->access$000(Lcom/mediatek/internal/telephony/MtkCallManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;->this$0:Lcom/mediatek/internal/telephony/MtkCallManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkCallManager;->access$100(Lcom/mediatek/internal/telephony/MtkCallManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 72
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v1    # "subId":I
    :cond_2
    :goto_0
    return-void
.end method
