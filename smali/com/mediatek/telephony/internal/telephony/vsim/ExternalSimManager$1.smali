.class Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;
.super Ljava/lang/Thread;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 203
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 5

    .line 205
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 206
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    invoke-static {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$002(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 207
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    invoke-static {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    .line 208
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$202(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;[Lcom/android/internal/telephony/CommandsInterface;)[Lcom/android/internal/telephony/CommandsInterface;

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 211
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 212
    invoke-static {v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    move-result-object v3

    .line 211
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVsimIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    .end local v1    # "index":Ljava/lang/Integer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 215
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 214
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 216
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 217
    return-void
.end method
