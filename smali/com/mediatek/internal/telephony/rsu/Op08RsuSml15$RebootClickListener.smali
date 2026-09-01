.class Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;
.super Ljava/lang/Object;
.source "Op08RsuSml15.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootClickListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$1;

    .line 264
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;-><init>(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    const-string v1, "[RSU-SIMLOCK] Unlock Phone onClick"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->access$000(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15$RebootClickListener;->this$0:Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;->access$400(Lcom/mediatek/internal/telephony/rsu/Op08RsuSml15;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 269
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "Unlock state changed"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 270
    return-void
.end method
