.class public Lcom/mediatek/internal/telephony/DefaultTelephonyExt;
.super Ljava/lang/Object;
.source "DefaultTelephonyExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IDefaultTelephonyExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DefaultTelephonyExt"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mediatek/internal/telephony/DefaultTelephonyExt;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getOperatorNumericFromImpi(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 72
    return-object p1
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/mediatek/internal/telephony/DefaultTelephonyExt;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public blacklist isRatMenuControlledBySIM()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSetLanguageBySIM()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method
