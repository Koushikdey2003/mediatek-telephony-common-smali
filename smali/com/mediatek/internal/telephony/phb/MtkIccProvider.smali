.class public Lcom/mediatek/internal/telephony/phb/MtkIccProvider;
.super Ljava/lang/Object;
.source "MtkIccProvider.java"

# interfaces
.implements Lcom/android/internal/telephony/IccInternalInterface;


# static fields
.field private static final blacklist ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final blacklist ADDRESS_SUPPORT_AAS:I = 0x8

.field private static final blacklist ADDRESS_SUPPORT_SNE:I = 0x9

.field protected static final blacklist ADN:I = 0x1

.field protected static final blacklist ADN_ALL:I = 0x9

.field protected static final blacklist ADN_SUB:I = 0x2

.field protected static final blacklist COLOROS_ADN_CAPACITY:I = 0x1e

.field protected static final blacklist COLOROS_BASE:I = 0x18

.field protected static final blacklist COLOROS_EMAIL_LEN:I = 0x1c

.field protected static final blacklist COLOROS_NAME_LEN:I = 0x1a

.field protected static final blacklist COLOROS_PB_PBR_EXIST:I = 0x1d

.field protected static final blacklist COLOROS_PB_READY:I = 0x1b

.field protected static final blacklist COLOROS_TOTAL:I = 0x18

.field protected static final blacklist COLOROS_USED:I = 0x19

.field private static final blacklist DBG:Z

.field protected static final blacklist FDN:I = 0x3

.field protected static final blacklist FDN_SUB:I = 0x4

.field protected static final blacklist SDN:I = 0x5

.field protected static final blacklist SDN_SUB:I = 0x6

.field protected static final blacklist STR_ANR:Ljava/lang/String; = "anr"

.field protected static final blacklist STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final blacklist STR_INDEX:Ljava/lang/String; = "index"

.field protected static final blacklist STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final blacklist STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final blacklist STR_TAG:Ljava/lang/String; = "tag"

.field private static final blacklist TAG:Ljava/lang/String; = "MtkIccProvider"

.field protected static final blacklist UPB:I = 0x7

.field protected static final blacklist UPB_SUB:I = 0x8

.field private static blacklist URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 78
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    .line 80
    const-string v1, "index"

    const-string v2, "name"

    const-string v3, "number"

    const-string v4, "emails"

    const-string v5, "additionalNumber"

    const-string v6, "groupIds"

    const-string v7, "_id"

    const-string v8, "aas"

    const-string v9, "sne"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/UriMatcher;Landroid/content/Context;)V
    .locals 3
    .param p1, "URL_MATCHER"    # Landroid/content/UriMatcher;
    .param p2, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkIccProvider URL_MATCHER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 148
    const-string v0, "icc"

    const-string v1, "all_space/#"

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    const-string v1, "used_space/#"

    const/16 v2, 0x19

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    const-string v1, "sim_name_length/#"

    const/16 v2, 0x1a

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    const-string v1, "phonebook_ready/#"

    const/16 v2, 0x1b

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    const-string v1, "emailLen/#"

    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    const-string v1, "phonebook_pbrexist/#"

    const/16 v2, 0x1d

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    const-string v1, "adn_capacity/subId/#"

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    const-string v1, "pbr"

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    const-string v1, "pbr/subId/#"

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sput-object p1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 161
    iput-object p2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IOplusUiccManager;->DEFAULT:Lcom/android/internal/telephony/IOplusUiccManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusUiccManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    .line 166
    return-void
.end method

.method private blacklist addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 14
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .line 847
    move-object v1, p0

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: efType=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    move-object/from16 v2, p2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", emails="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    if-nez p4, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subscription="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p6

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p6

    .line 852
    :goto_1
    const/4 v13, 0x0

    .line 855
    .local v13, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 856
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_2

    .line 857
    const-string v6, ""

    const-string v7, ""

    move-object v3, v0

    move/from16 v4, p6

    move v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v3

    .line 864
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_2
    :goto_2
    goto :goto_3

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 860
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 861
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 865
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 866
    :cond_4
    return v13
.end method

