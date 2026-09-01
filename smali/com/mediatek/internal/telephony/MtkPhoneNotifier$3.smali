.class Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;
.super Ljava/lang/Object;
.source "MtkPhoneNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

.field final synthetic blacklist val$mCellInfo:Ljava/util/List;

.field final synthetic blacklist val$subId:I


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    .line 315
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    iput p2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;->val$subId:I

    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;->val$mCellInfo:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->access$500(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;

    move-result-object v0

    const-string v1, "MtkPhoneNotifr"

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "notifyCellInfo"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->access$600(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;->val$subId:I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$3;->val$mCellInfo:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellInfoChanged(ILjava/util/List;)V

    goto :goto_0

    .line 321
    :cond_0
    const-string v0, "notifyCellInfo mTelephonyRegistryMgr null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void
.end method
