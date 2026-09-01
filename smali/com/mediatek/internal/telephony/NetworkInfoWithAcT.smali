.class public Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
.super Ljava/lang/Object;
.source "NetworkInfoWithAcT.java"


# instance fields
.field blacklist nAct:I

.field blacklist nPriority:I

.field blacklist operatorAlphaName:Ljava/lang/String;

.field blacklist operatorNumeric:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "nPriority"    # I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 160
    iput p3, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    .line 161
    iput p4, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    .line 162
    return-void
.end method


# virtual methods
.method public blacklist getAccessTechnology()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    return v0
.end method

.method public blacklist getOperatorAlphaName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPriority()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    return v0
.end method

.method public blacklist setAccessTechnology(I)V
    .locals 0
    .param p1, "nAct"    # I

    .line 139
    iput p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    .line 140
    return-void
.end method

.method public blacklist setOperatorAlphaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorAlphaName"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public blacklist setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public blacklist setPriority(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .line 149
    iput p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    .line 150
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfoWithAcT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