.method private blacklist addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 19
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "strAnr"    # Ljava/lang/String;
    .param p5, "strEmail"    # Ljava/lang/String;
    .param p6, "strGas"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .line 872
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUSIMRecordToEf: efType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", number="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    move-object/from16 v14, p3

    invoke-direct {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", anr ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p4

    invoke-direct {v1, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", emails="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", subId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 872
    :cond_0
    move/from16 v3, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move/from16 v12, p7

    .line 877
    :goto_0
    const/16 v17, 0x0

    .line 879
    .local v17, "result":I
    const/4 v0, 0x0

    .line 880
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 881
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 882
    const/4 v4, 0x0

    aput-object v2, v0, v4

    move-object/from16 v18, v0

    goto :goto_1

    .line 886
    :cond_1
    move-object/from16 v18, v0

    .end local v0    # "emails":[Ljava/lang/String;
    .local v18, "emails":[Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 888
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_2

    .line 889
    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v4, v0

    move/from16 v5, p7

    move/from16 v6, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-interface/range {v4 .. v16}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v4

    .line 896
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_2
    move/from16 v0, v17

    goto :goto_3

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 892
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 893
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 896
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 897
    :goto_2
    move/from16 v0, v17

    .end local v17    # "result":I
    .local v0, "result":I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addUsimRecordToEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 898
    return v0
.end method

.method private blacklist deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 15
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .line 1023
    move-object v1, p0

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: efType=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    move-object/from16 v2, p2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pin2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    move-object/from16 v12, p5

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subscription="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move/from16 v13, p6

    .line 1028
    :goto_0
    const/4 v14, 0x0

    .line 1031
    .local v14, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 1032
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_1

    .line 1033
    const-string v8, ""

    const-string v9, ""

    move-object v3, v0

    move/from16 v4, p6

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v3

    .line 1040
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_1
    :goto_1
    goto :goto_2

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1036
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1037
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1041
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1042
    :cond_3
    return v14
.end method

.method private blacklist deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .line 1046
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1050
    :cond_0
    const/4 v0, 0x0

    .line 1053
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 1055
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_1

    .line 1056
    const-string v5, ""

    const-string v6, ""

    .line 1057
    move-object v2, v1

    move v3, p4

    move v4, p1

    move v7, p2

    move-object v8, p3

    invoke-interface/range {v2 .. v8}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1063
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1061
    :catch_0
    move-exception v1

    .line 1062
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1059
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1060
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1064
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1065
    return v0
.end method

.method private blacklist deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 19
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "subId"    # I

    .line 1070
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEf: efType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    move-object/from16 v15, p2

    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-direct {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1070
    :cond_0
    move/from16 v2, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    .line 1074
    :goto_0
    const/16 v16, 0x0

    .line 1077
    .local v16, "result":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 1079
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_1

    .line 1080
    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v0

    move/from16 v4, p5

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    invoke-interface/range {v3 .. v15}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v16, v3

    .line 1087
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_1
    move/from16 v0, v16

    goto :goto_2

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1083
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1084
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1087
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1088
    :goto_1
    move/from16 v0, v16

    .end local v16    # "result":I
    .local v0, "result":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteUsimRecordFromEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1089
    return v0
.end method

.method private blacklist deleteUsimRecordFromEfByIndex(III)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "subId"    # I

    .line 1093
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUsimRecordFromEfByIndex: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1096
    :cond_0
    const/4 v0, 0x0

    .line 1099
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 1101
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_1

    .line 1102
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v3, p3

    move v4, p1

    move v10, p2

    invoke-interface/range {v2 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1109
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1107
    :catch_0
    move-exception v1

    .line 1108
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1105
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1106
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1110
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1111
    return v0
.end method

.method private blacklist getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    .locals 1

    .line 1208
    nop

    .line 1209
    const-string v0, "mtksimphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1208
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 1211
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    return-object v0
.end method

.method private blacklist getMaskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1299
    if-nez p1, :cond_0

    .line 1300
    const-string v0, "null"

    return-object v0

    .line 1301
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 1302
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

    .line 1304
    :cond_1
    const-string v0, "xx"

    return-object v0
.end method

.method private blacklist getRequestSubId(Landroid/net/Uri;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .line 1214
    const-string v0, "Unknown URL "

    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestSubId url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1217
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1223
    :catch_0
    move-exception v1

    .line 1224
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1218
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1219
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 9
    .param p1, "efType"    # I

    .line 252
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 253
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 254
    .local v1, "subIdList":[I
    array-length v2, v1

    new-array v2, v2, [Landroid/database/Cursor;

    .line 256
    .local v2, "result":[Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 257
    .local v3, "i":I
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v1, v5

    .line 258
    .local v6, "subId":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-direct {p0, p1, v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v8

    aput-object v8, v2, v3

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAllSimContacts: subId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "MtkIccProvider"

    invoke-static {v8, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v6    # "subId":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 262
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_0
    new-instance v4, Landroid/database/MergeCursor;

    invoke-direct {v4, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v4
.end method

.method private blacklist loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 7
    .param p1, "efType"    # I
    .param p2, "subId"    # I

    .line 266
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromEf: efType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 272
    .local v0, "slotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 274
    .local v1, "simState":I
    const/4 v2, 0x2

    const-string v3, "MtkIccProvider"

    if-ne v1, v2, :cond_1

    .line 275
    const-string v2, "Cannot load ADN records SIM_STATE_PIN_REQUIRED"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v2

    .line 280
    :cond_1
    const/4 v2, 0x0

    .line 282
    .local v2, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v4

    .line 283
    .local v4, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v4, :cond_2

    .line 284
    invoke-interface {v4, p2, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 290
    .end local v4    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_2
    :goto_0
    goto :goto_1

    .line 288
    :catch_0
    move-exception v4

    .line 289
    .local v4, "ex":Ljava/lang/SecurityException;
    sget-boolean v5, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    .end local v4    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 287
    .local v4, "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 294
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 295
    .local v3, "N":I
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 296
    .local v4, "cursor":Landroid/database/MatrixCursor;
    sget-boolean v5, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adnRecords.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 297
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_5

    .line 298
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {p0, v6, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadRecord(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Landroid/database/MatrixCursor;I)V

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 300
    .end local v5    # "i":I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query success, size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 301
    return-object v4

    .line 304
    .end local v3    # "N":I
    .end local v4    # "cursor":Landroid/database/MatrixCursor;
    :cond_6
    const-string v4, "Cannot load ADN records"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v3
.end method

.method private blacklist loadRecord(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 16
    .param p1, "record"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .line 1121
    move-object/from16 v1, p0

    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v0

    .line 1122
    .local v2, "len":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1123
    new-array v3, v2, [Ljava/lang/Object;

    .line 1124
    .local v3, "contact":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    .line 1125
    .local v4, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 1126
    .local v5, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 1127
    .local v6, "emails":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1128
    .local v7, "anr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 1129
    .local v8, "grpIds":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1131
    .local v9, "index":Ljava/lang/String;
    const/16 v0, 0x8

    if-lt v2, v0, :cond_0

    .line 1132
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v10

    .line 1133
    .local v10, "aasIndex":I
    const/4 v11, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    .line 1135
    .end local v10    # "aasIndex":I
    :cond_0
    const/16 v10, 0x9

    if-lt v2, v10, :cond_1

    .line 1136
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getSne()Ljava/lang/String;

    move-result-object v10

    .line 1137
    .local v10, "sne":Ljava/lang/String;
    aput-object v10, v3, v0

    .line 1139
    .end local v10    # "sne":Ljava/lang/String;
    :cond_1
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_2

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadRecord: record:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    :cond_2
    move-object/from16 v10, p1

    .line 1142
    :goto_0
    const/4 v11, 0x0

    aput-object v9, v3, v11

    .line 1143
    const/4 v12, 0x1

    aput-object v4, v3, v12

    .line 1144
    const/4 v0, 0x2

    aput-object v5, v3, v0

    .line 1147
    const-string v13, "ro.vendor.mtk_kor_customization"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1148
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v0, :cond_5

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v13, 0xfefe

    if-ne v0, v13, :cond_5

    .line 1149
    const/4 v13, 0x0

    .line 1150
    .local v13, "ucslen":I
    const-string v14, ""

    .line 1153
    .local v14, "strKSC":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v15, "utf-16be"

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1155
    .local v0, "inData":[B
    new-instance v15, Ljava/lang/String;

    const-string v12, "KSC5601"

    invoke-direct {v15, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v15

    .line 1158
    .end local v0    # "inData":[B
    goto :goto_1

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v12, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Implausible UnsupportedEncodingException : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1160
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_1
    nop

    .line 1161
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    .line 1162
    .end local v13    # "ucslen":I
    .local v0, "ucslen":I
    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v13, 0xf8f7

    if-ne v12, v13, :cond_4

    .line 1163
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1166
    :cond_4
    invoke-virtual {v14, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v3, v13

    .line 1167
    sget-boolean v12, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Decode ADN using KSC5601 : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v3, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1172
    .end local v0    # "ucslen":I
    .end local v14    # "strKSC":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_7

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1174
    .local v0, "emailString":Ljava/lang/StringBuilder;
    array-length v12, v6

    :goto_3
    if-ge v11, v12, :cond_7

    aget-object v13, v6, v11

    .line 1180
    .local v13, "email":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 1182
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    const/4 v14, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 1174
    .end local v13    # "email":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1192
    .end local v0    # "emailString":Ljava/lang/StringBuilder;
    :cond_7
    const/4 v0, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v0

    .line 1193
    const/4 v0, 0x5

    aput-object v8, v3, v0

    .line 1194
    const/4 v0, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v0

    .line 1195
    move-object/from16 v11, p2

    invoke-virtual {v11, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 1122
    .end local v3    # "contact":[Ljava/lang/Object;
    .end local v4    # "alphaTag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v7    # "anr":Ljava/lang/String;
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "index":Ljava/lang/String;
    :cond_8
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 1197
    :goto_4
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1200
    const-string v0, "MtkIccProvider"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1204
    const-string v0, "MtkIccProvider"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-void
.end method

.method private blacklist normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 497
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 498
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "len of input String is 0"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 499
    :cond_0
    return-object p1

    .line 501
    :cond_1
    move-object v1, p1

    .line 503
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 504
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 507
    :cond_2
    return-object v1
.end method

.method private blacklist updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .line 903
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEf: efType=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldname="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldnumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newname="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    move-object/from16 v12, p4

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newnumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-direct {v1, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subscription="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p7

    .line 908
    :goto_0
    const/4 v15, 0x0

    .line 911
    .local v15, "result":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 912
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_1

    .line 913
    move-object v3, v0

    move/from16 v4, p7

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v15, v3

    .line 920
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_1
    :goto_1
    goto :goto_2

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 916
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 917
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 921
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 922
    :cond_3
    return v15
.end method

.method private blacklist updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .line 927
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 932
    :cond_0
    const/4 v0, 0x0

    .line 935
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 937
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_1

    .line 938
    move-object v2, v1

    move v3, p6

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p2

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 945
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_1
    :goto_0
    goto :goto_1

    .line 943
    :catch_0
    move-exception v1

    .line 944
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 941
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 942
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 946
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 947
    return v0
.end method

.method private blacklist updatePhbStorageInfo(II)V
    .locals 5
    .param p1, "update"    # I
    .param p2, "subId"    # I

    .line 1278
    const/4 v0, 0x0

    .line 1280
    .local v0, "res":Z
    :try_start_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1281
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1282
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    .line 1283
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 1284
    .local v3, "mFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1285
    invoke-static {p1}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->updatePhbStorageInfo(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 1287
    :cond_0
    const-string v4, "[updatePhbStorageInfo] is not a csim card"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    const/4 v0, 0x0

    .line 1293
    .end local v1    # "phoneId":I
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "mFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1291
    :catch_0
    move-exception v1

    .line 1292
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1294
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePhbStorageInfo] res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method private blacklist updateUsimPBRecordsByIndexWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;II)I
    .locals 3
    .param p1, "efType"    # I
    .param p2, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "index"    # I
    .param p4, "subId"    # I

    .line 1254
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsByIndexWithError subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",newAdn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1258
    :cond_0
    const/4 v0, 0x0

    .line 1261
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 1263
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_1

    .line 1264
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1270
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1268
    :catch_0
    move-exception v1

    .line 1269
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1266
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1267
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1271
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimPBRecordsByIndexWithError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1272
    return v0
.end method

.method private blacklist updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I
    .locals 3
    .param p1, "efType"    # I
    .param p2, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "subId"    # I

    .line 1231
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsBySearchWithError subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oldAdn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",newAdn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1235
    :cond_0
    const/4 v0, 0x0

    .line 1238
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 1240
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_1

    .line 1241
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1247
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1245
    :catch_0
    move-exception v1

    .line 1246
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1243
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1244
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1248
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimPBRecordsBySearchWithError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1249
    return v0
.end method

.method private blacklist updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 20
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "strAnr"    # Ljava/lang/String;
    .param p7, "strEmail"    # Ljava/lang/String;
    .param p8, "subId"    # I

    .line 953
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEf: efType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", oldname="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    move-object/from16 v15, p2

    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldnumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    move-object/from16 v14, p3

    invoke-direct {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newname="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    move-object/from16 v13, p4

    invoke-direct {v1, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newnumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    move-object/from16 v12, p5

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", anr ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", emails="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 953
    :cond_0
    move/from16 v3, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v11, p6

    .line 962
    :goto_0
    const/16 v17, 0x0

    .line 964
    .local v17, "result":I
    const/4 v0, 0x0

    .line 965
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 966
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 967
    const/4 v4, 0x0

    aput-object v2, v0, v4

    move-object/from16 v18, v0

    goto :goto_1

    .line 965
    :cond_1
    move-object/from16 v18, v0

    .line 971
    .end local v0    # "emails":[Ljava/lang/String;
    .local v18, "emails":[Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 973
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_2

    .line 974
    const-string v9, ""

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v4, v0

    move/from16 v5, p8

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v11, v16

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, v19

    move-object/from16 v16, v18

    invoke-interface/range {v4 .. v16}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v4

    .line 982
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_2
    move/from16 v0, v17

    goto :goto_3

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 978
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 979
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 982
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 983
    :goto_2
    move/from16 v0, v17

    .end local v17    # "result":I
    .local v0, "result":I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUsimRecordInEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 984
    return v0
.end method

.method private blacklist updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "strAnr"    # Ljava/lang/String;
    .param p6, "strEmail"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .line 991
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEfByIndex: efType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Index="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newname="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    move-object/from16 v14, p3

    invoke-direct {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newnumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    move-object/from16 v15, p4

    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", anr ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    move-object/from16 v12, p5

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", emails="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :cond_0
    move/from16 v3, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v12, p5

    .line 997
    :goto_0
    const/16 v16, 0x0

    .line 999
    .local v16, "result":I
    const/4 v0, 0x0

    .line 1000
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1001
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 1002
    const/4 v4, 0x0

    aput-object v2, v0, v4

    move-object/from16 v17, v0

    goto :goto_1

    .line 1000
    :cond_1
    move-object/from16 v17, v0

    .line 1006
    .end local v0    # "emails":[Ljava/lang/String;
    .local v17, "emails":[Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 1008
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_2

    .line 1009
    const/4 v10, 0x0

    move-object v4, v0

    move/from16 v5, p7

    move/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, v17

    move/from16 v12, p2

    invoke-interface/range {v4 .. v12}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v16, v4

    .line 1016
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_2
    move/from16 v0, v16

    goto :goto_3

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1012
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1013
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1016
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1017
    :goto_2
    move/from16 v0, v16

    .end local v16    # "result":I
    .local v0, "result":I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUsimRecordInEfByIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1018
    return v0
.end method


# virtual methods
.method public blacklist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 515
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 517
    .local v10, "match":I
    const/4 v0, 0x1

    const/4 v1, 0x7

    const/16 v2, 0x8

    if-eq v10, v0, :cond_5

    const/4 v0, 0x2

    if-eq v10, v0, :cond_4

    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x4

    if-eq v10, v0, :cond_2

    if-eq v10, v1, :cond_1

    if-ne v10, v2, :cond_0

    .line 544
    const/16 v0, 0x4f30

    .line 545
    .local v0, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v3

    .line 546
    .local v3, "subId":I
    move v11, v0

    move v12, v3

    goto :goto_0

    .line 548
    .end local v0    # "efType":I
    .end local v3    # "subId":I
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_1
    const/16 v0, 0x4f30

    .line 540
    .restart local v0    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    .line 541
    .restart local v3    # "subId":I
    move v11, v0

    move v12, v3

    goto :goto_0

    .line 534
    .end local v0    # "efType":I
    .end local v3    # "subId":I
    :cond_2
    const/16 v0, 0x6f3b

    .line 535
    .restart local v0    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v3

    .line 536
    .restart local v3    # "subId":I
    move v11, v0

    move v12, v3

    goto :goto_0

    .line 529
    .end local v0    # "efType":I
    .end local v3    # "subId":I
    :cond_3
    const/16 v0, 0x6f3b

    .line 530
    .restart local v0    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    .line 531
    .restart local v3    # "subId":I
    move v11, v0

    move v12, v3

    goto :goto_0

    .line 524
    .end local v0    # "efType":I
    .end local v3    # "subId":I
    :cond_4
    const/16 v0, 0x6f3a

    .line 525
    .restart local v0    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v3

    .line 526
    .restart local v3    # "subId":I
    move v11, v0

    move v12, v3

    goto :goto_0

    .line 519
    .end local v0    # "efType":I
    .end local v3    # "subId":I
    :cond_5
    const/16 v0, 0x6f3a

    .line 520
    .restart local v0    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    .line 521
    .restart local v3    # "subId":I
    move v11, v0

    move v12, v3

    .line 553
    .end local v0    # "efType":I
    .end local v3    # "subId":I
    .local v11, "efType":I
    .local v12, "subId":I
    :goto_0
    const-string v0, ""

    .line 554
    .local v0, "tag":Ljava/lang/String;
    const-string v3, ""

    .line 555
    .local v3, "number":Ljava/lang/String;
    const/4 v4, 0x0

    .line 556
    .local v4, "emails":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 557
    .local v5, "pin2":Ljava/lang/String;
    const/4 v6, -0x1

    .line 559
    .local v6, "nIndex":I
    const-string v7, " AND "

    move-object/from16 v13, p2

    invoke-virtual {v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 560
    .local v14, "tokens":[Ljava/lang/String;
    array-length v7, v14

    .line 565
    .local v7, "n":I
    const/4 v15, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v15

    move-object v15, v0

    move v0, v7

    move-object v7, v3

    move/from16 v23, v6

    move-object v6, v5

    move/from16 v5, v23

    .line 567
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "emails":[Ljava/lang/String;
    .local v0, "n":I
    .local v5, "nIndex":I
    .local v6, "pin2":Ljava/lang/String;
    .local v7, "number":Ljava/lang/String;
    .local v15, "tag":Ljava/lang/String;
    .local v16, "emails":[Ljava/lang/String;
    .local v17, "id":Ljava/lang/String;
    :goto_1
    const/4 v4, -0x1

    add-int/lit8 v18, v0, -0x1

    .end local v0    # "n":I
    .local v18, "n":I
    const/4 v0, 0x0

    if-ltz v18, :cond_10

    .line 568
    aget-object v3, v14, v18

    .line 569
    .local v3, "param":Ljava/lang/String;
    sget-boolean v19, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v19, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsing \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 570
    :cond_6
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 571
    .local v1, "index":I
    const-string v2, "MtkIccProvider"

    if-ne v1, v4, :cond_7

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolve: bad whereClause parameter: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move/from16 v0, v18

    const/4 v1, 0x7

    const/16 v2, 0x8

    goto :goto_1

    .line 577
    :cond_7
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v3

    .end local v3    # "param":Ljava/lang/String;
    .local v20, "param":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "val":Ljava/lang/String;
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing key is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " index of = is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " val is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 589
    :cond_8
    const-string v0, "index"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 595
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v5    # "nIndex":I
    .local v0, "nIndex":I
    move v5, v0

    goto/16 :goto_3

    .line 601
    .end local v0    # "nIndex":I
    .restart local v5    # "nIndex":I
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 599
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 600
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    goto :goto_3

    .line 605
    :cond_9
    const-string v0, "tag"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 606
    invoke-direct {v8, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local v15    # "tag":Ljava/lang/String;
    .local v0, "tag":Ljava/lang/String;
    goto :goto_3

    .line 607
    .end local v0    # "tag":Ljava/lang/String;
    .restart local v15    # "tag":Ljava/lang/String;
    :cond_a
    const-string v0, "number"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 608
    invoke-direct {v8, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .end local v7    # "number":Ljava/lang/String;
    .local v0, "number":Ljava/lang/String;
    goto :goto_3

    .line 609
    .end local v0    # "number":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    :cond_b
    const-string v0, "emails"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 611
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .end local v16    # "emails":[Ljava/lang/String;
    .local v0, "emails":[Ljava/lang/String;
    goto :goto_3

    .line 612
    .end local v0    # "emails":[Ljava/lang/String;
    .restart local v16    # "emails":[Ljava/lang/String;
    :cond_c
    const-string v0, "pin2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 613
    invoke-direct {v8, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "pin2":Ljava/lang/String;
    .local v0, "pin2":Ljava/lang/String;
    goto :goto_3

    .line 618
    .end local v0    # "pin2":Ljava/lang/String;
    .restart local v6    # "pin2":Ljava/lang/String;
    :cond_d
    const-string v0, "id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 619
    invoke-direct {v8, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .end local v17    # "id":Ljava/lang/String;
    .local v0, "id":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete: id="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 623
    .end local v1    # "index":I
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v20    # "param":Ljava/lang/String;
    :cond_e
    move-object/from16 v17, v0

    .end local v0    # "id":Ljava/lang/String;
    .restart local v17    # "id":Ljava/lang/String;
    :cond_f
    :goto_3
    move-object/from16 v9, p1

    move/from16 v0, v18

    const/4 v1, 0x7

    const/16 v2, 0x8

    goto/16 :goto_1

    .line 624
    :cond_10
    const/4 v9, 0x0

    .line 625
    .local v9, "result":I
    const-string v3, "delete result = "

    if-lez v5, :cond_14

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 627
    const/4 v1, 0x7

    if-eq v1, v10, :cond_12

    const/16 v1, 0x8

    if-ne v1, v10, :cond_11

    goto :goto_4

    .line 637
    :cond_11
    const-string v0, "deleteIccRecordFromEfByIndex "

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 638
    invoke-direct {v8, v11, v5, v6, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v0

    .end local v9    # "result":I
    .local v0, "result":I
    goto :goto_5

    .line 628
    .end local v0    # "result":I
    .restart local v9    # "result":I
    :cond_12
    :goto_4
    const-string v0, "deleteUsimRecordFromEfByIndex "

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 629
    invoke-direct {v8, v11, v5, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteUsimRecordFromEfByIndex(III)I

    move-result v0

    .line 632
    .end local v9    # "result":I
    .restart local v0    # "result":I
    if-lez v0, :cond_13

    .line 633
    invoke-direct {v8, v4, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updatePhbStorageInfo(II)V

    .line 640
    :cond_13
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 641
    return v0

    .line 646
    .end local v0    # "result":I
    .restart local v9    # "result":I
    :cond_14
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 653
    const/16 v1, 0x6f3b

    if-ne v11, v1, :cond_15

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 654
    const/4 v0, -0x5

    return v0

    .line 658
    :cond_15
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 659
    return v0

    .line 662
    :cond_16
    const/4 v1, 0x7

    if-eq v1, v10, :cond_18

    const/16 v1, 0x8

    if-ne v1, v10, :cond_17

    move-object v0, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v9

    move-object v9, v7

    goto :goto_6

    .line 678
    :cond_17
    const-string v0, "deleteIccRecordFromEf "

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 679
    move-object/from16 v1, p0

    move v2, v11

    move-object v0, v3

    move-object v3, v15

    move-object v4, v7

    move/from16 v20, v5

    .end local v5    # "nIndex":I
    .local v20, "nIndex":I
    move-object/from16 v5, v16

    move-object/from16 v21, v6

    .end local v6    # "pin2":Ljava/lang/String;
    .local v21, "pin2":Ljava/lang/String;
    move/from16 v22, v9

    move-object v9, v7

    .end local v7    # "number":Ljava/lang/String;
    .local v9, "number":Ljava/lang/String;
    .local v22, "result":I
    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .end local v22    # "result":I
    .local v1, "result":I
    goto :goto_8

    .line 662
    .end local v1    # "result":I
    .end local v20    # "nIndex":I
    .end local v21    # "pin2":Ljava/lang/String;
    .restart local v5    # "nIndex":I
    .restart local v6    # "pin2":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    .local v9, "result":I
    :cond_18
    move-object v0, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v9

    move-object v9, v7

    .line 663
    .end local v5    # "nIndex":I
    .end local v6    # "pin2":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    .local v9, "number":Ljava/lang/String;
    .restart local v20    # "nIndex":I
    .restart local v21    # "pin2":Ljava/lang/String;
    .restart local v22    # "result":I
    :goto_6
    sget-object v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_19

    .line 664
    const-string v1, "updateUsimPBRecordsBySearchWithError "

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 665
    new-instance v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    const-string v2, ""

    invoke-direct {v1, v15, v9, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v3, v2, v2, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v11, v1, v3, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v1

    move v7, v4

    .end local v22    # "result":I
    .restart local v1    # "result":I
    goto :goto_7

    .line 668
    .end local v1    # "result":I
    .restart local v22    # "result":I
    :cond_19
    const-string v1, "deleteUsimRecordFromEf "

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 669
    move-object/from16 v1, p0

    move v2, v11

    move-object v3, v15

    move v7, v4

    move-object v4, v9

    move-object/from16 v5, v16

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    .line 673
    .end local v22    # "result":I
    .restart local v1    # "result":I
    :goto_7
    if-lez v1, :cond_1a

    .line 674
    invoke-direct {v8, v7, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updatePhbStorageInfo(II)V

    .line 682
    :cond_1a
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 683
    return v1

    .line 647
    .end local v1    # "result":I
    .end local v20    # "nIndex":I
    .end local v21    # "pin2":Ljava/lang/String;
    .restart local v5    # "nIndex":I
    .restart local v6    # "pin2":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    .local v9, "result":I
    :cond_1b
    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v9

    move-object v9, v7

    .end local v5    # "nIndex":I
    .end local v6    # "pin2":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    .local v9, "number":Ljava/lang/String;
    .restart local v20    # "nIndex":I
    .restart local v21    # "pin2":Ljava/lang/String;
    .restart local v22    # "result":I
    const/4 v1, 0x7

    if-eq v10, v1, :cond_1d

    const/16 v1, 0x8

    if-ne v1, v10, :cond_1c

    move-object/from16 v6, v21

    goto :goto_9

    .line 650
    :cond_1c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v6, v21

    .end local v21    # "pin2":Ljava/lang/String;
    .restart local v6    # "pin2":Ljava/lang/String;
    invoke-direct {v8, v11, v0, v6, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v0

    return v0

    .line 647
    .end local v6    # "pin2":Ljava/lang/String;
    .restart local v21    # "pin2":Ljava/lang/String;
    :cond_1d
    move-object/from16 v6, v21

    .line 648
    .end local v21    # "pin2":Ljava/lang/String;
    .restart local v6    # "pin2":Ljava/lang/String;
    :goto_9
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v8, v11, v0, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteUsimRecordFromEfByIndex(III)I

    move-result v0

    return v0
.end method

.method public blacklist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 23
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .line 312
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v0, 0x0

    .line 315
    .local v0, "pin2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 317
    .local v11, "match":I
    const-string v12, "Cannot insert into URL: "

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x7

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x1

    if-eq v11, v5, :cond_5

    if-eq v11, v7, :cond_4

    const-string v1, "pin2"

    if-eq v11, v14, :cond_3

    if-eq v11, v13, :cond_2

    if-eq v11, v15, :cond_1

    if-ne v11, v6, :cond_0

    .line 346
    const/16 v1, 0x4f30

    .line 347
    .local v1, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 348
    .local v2, "subId":I
    move-object/from16 v16, v0

    move v4, v1

    move v3, v2

    goto :goto_0

    .line 351
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_1
    const/16 v1, 0x4f30

    .line 342
    .restart local v1    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 343
    .restart local v2    # "subId":I
    move-object/from16 v16, v0

    move v4, v1

    move v3, v2

    goto :goto_0

    .line 335
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :cond_2
    const/16 v2, 0x6f3b

    .line 336
    .local v2, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v3

    .line 337
    .local v3, "subId":I
    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    move-object/from16 v16, v0

    move v4, v2

    goto :goto_0

    .line 329
    .end local v2    # "efType":I
    .end local v3    # "subId":I
    :cond_3
    const/16 v2, 0x6f3b

    .line 330
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    .line 331
    .restart local v3    # "subId":I
    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    move-object/from16 v16, v0

    move v4, v2

    goto :goto_0

    .line 324
    .end local v2    # "efType":I
    .end local v3    # "subId":I
    :cond_4
    const/16 v1, 0x6f3a

    .line 325
    .restart local v1    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 326
    .local v2, "subId":I
    move-object/from16 v16, v0

    move v4, v1

    move v3, v2

    goto :goto_0

    .line 319
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :cond_5
    const/16 v1, 0x6f3a

    .line 320
    .restart local v1    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 321
    .restart local v2    # "subId":I
    move-object/from16 v16, v0

    move v4, v1

    move v3, v2

    .line 355
    .end local v0    # "pin2":Ljava/lang/String;
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    .restart local v3    # "subId":I
    .local v4, "efType":I
    .local v16, "pin2":Ljava/lang/String;
    :goto_0
    const-string v0, "tag"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, "tag":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 357
    .local v18, "number":Ljava/lang/String;
    const/16 v19, 0x0

    .line 358
    .local v19, "result":I
    const/16 v20, 0x0

    if-eq v15, v11, :cond_b

    if-ne v6, v11, :cond_6

    move/from16 v21, v3

    move v15, v4

    move v13, v5

    move v14, v6

    goto/16 :goto_3

    .line 423
    :cond_6
    if-nez v18, :cond_7

    .line 424
    const-string v18, ""

    move-object/from16 v2, v18

    goto :goto_1

    .line 423
    :cond_7
    move-object/from16 v2, v18

    .line 426
    .end local v18    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_1
    if-nez v17, :cond_8

    .line 427
    const-string v17, ""

    move-object/from16 v1, v17

    goto :goto_2

    .line 426
    :cond_8
    move-object/from16 v1, v17

    .line 429
    .end local v17    # "tag":Ljava/lang/String;
    .local v1, "tag":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIccRecordToEf:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",tag:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 430
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    .end local v1    # "tag":Ljava/lang/String;
    .restart local v17    # "tag":Ljava/lang/String;
    move v1, v4

    move-object/from16 v18, v2

    .end local v2    # "number":Ljava/lang/String;
    .restart local v18    # "number":Ljava/lang/String;
    move-object/from16 v2, v17

    move/from16 v21, v3

    .end local v3    # "subId":I
    .local v21, "subId":I
    move-object/from16 v3, v18

    move v15, v4

    .end local v4    # "efType":I
    .local v15, "efType":I
    move-object v4, v5

    const/4 v13, 0x1

    move-object/from16 v5, v16

    move v14, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 434
    .end local v19    # "result":I
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 435
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "insert fail."

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 436
    :cond_9
    return-object v20

    .line 434
    :cond_a
    move v10, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v13, v21

    goto/16 :goto_8

    .line 358
    .end local v0    # "result":I
    .end local v15    # "efType":I
    .end local v21    # "subId":I
    .restart local v3    # "subId":I
    .restart local v4    # "efType":I
    .restart local v19    # "result":I
    :cond_b
    move/from16 v21, v3

    move v15, v4

    move v13, v5

    move v14, v6

    .line 359
    .end local v3    # "subId":I
    .end local v4    # "efType":I
    .restart local v15    # "efType":I
    .restart local v21    # "subId":I
    :goto_3
    const-string v0, "gas"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "strGas":Ljava/lang/String;
    const-string v0, "anr"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "strAnr":Ljava/lang/String;
    const-string v0, "emails"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "strEmail":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, v14, :cond_15

    .line 363
    const-string v0, "aas"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 364
    .local v0, "aasIndex":Ljava/lang/Integer;
    if-nez v18, :cond_c

    .line 365
    const-string v18, ""

    move-object/from16 v1, v18

    goto :goto_4

    .line 364
    :cond_c
    move-object/from16 v1, v18

    .line 367
    .end local v18    # "number":Ljava/lang/String;
    .local v1, "number":Ljava/lang/String;
    :goto_4
    if-nez v17, :cond_d

    .line 368
    const-string v17, ""

    move-object/from16 v2, v17

    goto :goto_5

    .line 367
    :cond_d
    move-object/from16 v2, v17

    .line 370
    .end local v17    # "tag":Ljava/lang/String;
    .local v2, "tag":Ljava/lang/String;
    :goto_5
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    const/4 v14, 0x0

    invoke-direct {v3, v15, v14, v2, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 371
    .local v3, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;)V

    .line 372
    const-string v14, "anr2"

    invoke-virtual {v10, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 373
    invoke-virtual {v10, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 374
    .local v14, "strAnr2":Ljava/lang/String;
    sget-boolean v18, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v18, :cond_e

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insert anr2: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 377
    :cond_e
    const/4 v7, 0x1

    invoke-virtual {v3, v14, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 379
    .end local v14    # "strAnr2":Ljava/lang/String;
    :cond_f
    const-string v7, "anr3"

    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 380
    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "strAnr3":Ljava/lang/String;
    sget-boolean v13, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v13, :cond_10

    .line 382
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insert anr3: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 384
    :cond_10
    const/4 v13, 0x2

    invoke-virtual {v3, v7, v13}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    goto :goto_6

    .line 379
    .end local v7    # "strAnr3":Ljava/lang/String;
    :cond_11
    const/4 v13, 0x2

    .line 386
    :goto_6
    invoke-virtual {v3, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 387
    const/4 v7, 0x0

    .line 388
    .local v7, "emails":[Ljava/lang/String;
    const-string v14, ""

    if-eqz v4, :cond_12

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_12

    .line 389
    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/String;

    .line 390
    const/4 v13, 0x0

    aput-object v4, v7, v13

    .line 392
    :cond_12
    invoke-virtual {v3, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 393
    if-eqz v0, :cond_13

    .line 394
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v3, v13}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 396
    :cond_13
    sget-object v13, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v13, v13

    move-object/from16 v22, v0

    .end local v0    # "aasIndex":Ljava/lang/Integer;
    .local v22, "aasIndex":Ljava/lang/Integer;
    const/16 v0, 0x9

    if-lt v13, v0, :cond_14

    .line 397
    const-string v0, "sne"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "sne":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    .line 401
    .end local v0    # "sne":Ljava/lang/String;
    :cond_14
    const-string v0, "updateUsimPBRecordsBySearchWithError "

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 402
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v0, v14, v14, v14}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v13, v21

    .end local v21    # "subId":I
    .local v13, "subId":I
    invoke-direct {v8, v15, v0, v3, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v0

    .line 404
    .end local v3    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v7    # "emails":[Ljava/lang/String;
    .end local v19    # "result":I
    .end local v22    # "aasIndex":Ljava/lang/Integer;
    .local v0, "result":I
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move-object v14, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/4 v10, 0x2

    goto :goto_7

    .line 405
    .end local v0    # "result":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    .end local v13    # "subId":I
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "number":Ljava/lang/String;
    .restart local v19    # "result":I
    .restart local v21    # "subId":I
    :cond_15
    move/from16 v13, v21

    .end local v21    # "subId":I
    .restart local v13    # "subId":I
    const-string v0, "addUsimRecordToEf "

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object v14, v4

    .end local v4    # "strEmail":Ljava/lang/String;
    .local v14, "strEmail":Ljava/lang/String;
    move-object v4, v5

    move-object/from16 v21, v5

    .end local v5    # "strAnr":Ljava/lang/String;
    .local v21, "strAnr":Ljava/lang/String;
    move-object v5, v14

    move-object/from16 v22, v6

    .end local v6    # "strGas":Ljava/lang/String;
    .local v22, "strGas":Ljava/lang/String;
    const/4 v10, 0x2

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 410
    .end local v19    # "result":I
    .restart local v0    # "result":I
    if-gez v0, :cond_17

    .line 411
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v1, :cond_16

    const-string v1, "oppoAddUsimRecordToEf fail."

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 412
    :cond_16
    return-object v20

    .line 418
    :cond_17
    :goto_7
    if-lez v0, :cond_18

    .line 419
    const/4 v1, 0x1

    invoke-direct {v8, v1, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updatePhbStorageInfo(II)V

    .line 422
    .end local v14    # "strEmail":Ljava/lang/String;
    .end local v21    # "strAnr":Ljava/lang/String;
    .end local v22    # "strGas":Ljava/lang/String;
    :cond_18
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    .line 441
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "number":Ljava/lang/String;
    .local v1, "tag":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://icc/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .local v3, "buf":Ljava/lang/StringBuilder;
    if-gtz v0, :cond_19

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert fail. result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 453
    return-object v20

    .line 456
    :cond_19
    const/4 v4, 0x1

    if-eq v11, v4, :cond_1f

    if-eq v11, v10, :cond_1e

    const/4 v4, 0x3

    if-eq v11, v4, :cond_1d

    const/4 v4, 0x4

    if-eq v11, v4, :cond_1c

    const/4 v4, 0x7

    if-eq v11, v4, :cond_1b

    const/16 v4, 0x8

    if-ne v11, v4, :cond_1a

    .line 477
    const-string v4, "pbr/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    goto :goto_9

    .line 480
    :cond_1a
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    :cond_1b
    const-string v4, "pbr/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    goto :goto_9

    .line 470
    :cond_1c
    const-string v4, "fdn/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    goto :goto_9

    .line 466
    :cond_1d
    const-string v4, "fdn/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    goto :goto_9

    .line 462
    :cond_1e
    const-string v4, "adn/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    goto :goto_9

    .line 458
    :cond_1f
    const-string v4, "adn/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    nop

    .line 485
    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 489
    .local v4, "resultUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 491
    return-object v4
.end method

.method public blacklist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x4f30

    const/16 v2, 0x6f49

    const/16 v3, 0x6f3b

    const/16 v4, 0x6f3a

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IOplusUiccManager;->colorOSMixSimAllSpace(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    if-eqz v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IOplusUiccManager;->colorOSMixSimUsedSpace(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    if-eqz v0, :cond_2

    .line 218
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IOplusUiccManager;->colorOSMixSimNameLen(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 222
    :cond_2
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    if-eqz v0, :cond_3

    .line 223
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusUiccManager;->colorOSMSimCheckPhoneBookReady(Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 227
    :cond_3
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    if-eqz v0, :cond_4

    .line 228
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IOplusUiccManager;->colorOSMixEmailLen(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 234
    :cond_4
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    if-eqz v0, :cond_5

    .line 235
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusUiccManager;->colorOSMSimCheckPhoneBookPbrExist(Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 240
    :cond_5
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mUiccManagerImpl:Lcom/android/internal/telephony/IOplusUiccManager;

    if-eqz v0, :cond_6

    .line 241
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IOplusUiccManager;->colorOSMSimAdnCapacity(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 246
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :pswitch_7
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 199
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 195
    :pswitch_9
    nop

    .line 196
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 195
    invoke-direct {p0, v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 188
    :pswitch_b
    nop

    .line 189
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 188
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 185
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_d
    nop

    .line 182
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 181
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 174
    :pswitch_f
    nop

    .line 175
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 174
    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 29
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 689
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v0, 0x0

    .line 693
    .local v0, "pin2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 694
    sget-object v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v10}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 695
    .local v12, "match":I
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq v12, v3, :cond_5

    if-eq v12, v1, :cond_4

    const/4 v5, 0x3

    const-string v6, "pin2"

    if-eq v12, v5, :cond_3

    const/4 v5, 0x4

    if-eq v12, v5, :cond_2

    if-eq v12, v2, :cond_1

    if-ne v12, v4, :cond_0

    .line 724
    const/16 v5, 0x4f30

    .line 725
    .local v5, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v6

    .line 726
    .local v6, "subId":I
    move-object v13, v0

    move v14, v5

    move v15, v6

    goto :goto_0

    .line 729
    .end local v5    # "efType":I
    .end local v6    # "subId":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 719
    :cond_1
    const/16 v5, 0x4f30

    .line 720
    .restart local v5    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    .line 721
    .restart local v6    # "subId":I
    move-object v13, v0

    move v14, v5

    move v15, v6

    goto :goto_0

    .line 713
    .end local v5    # "efType":I
    .end local v6    # "subId":I
    :cond_2
    const/16 v5, 0x6f3b

    .line 714
    .restart local v5    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    .line 715
    .local v7, "subId":I
    invoke-virtual {v11, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    move-object v13, v0

    move v14, v5

    move v15, v7

    goto :goto_0

    .line 707
    .end local v5    # "efType":I
    .end local v7    # "subId":I
    :cond_3
    const/16 v5, 0x6f3b

    .line 708
    .restart local v5    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v7

    .line 709
    .restart local v7    # "subId":I
    invoke-virtual {v11, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    move-object v13, v0

    move v14, v5

    move v15, v7

    goto :goto_0

    .line 702
    .end local v5    # "efType":I
    .end local v7    # "subId":I
    :cond_4
    const/16 v5, 0x6f3a

    .line 703
    .restart local v5    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v6

    .line 704
    .restart local v6    # "subId":I
    move-object v13, v0

    move v14, v5

    move v15, v6

    goto :goto_0

    .line 697
    .end local v5    # "efType":I
    .end local v6    # "subId":I
    :cond_5
    const/16 v5, 0x6f3a

    .line 698
    .restart local v5    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    .line 699
    .restart local v6    # "subId":I
    move-object v13, v0

    move v14, v5

    move v15, v6

    .line 732
    .end local v0    # "pin2":Ljava/lang/String;
    .end local v5    # "efType":I
    .end local v6    # "subId":I
    .local v13, "pin2":Ljava/lang/String;
    .local v14, "efType":I
    .local v15, "subId":I
    :goto_0
    const-string v0, "tag"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 733
    .local v8, "tag":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, "number":Ljava/lang/String;
    const/16 v16, 0x0

    .line 735
    .local v16, "emails":[Ljava/lang/String;
    const-string v0, "newTag"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 736
    .local v17, "newTag":Ljava/lang/String;
    const-string v0, "newNumber"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 737
    .local v18, "newNumber":Ljava/lang/String;
    const-string v0, "index"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 738
    .local v19, "idInt":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 739
    .local v0, "index":I
    if-eqz v19, :cond_6

    .line 740
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_1

    .line 739
    :cond_6
    move v6, v0

    .line 742
    .end local v0    # "index":I
    .local v6, "index":I
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: index="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 743
    const/16 v20, 0x0

    .line 747
    .local v20, "result":I
    const-string v0, "id"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    .line 751
    .local v21, "id":Ljava/lang/Long;
    const-string v0, "newEmails"

    const-string v5, "newAnr"

    if-eqz v21, :cond_d

    .line 752
    if-nez v17, :cond_7

    .line 753
    const-string v17, ""

    .line 755
    :cond_7
    if-nez v18, :cond_8

    .line 756
    const-string v18, ""

    .line 758
    :cond_8
    if-eq v2, v12, :cond_a

    if-ne v4, v12, :cond_9

    move v10, v6

    goto :goto_2

    .line 770
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move v10, v6

    .end local v6    # "index":I
    .local v10, "index":I
    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 758
    .end local v10    # "index":I
    .restart local v6    # "index":I
    :cond_a
    move v10, v6

    .line 759
    .end local v6    # "index":I
    .restart local v10    # "index":I
    :goto_2
    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "strAnr":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "strEmail":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 763
    const-string v1, ""

    move-object/from16 v22, v1

    goto :goto_3

    .line 762
    :cond_b
    move-object/from16 v22, v1

    .line 765
    .end local v1    # "strAnr":Ljava/lang/String;
    .local v22, "strAnr":Ljava/lang/String;
    :goto_3
    if-nez v0, :cond_c

    .line 766
    const-string v0, ""

    move-object/from16 v23, v0

    goto :goto_4

    .line 765
    :cond_c
    move-object/from16 v23, v0

    .line 768
    .end local v0    # "strEmail":Ljava/lang/String;
    .local v23, "strEmail":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v24, v7

    .end local v7    # "number":Ljava/lang/String;
    .local v24, "number":Ljava/lang/String;
    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 775
    .end local v10    # "index":I
    .end local v22    # "strAnr":Ljava/lang/String;
    .end local v23    # "strEmail":Ljava/lang/String;
    .end local v24    # "number":Ljava/lang/String;
    .restart local v6    # "index":I
    .restart local v7    # "number":Ljava/lang/String;
    :cond_d
    move v10, v6

    move-object/from16 v24, v7

    .end local v6    # "index":I
    .end local v7    # "number":Ljava/lang/String;
    .restart local v10    # "index":I
    .restart local v24    # "number":Ljava/lang/String;
    if-eq v2, v12, :cond_10

    if-ne v4, v12, :cond_e

    goto :goto_5

    .line 831
    :cond_e
    if-lez v10, :cond_f

    .line 832
    const-string v0, "updateIccRecordInEfByIndex"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 833
    move-object/from16 v0, p0

    move v1, v14

    move v2, v10

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move/from16 v25, v10

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    move-object/from16 v24, v8

    .end local v20    # "result":I
    .local v0, "result":I
    goto/16 :goto_c

    .line 835
    .end local v0    # "result":I
    .restart local v20    # "result":I
    :cond_f
    const-string v0, "updateIccRecordInEf"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 836
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v8

    move-object/from16 v3, v24

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v13

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move/from16 v25, v10

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    move-object/from16 v24, v8

    .end local v20    # "result":I
    .restart local v0    # "result":I
    goto/16 :goto_c

    .line 776
    .end local v0    # "result":I
    .restart local v20    # "result":I
    :cond_10
    :goto_5
    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 777
    .local v7, "strAnr":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 779
    .local v6, "strEmail":Ljava/lang/String;
    const-string v0, "aas"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 780
    .local v22, "aasIndex":Ljava/lang/Integer;
    const-string v0, "sne"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 781
    .local v5, "sne":Ljava/lang/String;
    if-nez v18, :cond_11

    .line 782
    const-string v18, ""

    move-object/from16 v2, v18

    goto :goto_6

    .line 781
    :cond_11
    move-object/from16 v2, v18

    .line 784
    .end local v18    # "newNumber":Ljava/lang/String;
    .local v2, "newNumber":Ljava/lang/String;
    :goto_6
    if-nez v17, :cond_12

    .line 785
    const-string v17, ""

    move-object/from16 v0, v17

    goto :goto_7

    .line 784
    :cond_12
    move-object/from16 v0, v17

    .line 787
    .end local v17    # "newTag":Ljava/lang/String;
    .local v0, "newTag":Ljava/lang/String;
    :goto_7
    new-instance v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    const/4 v1, 0x0

    invoke-direct {v4, v14, v1, v0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 788
    .local v4, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;)V

    .line 789
    const-string v1, "newAnr2"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 790
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "strAnr2":Ljava/lang/String;
    sget-boolean v25, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v25, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v0

    .end local v0    # "newTag":Ljava/lang/String;
    .local v26, "newTag":Ljava/lang/String;
    const-string v0, "update newAnr2: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_8

    .end local v26    # "newTag":Ljava/lang/String;
    .restart local v0    # "newTag":Ljava/lang/String;
    :cond_13
    move-object/from16 v26, v0

    .line 792
    .end local v0    # "newTag":Ljava/lang/String;
    .restart local v26    # "newTag":Ljava/lang/String;
    :goto_8
    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    goto :goto_9

    .line 789
    .end local v1    # "strAnr2":Ljava/lang/String;
    .end local v26    # "newTag":Ljava/lang/String;
    .restart local v0    # "newTag":Ljava/lang/String;
    :cond_14
    move-object/from16 v26, v0

    .line 794
    .end local v0    # "newTag":Ljava/lang/String;
    .restart local v26    # "newTag":Ljava/lang/String;
    :goto_9
    const-string v0, "newAnr3"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 795
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "strAnr3":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update newAnr3: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 797
    :cond_15
    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 799
    .end local v0    # "strAnr3":Ljava/lang/String;
    :cond_16
    const-string v0, ""

    if-eqz v6, :cond_17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 800
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 801
    .end local v16    # "emails":[Ljava/lang/String;
    .local v1, "emails":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v6, v1, v3

    move-object v3, v1

    goto :goto_a

    .line 803
    .end local v1    # "emails":[Ljava/lang/String;
    .restart local v16    # "emails":[Ljava/lang/String;
    :cond_17
    move-object/from16 v3, v16

    .end local v16    # "emails":[Ljava/lang/String;
    .local v3, "emails":[Ljava/lang/String;
    :goto_a
    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 804
    if-eqz v22, :cond_18

    .line 805
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 807
    :cond_18
    if-eqz v5, :cond_19

    .line 808
    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    .line 810
    :cond_19
    if-lez v10, :cond_1b

    .line 811
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1a

    .line 812
    const-string v0, "updateUsimPBRecordsByIndexWithError"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 813
    invoke-direct {v9, v14, v4, v10, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimPBRecordsByIndexWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;II)I

    move-result v0

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    move/from16 v25, v10

    move-object/from16 v17, v24

    move-object/from16 v16, v26

    move-object/from16 v24, v8

    .end local v20    # "result":I
    .local v0, "result":I
    goto/16 :goto_b

    .line 815
    .end local v0    # "result":I
    .restart local v20    # "result":I
    :cond_1a
    const-string v0, "updateUsimRecordInEfByIndex"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 816
    move-object/from16 v16, v26

    .end local v26    # "newTag":Ljava/lang/String;
    .local v16, "newTag":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v18, v2

    .end local v2    # "newNumber":Ljava/lang/String;
    .restart local v18    # "newNumber":Ljava/lang/String;
    move v2, v10

    move-object/from16 v23, v3

    .end local v3    # "emails":[Ljava/lang/String;
    .local v23, "emails":[Ljava/lang/String;
    move-object/from16 v3, v16

    move/from16 v25, v10

    move-object v10, v4

    .end local v4    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v10, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v25, "index":I
    move-object/from16 v4, v18

    move-object/from16 v26, v5

    .end local v5    # "sne":Ljava/lang/String;
    .local v26, "sne":Ljava/lang/String;
    move-object v5, v7

    move-object/from16 v27, v6

    .end local v6    # "strEmail":Ljava/lang/String;
    .local v27, "strEmail":Ljava/lang/String;
    move-object/from16 v28, v7

    .end local v7    # "strAnr":Ljava/lang/String;
    .local v28, "strAnr":Ljava/lang/String;
    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v17, v24

    move-object/from16 v24, v8

    .end local v20    # "result":I
    .restart local v0    # "result":I
    goto :goto_b

    .line 820
    .end local v0    # "result":I
    .end local v16    # "newTag":Ljava/lang/String;
    .end local v18    # "newNumber":Ljava/lang/String;
    .end local v23    # "emails":[Ljava/lang/String;
    .end local v25    # "index":I
    .end local v27    # "strEmail":Ljava/lang/String;
    .end local v28    # "strAnr":Ljava/lang/String;
    .restart local v2    # "newNumber":Ljava/lang/String;
    .restart local v3    # "emails":[Ljava/lang/String;
    .restart local v4    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v5    # "sne":Ljava/lang/String;
    .restart local v6    # "strEmail":Ljava/lang/String;
    .restart local v7    # "strAnr":Ljava/lang/String;
    .local v10, "index":I
    .restart local v20    # "result":I
    .local v26, "newTag":Ljava/lang/String;
    :cond_1b
    move-object/from16 v18, v2

    move-object/from16 v23, v3

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v25, v10

    move-object/from16 v16, v26

    move-object v10, v4

    move-object/from16 v26, v5

    .end local v2    # "newNumber":Ljava/lang/String;
    .end local v3    # "emails":[Ljava/lang/String;
    .end local v4    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v5    # "sne":Ljava/lang/String;
    .end local v6    # "strEmail":Ljava/lang/String;
    .end local v7    # "strAnr":Ljava/lang/String;
    .local v10, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v16    # "newTag":Ljava/lang/String;
    .restart local v18    # "newNumber":Ljava/lang/String;
    .restart local v23    # "emails":[Ljava/lang/String;
    .restart local v25    # "index":I
    .local v26, "sne":Ljava/lang/String;
    .restart local v27    # "strEmail":Ljava/lang/String;
    .restart local v28    # "strAnr":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1c

    .line 821
    const-string v1, "updateUsimPBRecordsBySearchWithError"

    invoke-direct {v9, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 822
    new-instance v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object/from16 v7, v24

    .end local v24    # "number":Ljava/lang/String;
    .local v7, "number":Ljava/lang/String;
    invoke-direct {v1, v8, v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v14, v1, v10, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v0

    move-object/from16 v17, v7

    move-object/from16 v24, v8

    .end local v20    # "result":I
    .restart local v0    # "result":I
    goto :goto_b

    .line 825
    .end local v0    # "result":I
    .end local v7    # "number":Ljava/lang/String;
    .restart local v20    # "result":I
    .restart local v24    # "number":Ljava/lang/String;
    :cond_1c
    move-object/from16 v7, v24

    .end local v24    # "number":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    const-string v0, "updateUsimRecordInEf"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v8

    move-object v3, v7

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v28

    move-object/from16 v17, v7

    .end local v7    # "number":Ljava/lang/String;
    .local v17, "number":Ljava/lang/String;
    move-object/from16 v7, v27

    move-object/from16 v24, v8

    .end local v8    # "tag":Ljava/lang/String;
    .local v24, "tag":Ljava/lang/String;
    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 830
    .end local v10    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v20    # "result":I
    .end local v22    # "aasIndex":Ljava/lang/Integer;
    .end local v26    # "sne":Ljava/lang/String;
    .end local v27    # "strEmail":Ljava/lang/String;
    .end local v28    # "strAnr":Ljava/lang/String;
    .restart local v0    # "result":I
    :goto_b
    move-object/from16 v1, v16

    move-object/from16 v16, v23

    .line 840
    .end local v23    # "emails":[Ljava/lang/String;
    .local v1, "newTag":Ljava/lang/String;
    .local v16, "emails":[Ljava/lang/String;
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 841
    return v0
.end method
