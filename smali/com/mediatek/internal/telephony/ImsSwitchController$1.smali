.class Lcom/mediatek/internal/telephony/ImsSwitchController$1;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 157
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 3

    .line 160
    const-string v0, "ImsSwitchController"

    const-string v1, "try to bind ImsService again"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 164
    :cond_0
    const-string v0, "manually updateImsServiceConfig"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManager;->isSupportMims()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 166
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 167
    .local v0, "phoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$500(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 168
    .end local v0    # "phoneId":I
    goto :goto_1

    .line 169
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$500(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
