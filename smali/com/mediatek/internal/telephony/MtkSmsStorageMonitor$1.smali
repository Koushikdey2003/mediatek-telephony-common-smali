.class Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "MtkSmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    .line 80
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->access$000(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->handleIccFull()V

    .line 86
    :cond_0
    return-void
.end method
