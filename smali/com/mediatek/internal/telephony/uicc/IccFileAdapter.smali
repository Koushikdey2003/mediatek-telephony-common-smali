.class public Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;
.super Ljava/lang/Object;
.source "IccFileAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IccFileAdapter"

.field private static blacklist sInstance:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter$1;-><init>(Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    const-string v0, "IccFileAdapter Creating!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->log(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 68
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhoneId:I

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method


# virtual methods
.method protected blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccFileAdapter"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccFileAdapter"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
