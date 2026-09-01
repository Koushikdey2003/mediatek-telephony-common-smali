.class Lcom/mediatek/internal/telephony/cat/MtkCatService$1;
.super Landroid/os/Handler;
.source "MtkCatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/MtkCatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/cat/MtkCatService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 166
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache DISPLAY_TEXT time out, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$000(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    goto :goto_0

    .line 174
    :cond_1
    const-string v0, "[Reset Disable Display Text flag because timeout"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$102(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z

    .line 176
    nop

    .line 180
    :goto_0
    return-void
.end method
