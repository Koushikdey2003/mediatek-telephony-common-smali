.class public Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.super Ljava/lang/Object;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;,
        Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;,
        Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    }
.end annotation


# static fields
.field private static final blacklist CC33_FAIL_CAUSE_TABLE:[I

.field public static final blacklist DBG:Z = true

.field public static final blacklist DEFAULT_DATA_RETRY_CONFIG_OP19:Ljava/lang/String; = "max_retries=10, 720000,1440000,2880000,5760000,11520000,23040000,23040000,23040000,23040000,46080000"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "DcFcMgr"

.field public static final blacklist VDBG:Z = false

.field private static final blacklist sDcFailCauseManager:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist specificPLMN:[[Ljava/lang/String;


# instance fields
.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->sDcFailCauseManager:Landroid/util/SparseArray;

    .line 76
    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "50501"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "732101"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    .line 111
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->CC33_FAIL_CAUSE_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x1d
        0x21
    .end array-data
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const-string v0, "DcFcMgr.constructor"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 174
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 151
    const/4 v0, 0x0

    const-string v1, "DcFcMgr"

    if-eqz p0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 153
    .local v2, "phoneId":I
    if-gez v2, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] is invalid!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v0

    .line 157
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->sDcFailCauseManager:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    .line 158
    .local v0, "dcFcMgr":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
    if-nez v0, :cond_1

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist, create it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    move-object v0, v1

    .line 161
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->sDcFailCauseManager:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    :cond_1
    return-object v0

    .line 166
    .end local v0    # "dcFcMgr":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
    .end local v2    # "phoneId":I
    :cond_2
    const-string v2, "Can\'t get phone to init!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-object v0
.end method

.method private blacklist getSpecificNetworkOperator()Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .locals 7

    .line 269
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->NONE:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 270
    .local v0, "operator":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    const-string v1, ""

    .line 272
    .local v1, "plmn":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check PLMN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "get plmn fail"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->loge(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 285
    const/4 v3, 0x0

    .line 288
    .local v3, "isServingInSpecificPlmn":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    aget-object v6, v5, v2

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 289
    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    const/4 v3, 0x1

    .line 291
    goto :goto_3

    .line 288
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 295
    .end local v4    # "j":I
    :cond_1
    :goto_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 296
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->get(I)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v0

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Serving in specific network op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 298
    goto :goto_4

    .line 283
    .end local v3    # "isServingInSpecificPlmn":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .end local v2    # "i":I
    :cond_3
    :goto_4
    return-object v0
.end method

.method private blacklist getSpecificSimOperator()Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .locals 7

    .line 306
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->NONE:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 307
    .local v0, "operator":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    const-string v1, ""

    .line 309
    .local v1, "hplmn":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 310
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 309
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check HPLMN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 314
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "get hplmn fail"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->loge(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 323
    const/4 v3, 0x0

    .line 326
    .local v3, "isServingInSpecificPlmn":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->specificPLMN:[[Ljava/lang/String;

    aget-object v6, v5, v2

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 327
    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    const/4 v3, 0x1

    .line 329
    goto :goto_3

    .line 326
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 333
    .end local v4    # "j":I
    :cond_1
    :goto_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 334
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->get(I)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v0

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Serving in specific sim op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 336
    goto :goto_4

    .line 321
    .end local v3    # "isServingInSpecificPlmn":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 340
    .end local v2    # "i":I
    :cond_3
    :goto_4
    return-object v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 354
    const-string v0, "DcFcMgr"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 350
    const-string v0, "DcFcMgr"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 2

    .line 177
    const-string v0, "DcFcMgr.dispose"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->log(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->sDcFailCauseManager:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 179
    return-void
.end method

.method public blacklist getRetryTimeByIndex(ILcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;)J
    .locals 6
    .param p1, "idx"    # I
    .param p2, "op"    # Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 202
    const-wide/16 v0, -0x1

    .line 203
    .local v0, "retryTime":J
    const/4 v2, 0x0

    .line 205
    .local v2, "configStr":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;->$SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    const-string v2, "max_retries=10, 720000,1440000,2880000,5760000,11520000,23040000,23040000,23040000,23040000,46080000"

    .line 208
    nop

    .line 214
    :goto_0
    if-eqz v2, :cond_1

    .line 215
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "strArray":[Ljava/lang/String;
    :try_start_0
    aget-object v4, v3, p1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 223
    goto :goto_1

    .line 218
    :catch_0
    move-exception v4

    .line 220
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "get retry time by index fail"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->loge(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 226
    .end local v3    # "strArray":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :goto_1
    return-wide v0
.end method

.method public blacklist getSuggestedRetryDelayByOp(I)J
    .locals 8
    .param p1, "cause"    # I

    .line 182
    const-wide/16 v0, -0x2

    .line 183
    .local v0, "suggestedRetryTime":J
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getSpecificNetworkOperator()Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v2

    .line 185
    .local v2, "operator":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;->$SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->CC33_FAIL_CAUSE_TABLE:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 188
    .local v6, "tempCause":I
    if-ne p1, v6, :cond_1

    .line 189
    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->getValue()I

    move-result v7

    int-to-long v0, v7

    .line 187
    .end local v6    # "tempCause":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 192
    :cond_2
    nop

    .line 198
    :goto_1
    return-wide v0
.end method

.method public blacklist isNetworkOperatorForCC33()Z
    .locals 3

    .line 256
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getSpecificNetworkOperator()Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v0

    .line 258
    .local v0, "networkOp":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;->$SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 265
    const/4 v1, 0x0

    return v1

    .line 260
    :cond_0
    return v2
.end method

.method public blacklist isSpecificNetworkAndSimOperator(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;)Z
    .locals 3
    .param p1, "op"    # Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 230
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 232
    const-string v1, "op is null, return false!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->loge(Ljava/lang/String;)V

    .line 234
    return v0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getSpecificNetworkOperator()Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v1

    .line 238
    .local v1, "networkOp":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getSpecificSimOperator()Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v2

    .line 240
    .local v2, "simOp":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    if-ne p1, v1, :cond_1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public blacklist isSpecificNetworkOperator(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;)Z
    .locals 2
    .param p1, "op"    # Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 244
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 246
    const-string v1, "op is null, return false!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->loge(Ljava/lang/String;)V

    .line 248
    return v0

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getSpecificNetworkOperator()Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v1

    .line 252
    .local v1, "networkOp":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sDcFailCauseManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->sDcFailCauseManager:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method
