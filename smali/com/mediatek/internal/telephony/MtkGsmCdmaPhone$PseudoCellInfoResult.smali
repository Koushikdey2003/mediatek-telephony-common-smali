.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
.super Ljava/lang/Object;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PseudoCellInfoResult"
.end annotation


# instance fields
.field blacklist infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

.field blacklist lockObj:Ljava/lang/Object;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V
    .locals 0

    .line 2051
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    .line 2053
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;

    .line 2051
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V

    return-void
.end method
