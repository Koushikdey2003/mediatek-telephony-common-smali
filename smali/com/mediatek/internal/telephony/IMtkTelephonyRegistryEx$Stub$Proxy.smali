.class Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkTelephonyRegistryEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyRegistryEx"

    return-object v0
.end method
