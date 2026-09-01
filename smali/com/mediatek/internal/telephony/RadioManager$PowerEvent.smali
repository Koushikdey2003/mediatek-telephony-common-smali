.class Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerEvent"
.end annotation


# static fields
.field static final blacklist EVENT_MODEM_POWER_OFF:I = 0x2

.field static final blacklist EVENT_MODEM_POWER_OFF_DONE:I = 0x5

.field static final blacklist EVENT_MODEM_POWER_ON:I = 0x1

.field static final blacklist EVENT_MODEM_POWER_ON_DONE:I = 0x4

.field static final blacklist EVENT_RADIO_AVAILABLE:I = 0x3

.field static final blacklist EVENT_SIM_SWITCH_DONE:I = 0x6

.field static final blacklist EVENT_START:I


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist print(I)Ljava/lang/String;
    .locals 4
    .param p0, "eventCode"    # I

    .line 2332
    const-string v0, ""

    .line 2333
    .local v0, "outString":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 2341
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

    .line 2339
    :pswitch_0
    const-string v0, "EVENT_SIM_SWITCH_DONE"

    goto :goto_0

    .line 2338
    :pswitch_1
    const-string v0, "EVENT_MODEM_POWER_OFF_DONE"

    goto :goto_0

    .line 2337
    :pswitch_2
    const-string v0, "EVENT_MODEM_POWER_ON_DONE"

    goto :goto_0

    .line 2336
    :pswitch_3
    const-string v0, "EVENT_RADIO_AVAILABLE"

    goto :goto_0

    .line 2335
    :pswitch_4
    const-string v0, "EVENT_MODEM_POWER_OFF"

    goto :goto_0

    .line 2334
    :pswitch_5
    const-string v0, "EVENT_MODEM_POWER_ON"

    .line 2343
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
