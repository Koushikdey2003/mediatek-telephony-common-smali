.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;
.super Ljava/lang/Object;
.source "MtkServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkPlmn"
.end annotation


# instance fields
.field blacklist plmn:Ljava/lang/String;

.field blacklist showPlmn:Z

.field blacklist showSpn:Z

.field blacklist spn:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p2, "showPlmn"    # Z
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Z
    .param p5, "spn"    # Ljava/lang/String;

    .line 388
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showPlmn:Z

    .line 390
    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->plmn:Ljava/lang/String;

    .line 391
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showSpn:Z

    .line 392
    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->spn:Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkPlmn showPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
