.class public Lcom/mediatek/internal/telephony/MtkRadioConfig;
.super Lcom/android/internal/telephony/RadioConfig;
.source "MtkRadioConfig.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MtkRadioConfig"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioConfig;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected blacklist isGetHidlServiceSync()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method
