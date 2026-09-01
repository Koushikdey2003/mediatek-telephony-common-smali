.class Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;
.super Landroid/database/ContentObserver;
.source "MtkSmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api onChange(ZLandroid/net/Uri;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->access$000(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->handleIccFull()V

    .line 111
    :cond_0
    return-void
.end method
