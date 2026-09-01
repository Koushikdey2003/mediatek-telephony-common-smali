.class public Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
.super Lcom/android/internal/telephony/uicc/AdnRecord;
.source "MtkAdnRecord.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkAdnRecord"

.field private static final blacklist SIM_NUM_PATTERN:Ljava/lang/String; = "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"


# instance fields
.field blacklist mAas:I

.field blacklist mAdditionalNumber:Ljava/lang/String;

.field blacklist mAdditionalNumber2:Ljava/lang/String;

.field blacklist mAdditionalNumber3:Ljava/lang/String;

.field blacklist mGrpIds:Ljava/lang/String;

.field blacklist mResult:I

.field blacklist mSne:Ljava/lang/String;

.field blacklist number2:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .line 156
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 157
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 164
    if-nez p3, :cond_0

    .line 165
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 167
    :cond_0
    if-nez p4, :cond_1

    .line 168
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 171
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;

    .line 174
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 176
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "anr2"    # Ljava/lang/String;
    .param p7, "anr3"    # Ljava/lang/String;
    .param p8, "emails"    # [Ljava/lang/String;
    .param p9, "grps"    # Ljava/lang/String;

    .line 205
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 207
    iput-object p6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 208
    iput-object p7, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 209
    iput-object p9, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "emails"    # [Ljava/lang/String;
    .param p7, "grps"    # Ljava/lang/String;

    .line 183
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 184
    iput-object p5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 187
    iput-object p7, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 191
    if-nez p3, :cond_0

    .line 192
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 194
    :cond_0
    if-nez p4, :cond_1

    .line 195
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 197
    :cond_1
    if-nez p5, :cond_2

    .line 198
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 201
    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;

    .line 148
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 149
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor blacklist <init>(II[B)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anr"    # Ljava/lang/String;

    .line 139
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 2
    .param p1, "record"    # [B

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([B)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private blacklist getMaskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v0, "null"

    return-object v0

    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_1
    const-string v0, "xx"

    return-object v0
.end method

.method private blacklist isContainChineseChar(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alphTag"    # Ljava/lang/String;

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 523
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 524
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\u4e00-\u9fa5]"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 526
    goto :goto_1

    .line 523
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private blacklist isPhoneNumberInvaild(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "tempPhoneNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    nop

    .line 538
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    const/4 v1, 0x1

    return v1

    .line 542
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist parseRecord([B)V
    .locals 5
    .param p1, "record"    # [B

    .line 475
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0xe

    invoke-static {p1, v1, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 478
    array-length v1, p1

    add-int/lit8 v1, v1, -0xe

    .line 480
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    .line 482
    .local v3, "numberLength":I
    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 484
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 485
    return-void

    .line 495
    :cond_0
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4, v3}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 499
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    .line 501
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    .line 502
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 504
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 505
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v1    # "footerOffset":I
    .end local v3    # "numberLength":I
    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "MtkAdnRecord"

    const-string v4, "Error parsing AdnRecordEx"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 510
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 511
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    .line 512
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 513
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 514
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 515
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 517
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .line 443
    :try_start_0
    array-length v0, p1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 444
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 449
    return-void

    .line 452
    :cond_1
    const/4 v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    .line 454
    return-void

    .line 457
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1, v1, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MtkAdnRecord"

    const-string v2, "Error parsing AdnRecordEx ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist buildAdnString(I)[B
    .locals 14
    .param p1, "recordSize"    # I

    .line 328
    const-string v0, "MtkAdnRecord"

    const-string v1, "in BuildAdnString"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    add-int/lit8 v1, p1, -0xe

    .line 333
    .local v1, "footerOffset":I
    const/4 v2, 0x0

    .line 336
    .local v2, "alphaIdLength":I
    new-array v3, p1, [B

    .line 337
    .local v3, "adnString":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, -0x1

    if-ge v4, p1, :cond_0

    .line 338
    aput-byte v5, v3, v4

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isPhoneNumberInvaild(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 341
    const-string v4, "[buildAdnString] invaild number"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/16 v0, -0xf

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 343
    return-object v6

    .line 345
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, "[buildAdnString] Max length of tag is "

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    .line 346
    const-string v4, "[buildAdnString] Empty dialing number"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput v10, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    goto :goto_1

    .line 349
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v11, 0x14

    if-le v4, v11, :cond_3

    .line 351
    iput v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 352
    const-string v4, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v6

    .line 355
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 356
    iput v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-object v6

    .line 361
    :cond_4
    iput v10, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 363
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    .local v4, "bcdNumber":[B
    if-nez v4, :cond_5

    return-object v6

    .line 369
    :cond_5
    nop

    .line 370
    add-int/lit8 v11, v1, 0x1

    array-length v12, v4

    invoke-static {v4, v9, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    add-int/lit8 v11, v1, 0x0

    array-length v12, v4

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    .line 375
    add-int/lit8 v11, v1, 0xc

    aput-byte v5, v3, v11

    .line 377
    add-int/lit8 v11, v1, 0xd

    aput-byte v5, v3, v11

    .line 381
    .end local v4    # "bcdNumber":[B
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 382
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isContainChineseChar(Ljava/lang/String;)Z

    move-result v4

    const-string v5, " adnString.length:"

    if-eqz v4, :cond_7

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildAdnString] getBytes,alphaTag:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_1
    const-string v4, "call getBytes"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v11, "utf-16be"

    invoke-virtual {v4, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 387
    .local v4, "byteTag":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "byteTag,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    nop

    .line 392
    new-array v11, v10, [B

    .line 393
    .local v11, "header":[B
    const/16 v12, -0x80

    aput-byte v12, v11, v9

    .line 394
    invoke-static {v11, v9, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    array-length v12, v4

    array-length v13, v3

    sub-int/2addr v13, v10

    if-le v12, v13, :cond_6

    .line 396
    iput v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] after getBytes byteTag.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-object v6

    .line 401
    :cond_6
    array-length v5, v4

    invoke-static {v4, v9, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    array-length v5, v4

    add-int/lit8 v2, v5, 0x1

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrarString"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v11    # "header":[B
    goto :goto_2

    .line 388
    .end local v4    # "byteTag":[B
    :catch_0
    move-exception v4

    .line 389
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v5, "[buildAdnString] getBytes exception"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v6

    .line 405
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_7
    const-string v4, "[buildAdnString] stringToGsm8BitPacked"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v4

    .line 407
    .local v4, "byteTag":[B
    array-length v2, v4

    .line 408
    array-length v10, v3

    if-le v2, v10, :cond_8

    .line 409
    iput v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] after stringToGsm8BitPacked byteTag.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-object v6

    .line 414
    :cond_8
    array-length v5, v4

    invoke-static {v4, v9, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    .end local v4    # "byteTag":[B
    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v4, :cond_a

    if-le v2, v1, :cond_a

    .line 419
    iput v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",alphaIdLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-object v6

    .line 425
    :cond_a
    return-object v3

    .line 365
    :catch_1
    move-exception v0

    .line 366
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_12:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 368
    .local v4, "cmdEx":Lcom/android/internal/telephony/CommandException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid number for BCD "

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public blacklist getAasIndex()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    return v0
.end method

.method public blacklist getAdditionalNumber()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAdditionalNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "number":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdditionalNumber Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkAdnRecord"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-object v0
.end method

.method public blacklist getErrorNumber()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    return v0
.end method

.method public blacklist getGrpIds()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSne()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0
.end method

.method public blacklist isEqual(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 302
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 303
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0
.end method

.method public blacklist setAasIndex(I)V
    .locals 0
    .param p1, "aas"    # I

    .line 260
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 261
    return-void
.end method

.method public blacklist setAnr(Ljava/lang/String;)V
    .locals 0
    .param p1, "anr"    # Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public blacklist setAnr(Ljava/lang/String;I)V
    .locals 2
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 248
    if-nez p2, :cond_0

    .line 249
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 251
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 253
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnr Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecord"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void
.end method

.method public blacklist setGrpIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "grps"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public blacklist setNumber2(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;

    .line 549
    if-eqz p1, :cond_0

    .line 550
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->number2:Ljava/lang/String;

    .line 551
    :cond_0
    return-void
.end method

.method public blacklist setRecordIndex(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .line 272
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    .line 273
    return-void
.end method

.method public blacklist setSne(Ljava/lang/String;)V
    .locals 0
    .param p1, "sne"    # Ljava/lang/String;

    .line 264
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",alphaTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 288
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 289
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",emails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",grpIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",sne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 310
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    return-void
.end method
