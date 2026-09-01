.class public Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RadioPowerRunnable"
.end annotation


# instance fields
.field blacklist retryPhoneId:I

.field blacklist retryPower:Z

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p2, "power"    # Z
    .param p3, "phoneId"    # I

    .line 844
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;->retryPower:Z

    .line 846
    iput p3, p0, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;->retryPhoneId:I

    .line 847
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 3

    .line 850
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;->retryPower:Z

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;->retryPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 851
    return-void
.end method
