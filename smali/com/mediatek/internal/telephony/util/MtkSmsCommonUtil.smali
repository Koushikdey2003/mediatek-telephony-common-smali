.class public final Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;
.super Ljava/lang/Object;
.source "MtkSmsCommonUtil.java"


# static fields
.field private static final blacklist ENG:Z

.field public static final blacklist IS_EMERGENCY_CB_PRIMARY:Ljava/lang/String; = "isPrimary"

.field private static final blacklist IS_PRIVACY_PROTECTION_LOCK_SUPPORT:Z

.field private static final blacklist IS_WAPPUSH_SUPPORT:Z

.field public static final blacklist SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND deleted=0 AND sub_id=?"

.field public static final blacklist SQL_3GPP2_SMS:Ljava/lang/String; = " AND (destination_port & 262144=262144)"

.field public static final blacklist SQL_3GPP_SMS:Ljava/lang/String; = " AND (destination_port & 131072=131072)"

.field private static final blacklist TAG:Ljava/lang/String; = "MtkSmsCommonUtil"

.field public static blacklist sPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 91
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->ENG:Z

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->sPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    .line 120
    nop

    .line 121
    const-string v0, "ro.vendor.mtk_privacy_protection_lock"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->IS_PRIVACY_PROTECTION_LOCK_SUPPORT:Z

    .line 123
    nop

    .line 124
    const-string v0, "ro.vendor.mtk_wappush_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->IS_WAPPUSH_SUPPORT:Z

    .line 123
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist filterOutByPpl(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 145
    invoke-static {}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->isPrivacyLockSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->sPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->sPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 156
    .local v0, "pplResult":Z
    sget-boolean v1, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->ENG:Z

    const-string v2, "MtkSmsCommonUtil"

    if-eqz v1, :cond_2

    .line 157
    const-string v1, "[PPL] Phone privacy check start"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v1, "pplData":Landroid/os/Bundle;
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    const-string v4, "msgContent"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const-string v4, "dstAddr"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    const-string v4, "format"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    const-string v4, "subId"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const/4 v3, 0x1

    const-string v4, "smsType"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    sget-object v3, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->sPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->pplFilter(Landroid/os/Bundle;)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_3

    .line 169
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    .line 172
    :cond_3
    sget-boolean v3, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->ENG:Z

    if-eqz v3, :cond_4

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PPL] Phone privacy check end, Need to filter(result) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4
    return-void
.end method

.method public static blacklist isPrivacyLockSupport()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->IS_PRIVACY_PROTECTION_LOCK_SUPPORT:Z

    return v0
.end method

.method public static blacklist isWapPushSupport()Z
    .locals 1

    .line 131
    sget-boolean v0, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->IS_WAPPUSH_SUPPORT:Z

    return v0
.end method

.method public static blacklist phonePrivacyLockCheck([[BLjava/lang/String;Landroid/content/Context;I)I
    .locals 5
    .param p0, "pdus"    # [[B
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subId"    # I

    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, "checkResult":I
    invoke-static {}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->isPrivacyLockSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    if-nez v0, :cond_2

    .line 194
    sget-object v1, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->sPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    invoke-direct {v1, p2}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->sPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    .line 197
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v1, "pplData":Landroid/os/Bundle;
    const-string v2, "pdus"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 200
    const-string v2, "format"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "subId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const/4 v2, 0x0

    const-string v3, "smsType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "pplResult":Z
    sget-object v3, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->sPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->pplFilter(Landroid/os/Bundle;)Z

    move-result v2

    .line 206
    sget-boolean v3, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->ENG:Z

    if-eqz v3, :cond_1

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Ppl] Phone privacy check end, Need to filter(result) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkSmsCommonUtil"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 211
    const/4 v0, -0x1

    .line 216
    .end local v1    # "pplData":Landroid/os/Bundle;
    .end local v2    # "pplResult":Z
    :cond_2
    return v0
.end method
