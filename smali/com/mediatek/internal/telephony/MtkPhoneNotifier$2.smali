.class Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;
.super Ljava/lang/Object;
.source "MtkPhoneNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

.field final synthetic blacklist val$mtkSS:Lmediatek/telephony/MtkSignalStrength;

.field final synthetic blacklist val$phoneId:I

.field final synthetic blacklist val$subId:I


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;IILmediatek/telephony/MtkSignalStrength;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    .line 160
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    iput p2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$phoneId:I

    iput p3, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$subId:I

    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$mtkSS:Lmediatek/telephony/MtkSignalStrength;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySignalStrength phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$mtkSS:Lmediatek/telephony/MtkSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkPhoneNotifr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->access$300(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->access$400(Lcom/mediatek/internal/telephony/MtkPhoneNotifier;)Landroid/telephony/TelephonyRegistryManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$subId:I

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$phoneId:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier$2;->val$mtkSS:Lmediatek/telephony/MtkSignalStrength;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyRegistryManager;->notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V

    goto :goto_0

    .line 170
    :cond_0
    const-string v0, "notifySignalStrength mTelephonyRegistryMgr null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void
.end method
