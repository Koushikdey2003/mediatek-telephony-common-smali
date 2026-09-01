.class public final synthetic Lcom/mediatek/internal/telephony/-$$Lambda$MtkSubscriptionInfoUpdater$HgsoAJgGNs-z09cU20UKt6-y2NQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;


# static fields
.field public static final synthetic blacklist INSTANCE:Lcom/mediatek/internal/telephony/-$$Lambda$MtkSubscriptionInfoUpdater$HgsoAJgGNs-z09cU20UKt6-y2NQ;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/mediatek/internal/telephony/-$$Lambda$MtkSubscriptionInfoUpdater$HgsoAJgGNs-z09cU20UKt6-y2NQ;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/-$$Lambda$MtkSubscriptionInfoUpdater$HgsoAJgGNs-z09cU20UKt6-y2NQ;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/-$$Lambda$MtkSubscriptionInfoUpdater$HgsoAJgGNs-z09cU20UKt6-y2NQ;->INSTANCE:Lcom/mediatek/internal/telephony/-$$Lambda$MtkSubscriptionInfoUpdater$HgsoAJgGNs-z09cU20UKt6-y2NQ;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist run(Z)V
    .locals 0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->lambda$updateSubscriptionInfoByIccId$0(Z)V

    return-void
.end method
