.class Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;
.super Ljava/lang/Thread;
.source "MtkIccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    .line 1136
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 5

    .line 1138
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1139
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete message on sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1500(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1140
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsWipedRsp:Z

    .line 1141
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1142
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$1600(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, -0x1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsWipedRsp:Z

    if-nez v2, :cond_0

    .line 1145
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1149
    :cond_0
    goto :goto_1

    .line 1147
    :catch_0
    move-exception v2

    .line 1148
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "insertRaw interrupted while trying to update by index"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1150
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v0

    .line 1151
    return-void

    .line 1150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
