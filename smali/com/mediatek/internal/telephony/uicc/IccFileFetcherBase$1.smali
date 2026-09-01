.class Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;
.super Ljava/lang/Thread;
.source "IccFileFetcherBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    .line 166
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->exchangeSimInfo()V

    .line 169
    return-void
.end method
