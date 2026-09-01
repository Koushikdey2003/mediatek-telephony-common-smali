.class public Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Default;
.super Ljava/lang/Object;
.source "IMtkTelephonyRegistryEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
