.class Lcom/mediatek/internal/telephony/uicc/IccFileAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "IccFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    .line 76
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 78
    return-void
.end method
