.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$vEACQiuR1_Bcjgwl5Nh8pWxRj0I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic blacklist INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$vEACQiuR1_Bcjgwl5Nh8pWxRj0I;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$vEACQiuR1_Bcjgwl5Nh8pWxRj0I;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$vEACQiuR1_Bcjgwl5Nh8pWxRj0I;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$vEACQiuR1_Bcjgwl5Nh8pWxRj0I;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDcTracker$vEACQiuR1_Bcjgwl5Nh8pWxRj0I;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    check-cast p2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->lambda$sortApnContextByPriority$1(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I

    move-result p1

    return p1
.end method
