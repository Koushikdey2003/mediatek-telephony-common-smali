.class Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;
.super Ljava/lang/Object;
.source "MtkUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrRecord"
.end annotation


# instance fields
.field private blacklist mAnrIndex:I

.field private blacklist mFileIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMasterFileRecordNum:I

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;[B)V
    .locals 3
    .param p2, "record"    # [B

    .line 1856
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1847
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I

    .line 1857
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    .line 1859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PBR rec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->access$300(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;Ljava/lang/String;)V

    .line 1860
    new-instance p1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p2

    invoke-direct {p1, p2, v0, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1861
    .local p1, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V

    .line 1862
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    .line 1844
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    .line 1844
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I

    return v0
.end method

.method static synthetic blacklist access$202(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;
    .param p1, "x1"    # I

    .line 1844
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return p1
.end method


# virtual methods
.method blacklist parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 12
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "parentTag"    # I

    .line 1889
    const/4 v0, 0x0

    .line 1891
    .local v0, "tagNumberWithinParentTag":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1893
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 1919
    :pswitch_0
    const/4 v2, -0x1

    .line 1920
    .local v2, "sfi":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    .line 1922
    .local v7, "data":[B
    array-length v3, v7

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    array-length v3, v7

    const/4 v5, 0x3

    if-le v3, v5, :cond_0

    goto :goto_3

    .line 1927
    :cond_0
    array-length v3, v7

    if-ne v3, v5, :cond_1

    .line 1928
    aget-byte v3, v7, v4

    and-int/lit16 v2, v3, 0xff

    move v8, v2

    goto :goto_1

    .line 1927
    :cond_1
    move v8, v2

    .line 1931
    .end local v2    # "sfi":I
    .local v8, "sfi":I
    :goto_1
    const/4 v2, 0x0

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v4, v7, v3

    and-int/lit16 v4, v4, 0xff

    or-int v9, v2, v4

    .line 1933
    .local v9, "efid":I
    const/16 v2, 0xc4

    if-ne v1, v2, :cond_2

    .line 1934
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I

    mul-int/lit16 v4, v2, 0x100

    add-int/2addr v1, v4

    .line 1935
    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I

    move v10, v1

    goto :goto_2

    .line 1933
    :cond_2
    move v10, v1

    .line 1938
    .end local v1    # "tag":I
    .local v10, "tag":I
    :goto_2
    new-instance v11, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    move-object v1, v11

    move v3, p2

    move v4, v9

    move v5, v8

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;-><init>(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;IIII)V

    .line 1939
    .local v1, "object":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    .line 1940
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->access$400(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;)I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    .line 1941
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->access$300(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;Ljava/lang/String;)V

    .line 1943
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1944
    move v1, v10

    goto :goto_4

    .line 1923
    .end local v8    # "sfi":I
    .end local v9    # "efid":I
    .end local v10    # "tag":I
    .local v1, "tag":I
    .restart local v2    # "sfi":I
    :cond_3
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TLV length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkUsimPhoneBookManager"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    nop

    .line 1948
    .end local v2    # "sfi":I
    .end local v7    # "data":[B
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 1949
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1950
    return-void

    .line 1949
    :cond_4
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method blacklist parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .locals 5
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;

    .line 1870
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v0

    .line 1871
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1875
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    .line 1876
    .local v1, "data":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1877
    .local v2, "tlvEfSfi":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1878
    nop

    .line 1882
    .end local v1    # "data":[B
    .end local v2    # "tlvEfSfi":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->access$408(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;)I

    .line 1884
    return-void

    .line 1882
    :cond_0
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
