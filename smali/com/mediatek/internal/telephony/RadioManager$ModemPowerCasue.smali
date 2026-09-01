.class Lcom/mediatek/internal/telephony/RadioManager$ModemPowerCasue;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModemPowerCasue"
.end annotation


# static fields
.field static final blacklist CAUSE_AIRPLANE_MODE:I = 0x2

.field static final blacklist CAUSE_ECC:I = 0x10

.field static final blacklist CAUSE_FORCE:I = 0x20

.field static final blacklist CAUSE_IPO:I = 0x8

.field static final blacklist CAUSE_RADIO_AVAILABLE:I = 0x40

.field static final blacklist CAUSE_SIM_SWITCH:I = 0x80

.field static final blacklist CAUSE_START:I = 0x0

.field static final blacklist CAUSE_WIFI_CALLING:I = 0x4


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist print(I)Ljava/lang/String;
    .locals 4
    .param p0, "eventCode"    # I

    .line 2358
    const-string v0, ""

    .line 2359
    .local v0, "outString":Ljava/lang/String;
    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4

    const/16 v1, 0x8

    if-eq p0, v1, :cond_3

    const/16 v1, 0x10

    if-eq p0, v1, :cond_2

    const/16 v1, 0x20

    if-eq p0, v1, :cond_1

    const/16 v1, 0x40

    if-ne p0, v1, :cond_0

    .line 2365
    const-string v0, "CAUSE_RADIO_AVAILABLE"

    goto :goto_0

    .line 2367
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid eventCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2364
    :cond_1
    const-string v0, "CAUSE_FORCE"

    goto :goto_0

    .line 2363
    :cond_2
    const-string v0, "CAUSE_ECC"

    goto :goto_0

    .line 2362
    :cond_3
    const-string v0, "CAUSE_IPO"

    goto :goto_0

    .line 2361
    :cond_4
    const-string v0, "CAUSE_WIFI_CALLING"

    goto :goto_0

    .line 2360
    :cond_5
    const-string v0, "CAUSE_AIRPLANE_MODE"

    .line 2369
    :goto_0
    return-object v0
.end method
