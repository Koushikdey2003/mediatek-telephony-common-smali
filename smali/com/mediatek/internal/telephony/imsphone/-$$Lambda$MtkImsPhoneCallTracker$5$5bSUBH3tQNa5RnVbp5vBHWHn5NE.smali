.class public final synthetic Lcom/mediatek/internal/telephony/imsphone/-$$Lambda$MtkImsPhoneCallTracker$5$5bSUBH3tQNa5RnVbp5vBHWHn5NE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/ims/FeatureConnector$RetryTimeout;


# static fields
.field public static final synthetic blacklist INSTANCE:Lcom/mediatek/internal/telephony/imsphone/-$$Lambda$MtkImsPhoneCallTracker$5$5bSUBH3tQNa5RnVbp5vBHWHn5NE;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/-$$Lambda$MtkImsPhoneCallTracker$5$5bSUBH3tQNa5RnVbp5vBHWHn5NE;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/imsphone/-$$Lambda$MtkImsPhoneCallTracker$5$5bSUBH3tQNa5RnVbp5vBHWHn5NE;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/imsphone/-$$Lambda$MtkImsPhoneCallTracker$5$5bSUBH3tQNa5RnVbp5vBHWHn5NE;->INSTANCE:Lcom/mediatek/internal/telephony/imsphone/-$$Lambda$MtkImsPhoneCallTracker$5$5bSUBH3tQNa5RnVbp5vBHWHn5NE;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist get()I
    .locals 1

    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$5;->lambda$onReceive$0()I

    move-result v0

    return v0
.end method
