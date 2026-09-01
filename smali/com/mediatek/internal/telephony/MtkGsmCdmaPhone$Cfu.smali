.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
.super Ljava/lang/Object;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cfu"
.end annotation


# instance fields
.field final blacklist mOnComplete:Landroid/os/Message;

.field final blacklist mServiceClass:I

.field final blacklist mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "serviceClass"    # I

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    .line 426
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    .line 427
    iput p3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mServiceClass:I

    .line 428
    return-void
.end method
