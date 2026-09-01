.class final enum Lcom/mediatek/internal/telephony/test/CallInfo$State;
.super Ljava/lang/Enum;
.source "MtkSimulatedGsmCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/test/CallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/test/CallInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum blacklist ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum blacklist ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum blacklist DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum blacklist HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum blacklist INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum blacklist WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;


# instance fields
.field private final blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 33
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v1, "HOLDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 34
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v1, "DIALING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 35
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v1, "ALERTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 36
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v1, "INCOMING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 37
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v1, "WAITING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 31
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v8, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    aput-object v8, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->$VALUES:[Lcom/mediatek/internal/telephony/test/CallInfo$State;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->mValue:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/CallInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    return-object v0
.end method

.method public static blacklist values()[Lcom/mediatek/internal/telephony/test/CallInfo$State;
    .locals 1

    .line 31
    sget-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->$VALUES:[Lcom/mediatek/internal/telephony/test/CallInfo$State;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/test/CallInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/test/CallInfo$State;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->mValue:I

    return v0
.end method
