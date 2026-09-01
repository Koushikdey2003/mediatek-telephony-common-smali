.class public final enum Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;
.super Ljava/lang/Enum;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "retryConfigForCC33"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

.field public static final enum blacklist maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

.field public static final enum blacklist randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

.field public static final enum blacklist retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 134
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    const-string v1, "maxRetryCount"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 135
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    const-string v1, "retryTime"

    const/4 v4, 0x1

    const v5, 0xafc8

    invoke-direct {v0, v1, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 136
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    const-string v1, "randomizationTime"

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 133
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    aput-object v2, v1, v4

    aput-object v0, v1, v3

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->value:I

    .line 142
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 133
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;
    .locals 1

    .line 133
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->value:I

    return v0
.end method
