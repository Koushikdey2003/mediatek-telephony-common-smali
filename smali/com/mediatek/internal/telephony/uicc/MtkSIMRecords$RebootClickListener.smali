.class Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;
.super Ljava/lang/Object;
.source "MtkSIMRecords.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootClickListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V
    .locals 0

    .line 2469
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;

    .line 2469
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 2472
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    const-string v1, "[RSU-SIMLOCK] Unlock Phone onClick"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V

    .line 2473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$1000(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2474
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "Unlock state changed"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 2475
    return-void
.end method
