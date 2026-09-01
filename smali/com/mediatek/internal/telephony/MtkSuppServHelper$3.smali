.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.source "MtkSuppServHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 857
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onRegistered(I)V
    .locals 3
    .param p1, "imsRadioTech"    # I

    .line 862
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsRegistered imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$100(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbcwWithCS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 867
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 871
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 874
    :cond_1
    :goto_0
    return-void
.end method
