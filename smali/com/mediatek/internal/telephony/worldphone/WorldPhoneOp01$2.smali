.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;
.super Ljava/lang/Object;
.source "WorldPhoneOp01.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 1167
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .locals 3

    .line 1169
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1308()I

    .line 1170
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1300()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1400()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 1171
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1400()[I

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1302(I)I

    .line 1173
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1200()I

    move-result v0

    if-nez v0, :cond_1

    .line 1174
    const-string v0, "TDD time out!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 1175
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1502(I)I

    .line 1176
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1602(I)I

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1500()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)Z

    goto :goto_0

    .line 1180
    :cond_1
    const-string v0, "TDD time out but BT SAP is connected, switch not executed!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 1182
    :goto_0
    return-void
.end method
