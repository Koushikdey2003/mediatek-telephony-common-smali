.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
.super Ljava/lang/Object;
.source "MtkImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CfEx"
.end annotation


# instance fields
.field final blacklist mIsCfu:Z

.field final blacklist mOnComplete:Landroid/os/Message;

.field final blacklist mSetCfNumber:Ljava/lang/String;

.field final blacklist mSetTimeSlot:[J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;[JZLandroid/os/Message;)V
    .locals 0
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "cfTimeSlot"    # [J
    .param p3, "isCfu"    # Z
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mSetCfNumber:Ljava/lang/String;

    .line 595
    iput-object p2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mSetTimeSlot:[J

    .line 596
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mIsCfu:Z

    .line 597
    iput-object p4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    .line 598
    return-void
.end method
