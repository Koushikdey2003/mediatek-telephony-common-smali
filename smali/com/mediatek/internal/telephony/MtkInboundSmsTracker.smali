.class public Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
.super Lcom/android/internal/telephony/InboundSmsTracker;
.source "MtkInboundSmsTracker.java"


# static fields
.field public static final blacklist SUB_ID_COLUMN:I = 0xa


# instance fields
.field private blacklist mRecvTime:J

.field private blacklist mSubId:I

.field private blacklist mUploadFlag:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isCurrentFormat3gpp2"    # Z

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 126
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    .line 127
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "displayAddress"    # Ljava/lang/String;
    .param p9, "referenceNumber"    # I
    .param p10, "sequenceNumber"    # I
    .param p11, "messageCount"    # I
    .param p12, "is3gpp2WapPdu"    # Z
    .param p13, "messageBody"    # Ljava/lang/String;
    .param p14, "isClass0"    # Z
    .param p15, "subId"    # I

    .line 115
    invoke-direct/range {p0 .. p15}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZI)V

    .line 117
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "is3gpp2WapPdu"    # Z
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "displayAddress"    # Ljava/lang/String;
    .param p10, "messageBody"    # Ljava/lang/String;
    .param p11, "isClass0"    # Z
    .param p12, "subId"    # I

    .line 88
    invoke-direct/range {p0 .. p12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 90
    return-void
.end method

.method private blacklist appendSubIdInQuery(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    .local p1, "base":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->appendSubIdInQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private blacklist appendSubIdInQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND sub_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " AND (destination_port & 262144=262144)"

    goto :goto_0

    .line 196
    :cond_1
    const-string v1, " AND (destination_port & 131072=131072)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    nop

    .line 197
    .local v0, "newWhere":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v1, "baseWhereArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 200
    .local v2, "newWhereArgs":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 201
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public blacklist getContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 134
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 136
    .local v0, "values":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    return-object v0
.end method

.method public blacklist getDestPort()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mDestPort:I

    return v0
.end method

.method public blacklist getExactMatchDupDetectQuery()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getExactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->appendSubIdInQuery(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInexactMatchDupDetectQuery()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getInexactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->appendSubIdInQuery(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getQueryForSegments()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND sub_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " AND (destination_port & 262144=262144)"

    goto :goto_0

    .line 161
    :cond_0
    const-string v1, " AND (destination_port & 131072=131072)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method public blacklist getSubId()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    return v0
.end method

.method public blacklist is3gpp2WapPdu()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mIs3gpp2WapPdu:Z

    return v0
.end method

.method public blacklist setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getMessageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->appendSubIdInQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 170
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-super {p0, p1, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method public blacklist setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 150
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    .line 151
    return-void
.end method
