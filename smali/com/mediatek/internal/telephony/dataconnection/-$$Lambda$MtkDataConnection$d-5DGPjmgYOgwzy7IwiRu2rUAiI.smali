.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDataConnection$d-5DGPjmgYOgwzy7IwiRu2rUAiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDataConnection$d-5DGPjmgYOgwzy7IwiRu2rUAiI;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDataConnection$d-5DGPjmgYOgwzy7IwiRu2rUAiI;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDataConnection$d-5DGPjmgYOgwzy7IwiRu2rUAiI;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDataConnection$d-5DGPjmgYOgwzy7IwiRu2rUAiI;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/-$$Lambda$MtkDataConnection$d-5DGPjmgYOgwzy7IwiRu2rUAiI;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->lambda$onSetupConnectionCompleted$0(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
