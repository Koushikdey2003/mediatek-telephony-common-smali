.class public Lcom/mediatek/internal/telephony/MtkOperatorUtils;
.super Ljava/lang/Object;
.source "MtkOperatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MtkOperatorUtils"

.field private static final blacklist mOPMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils;->mOPMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist idToString(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 169
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_0

    .line 170
    const-string v0, "OP01"

    return-object v0

    .line 171
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_1

    .line 172
    const-string v0, "OP02"

    return-object v0

    .line 173
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP03:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_2

    .line 174
    const-string v0, "OP03"

    return-object v0

    .line 175
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP05:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_3

    .line 176
    const-string v0, "OP05"

    return-object v0

    .line 177
    :cond_3
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP06:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_4

    .line 178
    const-string v0, "OP06"

    return-object v0

    .line 179
    :cond_4
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP07:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_5

    .line 180
    const-string v0, "OP07"

    return-object v0

    .line 181
    :cond_5
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP08:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_6

    .line 182
    const-string v0, "OP08"

    return-object v0

    .line 183
    :cond_6
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_7

    .line 184
    const-string v0, "OP09"

    return-object v0

    .line 185
    :cond_7
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP11:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_8

    .line 186
    const-string v0, "OP11"

    return-object v0

    .line 187
    :cond_8
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP15:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_9

    .line 188
    const-string v0, "OP15"

    return-object v0

    .line 189
    :cond_9
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP16:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_a

    .line 190
    const-string v0, "OP16"

    return-object v0

    .line 191
    :cond_a
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP18:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_b

    .line 192
    const-string v0, "OP18"

    return-object v0

    .line 193
    :cond_b
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP50:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_c

    .line 194
    const-string v0, "OP50"

    return-object v0

    .line 195
    :cond_c
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP100:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_d

    .line 196
    const-string v0, "OP100"

    return-object v0

    .line 197
    :cond_d
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP101:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_e

    .line 198
    const-string v0, "OP101"

    return-object v0

    .line 199
    :cond_e
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP102:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_f

    .line 200
    const-string v0, "OP102"

    return-object v0

    .line 201
    :cond_f
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP106:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_10

    .line 202
    const-string v0, "OP106"

    return-object v0

    .line 203
    :cond_10
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP107:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_11

    .line 204
    const-string v0, "OP107"

    return-object v0

    .line 205
    :cond_11
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP108:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_12

    .line 206
    const-string v0, "OP108"

    return-object v0

    .line 207
    :cond_12
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP109:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_13

    .line 208
    const-string v0, "OP109"

    return-object v0

    .line 209
    :cond_13
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP110:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_14

    .line 210
    const-string v0, "OP110"

    return-object v0

    .line 211
    :cond_14
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP118:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_15

    .line 212
    const-string v0, "OP118"

    return-object v0

    .line 213
    :cond_15
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP124:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_16

    .line 214
    const-string v0, "OP124"

    return-object v0

    .line 215
    :cond_16
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP128:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_17

    .line 216
    const-string v0, "OP128"

    return-object v0

    .line 217
    :cond_17
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP131:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_18

    .line 218
    const-string v0, "OP131"

    return-object v0

    .line 219
    :cond_18
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP134:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_19

    .line 220
    const-string v0, "OP134"

    return-object v0

    .line 221
    :cond_19
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP137:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_1a

    .line 222
    const-string v0, "OP137"

    return-object v0

    .line 223
    :cond_1a
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP143:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_1b

    .line 224
    const-string v0, "OP143"

    return-object v0

    .line 225
    :cond_1b
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP152:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_1c

    .line 226
    const-string v0, "OP152"

    return-object v0

    .line 227
    :cond_1c
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP154:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_1d

    .line 228
    const-string v0, "OP154"

    return-object v0

    .line 229
    :cond_1d
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP156:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_1e

    .line 230
    const-string v0, "OP156"

    return-object v0

    .line 231
    :cond_1e
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP161:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_1f

    .line 232
    const-string v0, "OP161"

    return-object v0

    .line 233
    :cond_1f
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP175:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_20

    .line 234
    const-string v0, "OP175"

    return-object v0

    .line 235
    :cond_20
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP176:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    if-ne p0, v0, :cond_21

    .line 236
    const-string v0, "OP176"

    return-object v0

    .line 238
    :cond_21
    const-string v0, "ERR"

    return-object v0
.end method

.method public static blacklist isOperator(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z
    .locals 3
    .param p0, "mccMnc"    # Ljava/lang/String;
    .param p1, "id"    # Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "r":Z
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils;->mOPMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v2, " = "

    goto :goto_0

    :cond_1
    const-string v2, " != "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkOperatorUtils;->idToString(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkOperatorUtils"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v0
.end method
