.class public Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
.super Ljava/lang/Object;
.source "MtkIncomingCallChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;,
        Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;
    }
.end annotation


# static fields
.field private static final blacklist PROP_LOG_TAG:Ljava/lang/String; = "MTCallChecker"

.field private static final blacklist TOKEN_MT_CHECKER:I = 0x100


# instance fields
.field blacklist blockChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;

.field blacklist mCallback:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;

.field blacklist mName:Ljava/lang/String;

.field blacklist obj:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->blockChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;

    .line 26
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->mCallback:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;

    .line 28
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->obj:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->obj:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method static blacklist isMtkEnhancedCallBlockingEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 96
    if-nez p0, :cond_0

    .line 97
    const-string v0, "isMtkEnhancedCallBlockingEnabled fail, return false (context null)"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->proprietaryLog(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 102
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 103
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v1, :cond_1

    .line 104
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 106
    :cond_1
    const-string v2, "mtk_support_enhanced_call_blocking_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method static blacklist proprietaryLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 111
    const-string v0, "MTCallChecker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method static blacklist proprietaryLogE(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 115
    const-string v0, "MTCallChecker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method static blacklist proprietaryLogI(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 119
    const-string v0, "MTCallChecker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method


# virtual methods
.method blacklist onBlockCheckComplete(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isBlocked"    # Ljava/lang/Boolean;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query result, isBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->proprietaryLog(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->mCallback:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;->onCheckComplete(ZLjava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method

.method public blacklist startIncomingCallNumberCheck(Landroid/content/Context;ILjava/lang/String;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;

    .line 46
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot do checkIncomingCallNumber (context=null, subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), call will enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->proprietaryLogE(Ljava/lang/String;)V

    .line 49
    return v0

    .line 51
    :cond_0
    if-nez p4, :cond_1

    .line 52
    const-string v1, "checkIncomingCallNumber callback null, call will enter"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->proprietaryLogE(Ljava/lang/String;)V

    .line 53
    return v0

    .line 55
    :cond_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->mCallback:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;

    .line 65
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->blockChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;

    if-eqz v1, :cond_3

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block checker not null ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->blockChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "). will create a new one."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->proprietaryLog(Ljava/lang/String;)V

    .line 69
    :cond_3
    new-instance v1, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;-><init>(Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->blockChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;

    .line 71
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->isMtkEnhancedCallBlockingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    const/16 v2, 0x100

    new-instance v5, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$1;

    invoke-direct {v5, p0, p3}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$1;-><init>(Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;Ljava/lang/String;)V

    const-string v6, "ContactQuery"

    move-object v3, p1

    move-object v4, p3

    move v7, p2

    invoke-static/range {v2 .. v7}, Landroid/telecom/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Landroid/telecom/CallerInfoAsyncQuery;

    .line 82
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_4
    return v0

    .line 56
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIncomingCallNumber skipped (number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->proprietaryLog(Ljava/lang/String;)V

    .line 59
    return v0
.end method
