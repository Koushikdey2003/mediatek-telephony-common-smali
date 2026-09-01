.class public final synthetic Lcom/mediatek/internal/telephony/-$$Lambda$FdP674o0GBWp6I9SSfgtwHsEflk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic blacklist INSTANCE:Lcom/mediatek/internal/telephony/-$$Lambda$FdP674o0GBWp6I9SSfgtwHsEflk;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/mediatek/internal/telephony/-$$Lambda$FdP674o0GBWp6I9SSfgtwHsEflk;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/-$$Lambda$FdP674o0GBWp6I9SSfgtwHsEflk;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/-$$Lambda$FdP674o0GBWp6I9SSfgtwHsEflk;->INSTANCE:Lcom/mediatek/internal/telephony/-$$Lambda$FdP674o0GBWp6I9SSfgtwHsEflk;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result p1

    return p1
.end method
