.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;
.super Ljava/lang/Object;
.source "MtkSuppServHelper.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 403
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist connectionReady(Lcom/android/ims/ImsManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/ims/ImsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$402(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;

    .line 412
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$500(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    .line 413
    return-void
.end method

.method public bridge synthetic blacklist connectionReady(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 403
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->connectionReady(Lcom/android/ims/ImsManager;)V

    return-void
.end method

.method public blacklist connectionUnavailable()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$600(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    .line 418
    return-void
.end method

.method public blacklist getFeatureManager()Lcom/android/ims/ImsManager;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getFeatureManager()Ljava/lang/Object;
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->getFeatureManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    return-object v0
.end method
