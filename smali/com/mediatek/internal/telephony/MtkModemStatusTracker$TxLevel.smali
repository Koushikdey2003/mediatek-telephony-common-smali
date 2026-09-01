.class public final enum Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;
.super Ljava/lang/Enum;
.source "MtkModemStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkModemStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TxLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

.field public static final enum blacklist TX_LEVEL_BELOW_MINUS_FIVE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

.field public static final enum blacklist TX_LEVEL_FIFTEEN_TO_TWENTY:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

.field public static final enum blacklist TX_LEVEL_FIVE_TO_TEN:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

.field public static final enum blacklist TX_LEVEL_MINUS_FIVE_TO_ONE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

.field public static final enum blacklist TX_LEVEL_ONE_TO_FIVE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

.field public static final enum blacklist TX_LEVEL_TEN_TO_FIFTEEN:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

.field public static final enum blacklist TX_LEVEL_TWENTY_THREE_TO_TWENTY_SIX:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

.field public static final enum blacklist TX_LEVEL_TWENTY_TO_TWENTY_THREE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 79
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    const-string v1, "TX_LEVEL_BELOW_MINUS_FIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_BELOW_MINUS_FIVE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 80
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    const-string v1, "TX_LEVEL_MINUS_FIVE_TO_ONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_MINUS_FIVE_TO_ONE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 81
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    const-string v1, "TX_LEVEL_ONE_TO_FIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_ONE_TO_FIVE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 82
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    const-string v1, "TX_LEVEL_FIVE_TO_TEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_FIVE_TO_TEN:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 83
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    const-string v1, "TX_LEVEL_TEN_TO_FIFTEEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_TEN_TO_FIFTEEN:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 84
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    const-string v1, "TX_LEVEL_FIFTEEN_TO_TWENTY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_FIFTEEN_TO_TWENTY:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 85
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    const-string v1, "TX_LEVEL_TWENTY_TO_TWENTY_THREE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_TWENTY_TO_TWENTY_THREE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 86
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    const-string v1, "TX_LEVEL_TWENTY_THREE_TO_TWENTY_SIX"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_TWENTY_THREE_TO_TWENTY_SIX:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    .line 78
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    sget-object v10, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_BELOW_MINUS_FIVE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    aput-object v10, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_MINUS_FIVE_TO_ONE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_ONE_TO_FIVE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_FIVE_TO_TEN:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_TEN_TO_FIFTEEN:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_FIFTEEN_TO_TWENTY:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->TX_LEVEL_TWENTY_TO_TWENTY_THREE:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->$VALUES:[Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;
    .locals 1

    .line 78
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->$VALUES:[Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/MtkModemStatusTracker$TxLevel;

    return-object v0
.end method
