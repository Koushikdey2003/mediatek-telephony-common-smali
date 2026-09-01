.class public Lcom/mediatek/internal/telephony/digits/DigitsUssdManagerBase;
.super Ljava/lang/Object;
.source "DigitsUssdManagerBase.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/digits/DigitsUssdManager;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getUssdExtra()Landroid/os/Bundle;
    .locals 1

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setUssdExtra(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intentExtras"    # Landroid/os/Bundle;

    .line 41
    return-void
.end method
