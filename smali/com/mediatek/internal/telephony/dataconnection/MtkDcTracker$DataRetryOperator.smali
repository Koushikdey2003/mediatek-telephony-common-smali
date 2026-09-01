.class final enum Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;
.super Ljava/lang/Enum;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataRetryOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum blacklist EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum blacklist KDDI:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum blacklist TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum blacklist TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum blacklist UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 315
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 316
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v1, "TELCEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 317
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v1, "TELSTRA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 318
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v1, "EE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 319
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v1, "KDDI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->KDDI:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 314
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    aput-object v7, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 314
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;
    .locals 1

    .line 314
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v0
.end method
