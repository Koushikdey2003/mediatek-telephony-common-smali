.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final blacklist CN_MCC:Ljava/lang/String; = "460"

.field public static final blacklist ENHANCEMENT_T_PLUS_C:I = 0x2

.field public static final blacklist ENHANCEMENT_T_PLUS_T:I = 0x0

.field public static final blacklist ENHANCEMENT_T_PLUS_W:I = 0x1

.field public static final blacklist ENHANCEMENT_W_PLUS_C:I = 0x3

.field public static final blacklist ENHANCEMENT_W_PLUS_NA:I = 0x5

.field public static final blacklist ENHANCEMENT_W_PLUS_W:I = 0x4

.field public static final blacklist ICCID_ERROR:I = 0x3

.field public static final blacklist IMSI_NOT_READY:Ljava/lang/String; = "0"

.field public static final blacklist IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field public static final blacklist IMSI_READY:Ljava/lang/String; = "1"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RadioCapabilitySwitchUtil"

.field public static final blacklist NOT_SHOW_DIALOG:I = 0x1

.field private static final blacklist NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final blacklist OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final blacklist OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final blacklist OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final blacklist PLMN_TABLE_OP01:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_OP09_3G:[Ljava/lang/String;

.field private static final blacklist PLMN_TABLE_OP18:[Ljava/lang/String;

.field private static final blacklist PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final blacklist PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final blacklist PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final blacklist PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

.field public static final blacklist SHOW_DIALOG:I = 0x0

.field public static final blacklist SIM_OP_INFO_OP01:I = 0x2

.field public static final blacklist SIM_OP_INFO_OP02:I = 0x3

.field public static final blacklist SIM_OP_INFO_OP09:I = 0x4

.field public static final blacklist SIM_OP_INFO_OP18:I = 0x4

.field public static final blacklist SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final blacklist SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final blacklist SIM_SWITCHING:I = 0x4

.field public static final blacklist SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final blacklist SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final blacklist SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final blacklist SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final blacklist SIM_TYPE_OTHER:I = 0x2

.field public static final blacklist SIM_TYPE_SIM:I = 0x0

.field public static final blacklist SIM_TYPE_USIM:I = 0x1

.field public static final blacklist SUBSIDY_LOCK_SUPPORT:I = 0xa


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 23

    .line 101
    const-string v0, "46000"

    const-string v1, "46002"

    const-string v2, "46007"

    const-string v3, "46008"

    const-string v4, "45412"

    const-string v5, "45413"

    const-string v6, "00101"

    const-string v7, "00211"

    const-string v8, "00321"

    const-string v9, "00431"

    const-string v10, "00541"

    const-string v11, "00651"

    const-string v12, "00761"

    const-string v13, "00871"

    const-string v14, "00902"

    const-string v15, "01012"

    const-string v16, "01122"

    const-string v17, "01232"

    const-string v18, "46004"

    const-string v19, "46602"

    const-string v20, "50270"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .line 110
    const-string v0, "46001"

    const-string v1, "46006"

    const-string v2, "46009"

    const-string v3, "45407"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 115
    const-string v0, "46005"

    const-string v1, "45502"

    const-string v2, "46003"

    const-string v3, "46011"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 120
    const-string v0, "20404"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09_3G:[Ljava/lang/String;

    .line 125
    const-string v1, "405840"

    const-string v2, "405854"

    const-string v3, "405855"

    const-string v4, "405856"

    const-string v5, "405857"

    const-string v6, "405858"

    const-string v7, "405859"

    const-string v8, "405860"

    const-string v9, "405861"

    const-string v10, "405862"

    const-string v11, "405863"

    const-string v12, "405864"

    const-string v13, "405865"

    const-string v14, "405866"

    const-string v15, "405867"

    const-string v16, "405868"

    const-string v17, "405869"

    const-string v18, "405870"

    const-string v19, "405871"

    const-string v20, "405872"

    const-string v21, "405873"

    const-string v22, "405874"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    .line 148
    const-string v0, "vendor.ril.imsi.status.sim1"

    const-string v1, "vendor.ril.imsi.status.sim2"

    const-string v2, "vendor.ril.imsi.status.sim3"

    const-string v3, "vendor.ril.imsi.status.sim4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    .line 155
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 162
    const-string v0, "vendor.gsm.ril.ct3g"

    const-string v1, "vendor.gsm.ril.ct3g.2"

    const-string v2, "vendor.gsm.ril.ct3g.3"

    const-string v3, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearAllSimImsiStatus()V
    .locals 2

    .line 876
    const-string v0, "clearAllSimImsiStatus"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 877
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 878
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist getHashCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "iccid"    # Ljava/lang/String;

    .line 912
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 913
    .local v0, "alga":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 914
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 915
    .local v1, "hashCode":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .local v2, "strIccid":Ljava/lang/String;
    return-object v2

    .line 917
    .end local v0    # "alga":Ljava/security/MessageDigest;
    .end local v1    # "hashCode":[B
    .end local v2    # "strIccid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RadioCapabilitySwitchUtil SHA-256 must exist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 6
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .line 603
    const/4 v0, -0x1

    .line 604
    .local v0, "targetSim":I
    array-length v1, p1

    .line 606
    .local v1, "phoneNum":I
    aget-boolean v2, p1, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 607
    return p0

    .line 609
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 610
    aget-boolean v4, p1, v2

    if-ne v4, v3, :cond_1

    .line 611
    move v0, v2

    .line 609
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    aget-boolean v4, p2, p0

    if-ne v4, v3, :cond_3

    goto :goto_6

    .line 617
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 618
    aget-boolean v5, p2, v4

    if-ne v5, v3, :cond_4

    .line 619
    move v0, v4

    .line 617
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 622
    .end local v4    # "i":I
    :cond_5
    if-ne v0, v2, :cond_d

    aget-boolean v4, p3, p0

    if-ne v4, v3, :cond_6

    goto :goto_5

    .line 625
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_8

    .line 626
    aget-boolean v5, p3, v4

    if-ne v5, v3, :cond_7

    .line 627
    move v0, v4

    .line 625
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 630
    .end local v4    # "i":I
    :cond_8
    if-ne v0, v2, :cond_c

    aget-boolean v2, p4, p0

    if-ne v2, v3, :cond_9

    goto :goto_4

    .line 633
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_b

    .line 634
    aget-boolean v4, p4, v2

    if-ne v4, v3, :cond_a

    .line 635
    move v0, v2

    .line 633
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 638
    .end local v2    # "i":I
    :cond_b
    return v0

    .line 631
    :cond_c
    :goto_4
    return v0

    .line 623
    :cond_d
    :goto_5
    return v0

    .line 615
    :cond_e
    :goto_6
    return v0
.end method

.method public static blacklist getHighestPriorityPhone(I[I)I
    .locals 8
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "targetPhone":I
    array-length v1, p1

    .line 651
    .local v1, "phoneNum":I
    const/4 v2, 0x0

    .line 652
    .local v2, "highestPriorityCount":I
    const/4 v3, 0x0

    .line 654
    .local v3, "highestPriorityBitMap":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_2

    .line 655
    aget v6, p1, v4

    aget v7, p1, v0

    if-ge v6, v7, :cond_0

    .line 656
    move v0, v4

    .line 657
    const/4 v2, 0x1

    .line 658
    shl-int v3, v5, v4

    goto :goto_1

    .line 659
    :cond_0
    aget v6, p1, v4

    aget v7, p1, v0

    if-ne v6, v7, :cond_1

    .line 660
    add-int/lit8 v2, v2, 0x1

    .line 661
    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    .line 654
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 665
    .end local v4    # "i":I
    :cond_2
    if-ne v2, v5, :cond_3

    .line 666
    return v0

    .line 667
    :cond_3
    const/4 v4, -0x1

    if-ne p0, v4, :cond_4

    .line 670
    return v4

    .line 671
    :cond_4
    shl-int/2addr v5, p0

    and-int/2addr v5, v3

    if-eqz v5, :cond_5

    .line 672
    return p0

    .line 674
    :cond_5
    return v4
.end method

.method public static blacklist getMainCapabilityPhoneId()I
    .locals 3

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "phoneId":I
    const-string v1, "persist.vendor.radio.simswitch"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 687
    .end local v0    # "phoneId":I
    .local v1, "phoneId":I
    return v1
.end method

.method public static blacklist getProtocolStackId(I)I
    .locals 2
    .param p0, "slot"    # I

    .line 896
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 897
    .local v0, "majorSlot":I
    if-ne p0, v0, :cond_0

    .line 898
    const/4 v1, 0x1

    return v1

    .line 900
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isDssNoResetSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    if-ge p0, v0, :cond_2

    .line 902
    add-int/lit8 v1, p0, 0x2

    return v1

    .line 904
    :cond_1
    if-nez p0, :cond_2

    .line 905
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 907
    :cond_2
    add-int/lit8 v1, p0, 0x1

    return v1
.end method

.method private static blacklist getSimImsiStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "slot"    # I

    .line 871
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 872
    .local v0, "propStr":Ljava/lang/String;
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSimInfo([I[II)Z
    .locals 16
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .line 187
    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "error"

    const-string v4, "strMnc["

    array-length v0, v1

    new-array v5, v0, [Ljava/lang/String;

    .line 188
    .local v5, "strMnc":[Ljava/lang/String;
    array-length v0, v1

    new-array v6, v0, [Ljava/lang/String;

    .line 191
    .local v6, "strSimType":[Ljava/lang/String;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    array-length v0, v1

    const/4 v8, 0x1

    if-ge v7, v0, :cond_1d

    .line 192
    if-nez v7, :cond_0

    .line 193
    const-string v0, "vendor.gsm.ril.uicctype"

    move-object v9, v0

    .local v0, "propStr":Ljava/lang/String;
    goto :goto_1

    .line 195
    .end local v0    # "propStr":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vendor.gsm.ril.uicctype."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 197
    .local v9, "propStr":Ljava/lang/String;
    :goto_1
    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 198
    aget-object v0, v6, v7

    const-string v11, "SIM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    .line 199
    aput v12, p1, v7

    goto :goto_2

    .line 200
    :cond_1
    aget-object v0, v6, v7

    const-string v13, "USIM"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    aput v8, p1, v7

    goto :goto_2

    .line 203
    :cond_2
    aput v11, p1, v7

    .line 207
    :goto_2
    :try_start_0
    const-string v0, "iphonesubinfo"

    .line 208
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 209
    .local v0, "subInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v0, :cond_3

    .line 210
    const-string v13, "subInfo stub is null"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 211
    return v12

    .line 213
    :cond_3
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 214
    .local v13, "subIdList":[I
    if-nez v13, :cond_4

    .line 216
    const-string v14, "subIdList is null"

    invoke-static {v14}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 218
    :cond_4
    aget v14, v13, v12

    const-string v15, "com.mediatek.internal.telephony"

    const/4 v11, 0x0

    invoke-interface {v0, v14, v15, v11}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v7

    .line 220
    aget-object v11, v5, v7

    if-nez v11, :cond_5

    .line 221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] is null, get mnc by ril.uim.subscriberid"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "vendor.ril.uim.subscriberid."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 223
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v7

    .line 225
    :cond_5
    aget-object v11, v5, v7

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 226
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] is null, get mnc by vendor.gsm.ril.uicc.mccmnc"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 227
    if-nez v7, :cond_6

    .line 228
    const-string v11, "vendor.gsm.ril.uicc.mccmnc"

    move-object v9, v11

    goto :goto_3

    .line 230
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "vendor.gsm.ril.uicc.mccmnc."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 232
    :goto_3
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "subInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v13    # "subIdList":[I
    :cond_7
    :goto_4
    goto :goto_5

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v11, "get subInfo stub fail"

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 237
    aput-object v3, v5, v7

    .line 240
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_5
    aget-object v0, v5, v7

    if-nez v0, :cond_8

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] is null"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 242
    aput-object v10, v5, v7

    .line 245
    :cond_8
    aget-object v0, v5, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v11, 0x6

    if-lt v0, v11, :cond_9

    .line 246
    aget-object v0, v5, v7

    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    goto :goto_6

    .line 247
    :cond_9
    aget-object v0, v5, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v11, 0x5

    if-lt v0, v11, :cond_a

    .line 248
    aget-object v0, v5, v7

    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 250
    :cond_a
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SimType["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]= "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v7

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "insertedStatus:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 256
    const-string v0, "N/A"

    if-ltz v2, :cond_10

    shl-int v13, v8, v7

    and-int/2addr v13, v2

    if-lez v13, :cond_10

    .line 257
    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimOn(I)Z

    move-result v13

    if-ne v13, v8, :cond_10

    .line 259
    aget-object v13, v5, v7

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    aget-object v13, v5, v7

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_8

    .line 263
    :cond_b
    aget-object v13, v5, v7

    const-string v14, "sim_lock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 264
    const-string v0, "SIM is lock, wait pin unlock"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 265
    return v12

    .line 267
    :cond_c
    aget-object v13, v5, v7

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    aget-object v13, v5, v7

    const-string v14, "sim_absent"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_7

    .line 271
    :cond_d
    aget-object v13, v5, v7

    const-string v14, "[0-9]+"

    invoke-virtual {v13, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 272
    const-string v0, "strMnc have non-numeric value, return false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 273
    return v12

    .line 268
    :cond_e
    :goto_7
    const-string v0, "strMnc have invalid value, return false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 269
    return v12

    .line 260
    :cond_f
    :goto_8
    const-string v0, "SIM is inserted but no imsi"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 261
    return v12

    .line 276
    :cond_10
    sget-object v13, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    array-length v14, v13

    move v15, v12

    :goto_9
    if-ge v15, v14, :cond_12

    aget-object v12, v13, v15

    .line 277
    .local v12, "mccmnc":Ljava/lang/String;
    aget-object v8, v5, v7

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 278
    const/4 v8, 0x2

    aput v8, v1, v7

    .line 279
    goto :goto_a

    .line 277
    :cond_11
    const/4 v8, 0x2

    .line 276
    .end local v12    # "mccmnc":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x0

    goto :goto_9

    .line 282
    :cond_12
    :goto_a
    aget v8, v1, v7

    if-nez v8, :cond_14

    .line 283
    sget-object v8, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    array-length v12, v8

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v12, :cond_14

    aget-object v14, v8, v13

    .line 284
    .local v14, "mccmnc":Ljava/lang/String;
    aget-object v15, v5, v7

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 285
    const/4 v8, 0x3

    aput v8, v1, v7

    .line 286
    goto :goto_c

    .line 283
    .end local v14    # "mccmnc":Ljava/lang/String;
    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 290
    :cond_14
    :goto_c
    aget v8, v1, v7

    if-nez v8, :cond_16

    .line 291
    sget-object v8, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    array-length v13, v8

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_16

    aget-object v15, v8, v14

    .line 292
    .local v15, "mccmnc":Ljava/lang/String;
    aget-object v12, v5, v7

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 293
    const/4 v8, 0x4

    aput v8, v1, v7

    .line 294
    goto :goto_e

    .line 291
    .end local v15    # "mccmnc":Ljava/lang/String;
    :cond_15
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 298
    :cond_16
    :goto_e
    aget v8, v1, v7

    if-nez v8, :cond_18

    .line 299
    sget-object v8, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09_3G:[Ljava/lang/String;

    array-length v12, v8

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v12, :cond_18

    aget-object v14, v8, v13

    .line 300
    .restart local v14    # "mccmnc":Ljava/lang/String;
    aget-object v15, v5, v7

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 301
    sget-object v15, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 302
    .local v15, "uimDualMode":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 303
    const/4 v2, 0x4

    aput v2, v1, v7

    .line 304
    goto :goto_10

    .line 299
    .end local v14    # "mccmnc":Ljava/lang/String;
    .end local v15    # "uimDualMode":Ljava/lang/String;
    :cond_17
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    goto :goto_f

    .line 310
    :cond_18
    :goto_10
    const-string v2, "persist.vendor.operator.optr"

    invoke-static {v2, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "OP18"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 311
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 312
    :cond_19
    aget v2, v1, v7

    if-nez v2, :cond_1b

    .line 313
    sget-object v2, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    array-length v8, v2

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v8, :cond_1b

    aget-object v13, v2, v12

    .line 314
    .local v13, "mccmnc":Ljava/lang/String;
    aget-object v14, v5, v7

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 315
    const/4 v14, 0x4

    aput v14, v1, v7

    .line 316
    goto :goto_12

    .line 314
    :cond_1a
    const/4 v14, 0x4

    .line 313
    .end local v13    # "mccmnc":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 321
    :cond_1b
    :goto_12
    aget v2, v1, v7

    if-nez v2, :cond_1c

    .line 322
    aget-object v2, v5, v7

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    aget-object v2, v5, v7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 323
    const/4 v2, 0x1

    aput v2, v1, v7

    .line 326
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v5, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", simOpInfo["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 191
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 330
    .end local v7    # "i":I
    .end local v9    # "propStr":Ljava/lang/String;
    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist isAnySimLocked(I)Z
    .locals 9
    .param p0, "phoneNum"    # I

    .line 809
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 810
    const-string v0, "isAnySimLocked always returns false in C2K"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 811
    return v1

    .line 814
    :cond_0
    new-array v0, p0, [Ljava/lang/String;

    .line 815
    .local v0, "mnc":[Ljava/lang/String;
    new-array v2, p0, [Ljava/lang/String;

    .line 817
    .local v2, "iccid":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p0, :cond_7

    .line 818
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 819
    .local v4, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v4, :cond_1

    .line 820
    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 824
    :cond_1
    aget-object v5, v2, v3

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, ""

    if-nez v5, :cond_4

    .line 825
    const-string v5, "vendor.gsm.sim.operator.numeric"

    invoke-static {v3, v5, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 827
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x6

    if-lt v5, v8, :cond_2

    .line 828
    aget-object v5, v0, v3

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    goto :goto_1

    .line 829
    :cond_2
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x5

    if-lt v5, v8, :cond_3

    .line 830
    aget-object v5, v0, v3

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 832
    :cond_3
    :goto_1
    aget-object v5, v0, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from gsm.sim.operator.numeric:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ,iccid = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 838
    :cond_4
    aget-object v5, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, v0, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    aget-object v5, v0, v3

    .line 839
    const-string v6, "sim_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 840
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 817
    .end local v4    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 843
    .end local v3    # "i":I
    :cond_7
    return v1
.end method

.method public static blacklist isCapabilitySwitching()Z
    .locals 3

    .line 952
    const/4 v0, 0x0

    .line 954
    .local v0, "result":Z
    :try_start_0
    const-string v1, "phoneEx"

    .line 955
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 956
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v1, :cond_0

    .line 957
    const-string v2, "iTelEx is null!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 958
    const/4 v2, 0x0

    return v2

    .line 960
    :cond_0
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isCapabilitySwitching()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 963
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_0

    .line 961
    :catch_0
    move-exception v1

    .line 962
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 964
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static blacklist isCdmaCard(IILandroid/content/Context;)Z
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "opInfo"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "isCdmaSim":Z
    if-ltz p0, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_2

    .line 378
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "cardType":Ljava/lang/String;
    const-string v2, "CSIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    const-string v2, "RUIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    move v0, v2

    .line 381
    if-nez v0, :cond_3

    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    sget-object v2, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "uimDualMode":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    const/4 v0, 0x1

    .line 388
    .end local v2    # "uimDualMode":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 389
    const/4 v0, 0x1

    .line 392
    :cond_4
    if-ne v0, v3, :cond_5

    invoke-static {p0, p2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isVolteEnabled(ILandroid/content/Context;)Z

    move-result v2

    if-ne v2, v3, :cond_5

    .line 393
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isHVolteEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 395
    const/4 v0, 0x0

    .line 396
    const-string v2, "isCdmaCard, volte is enabled, SRLTE is unused for CT card"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 399
    :cond_5
    return v0

    .line 374
    .end local v1    # "cardType":Ljava/lang/String;
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaCard invalid phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 375
    return v0
.end method

.method public static blacklist isDssNoResetSupport()Z
    .locals 2

    .line 883
    const-string v0, "vendor.ril.simswitch.no_reset_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    const/4 v0, 0x1

    return v0

    .line 888
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isHVolteEnabled()Z
    .locals 3

    .line 364
    const-string v0, "persist.vendor.mtk_ct_volte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isNeedShowSimDialog()I
    .locals 17

    .line 706
    const-string v0, "ro.vendor.mtk_disable_cap_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 707
    const-string v0, "mtk_disable_cap_switch is true"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 708
    return v1

    .line 711
    :cond_0
    const-string v0, "isNeedShowSimDialog start"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 712
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 713
    .local v0, "phoneCount":I
    new-array v3, v0, [I

    .line 714
    .local v3, "simOpInfo":[I
    new-array v4, v0, [I

    .line 715
    .local v4, "simType":[I
    new-array v5, v0, [Ljava/lang/String;

    .line 716
    .local v5, "currIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 717
    .local v6, "insertedSimCount":I
    const/4 v7, 0x0

    .line 718
    .local v7, "insertedStatus":I
    const/4 v8, 0x0

    .line 719
    .local v8, "op02CardCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v9, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v10, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v11, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v12, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const-string v15, "RadioCapabilitySwitchUtil"

    if-ge v13, v0, :cond_6

    .line 725
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 726
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v1, :cond_1

    .line 727
    invoke-virtual {v1, v13}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v13

    .line 729
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currIccid["

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v5, v13

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 730
    aget-object v2, v5, v13

    if-eqz v2, :cond_5

    aget-object v2, v5, v13

    const-string v14, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 734
    :cond_2
    aget-object v2, v5, v13

    const-string v14, "N/A"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 736
    invoke-static {v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimOn(I)Z

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_3

    .line 737
    add-int/lit8 v6, v6, 0x1

    .line 738
    shl-int v2, v14, v13

    or-int/2addr v2, v7

    move v7, v2

    .end local v7    # "insertedStatus":I
    .local v2, "insertedStatus":I
    goto :goto_1

    .line 740
    .end local v2    # "insertedStatus":I
    .restart local v7    # "insertedStatus":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isNeedShowSimDialog, slot"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is power off."

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 724
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_4
    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_0

    .line 731
    .restart local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_5
    :goto_2
    const-string v2, "iccid not found, wait for next sim state change"

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v2, 0x3

    return v2

    .line 745
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .end local v13    # "i":I
    :cond_6
    const/4 v1, 0x2

    if-ge v6, v1, :cond_7

    .line 746
    const-string v1, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 747
    const/4 v1, 0x1

    return v1

    .line 749
    :cond_7
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCapabilitySwitching()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 750
    const-string v1, "SIM switch executing"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 751
    const/4 v1, 0x4

    return v1

    .line 753
    :cond_8
    invoke-static {v3, v4, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v2

    if-nez v2, :cond_9

    .line 754
    const-string v2, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return v1

    .line 757
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_d

    .line 759
    aget v13, v4, v2

    const/4 v14, 0x1

    if-ne v14, v13, :cond_a

    .line 760
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 761
    :cond_a
    aget v13, v4, v2

    if-nez v13, :cond_b

    .line 762
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_b
    :goto_4
    aget v13, v3, v2

    const/4 v14, 0x3

    if-ne v14, v13, :cond_c

    .line 767
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 769
    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 772
    .end local v2    # "i":I
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "usimIndexList size = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "op02IndexList size = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_10

    .line 777
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 778
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 779
    add-int/lit8 v8, v8, 0x1

    .line 777
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 783
    .end local v1    # "i":I
    :cond_f
    const/4 v1, 0x1

    if-ne v8, v1, :cond_14

    .line 784
    const-string v2, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 785
    return v1

    .line 787
    :cond_10
    const/4 v1, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_11

    .line 788
    const-string v2, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 789
    return v1

    .line 793
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 794
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 795
    add-int/lit8 v8, v8, 0x1

    .line 793
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 799
    .end local v1    # "i":I
    :cond_13
    const/4 v1, 0x1

    if-ne v8, v1, :cond_14

    .line 800
    const-string v2, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 801
    return v1

    .line 804
    :cond_14
    const-string v1, "isNeedShowSimDialog: Show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 805
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isPS2SupportLTE()Z
    .locals 2

    .line 848
    const-string v0, "persist.vendor.radio.mtk_ps2_rat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 850
    const/4 v0, 0x1

    return v0

    .line 853
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isRadioOffBySimManagement(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "result":Z
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 939
    .local v1, "subId":I
    :try_start_0
    const-string v2, "phoneEx"

    .line 940
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 941
    .local v2, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 942
    const-string v3, "iTelEx is null!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 943
    const/4 v3, 0x0

    return v3

    .line 945
    :cond_0
    invoke-interface {v2, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isRadioOffBySimManagement(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 948
    .end local v2    # "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_0

    .line 946
    :catch_0
    move-exception v2

    .line 947
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 949
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static blacklist isSimOn(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .line 923
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->isSimOnOffEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 924
    return v1

    .line 927
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOnOffState(I)I

    move-result v0

    .line 928
    .local v0, "state":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 929
    const/4 v1, 0x0

    return v1

    .line 931
    :cond_1
    return v1
.end method

.method public static blacklist isSkipCapabilitySwitch(IILandroid/content/Context;)Z
    .locals 18
    .param p0, "majorPhoneId"    # I
    .param p1, "phoneNum"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 455
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-array v3, v1, [I

    .line 456
    .local v3, "simOpInfo":[I
    new-array v4, v1, [I

    .line 457
    .local v4, "simType":[I
    const/4 v5, 0x0

    .line 458
    .local v5, "insertedState":I
    const/4 v6, 0x0

    .line 459
    .local v6, "insertedSimCount":I
    const/4 v7, 0x0

    .line 460
    .local v7, "tSimCount":I
    const/4 v8, 0x0

    .line 461
    .local v8, "wSimCount":I
    const/4 v9, 0x0

    .line 462
    .local v9, "cSimCount":I
    new-array v10, v1, [Ljava/lang/String;

    .line 463
    .local v10, "currIccId":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 464
    .local v11, "hasOp09Sim":Z
    const/4 v12, -0x1

    .line 465
    .local v12, "op09VolteOffPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isPS2SupportLTE()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 466
    const/4 v13, 0x2

    const/4 v15, 0x1

    if-le v1, v13, :cond_1

    .line 467
    if-ge v0, v13, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v14

    if-ge v14, v13, :cond_0

    .line 468
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v13

    if-nez v13, :cond_0

    .line 469
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isTdscdmaSupported()Z

    move-result v13

    if-nez v13, :cond_0

    .line 470
    return v15

    .line 472
    :cond_0
    const/4 v13, 0x0

    return v13

    .line 475
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v1, :cond_7

    .line 476
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 477
    .local v13, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v13, :cond_2

    .line 478
    invoke-virtual {v13, v14}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v14

    .line 482
    :cond_2
    aget-object v16, v10, v14

    if-eqz v16, :cond_6

    aget-object v15, v10, v14

    move/from16 v17, v7

    .end local v7    # "tSimCount":I
    .local v17, "tSimCount":I
    const-string v7, ""

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 486
    :cond_3
    aget-object v7, v10, v14

    const-string v15, "N/A"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 488
    invoke-static {v14}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimOn(I)Z

    move-result v7

    const/4 v15, 0x1

    if-ne v7, v15, :cond_4

    .line 489
    invoke-static {v14}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isRadioOffBySimManagement(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 490
    add-int/lit8 v6, v6, 0x1

    .line 491
    shl-int v7, v15, v14

    or-int/2addr v5, v7

    goto :goto_1

    .line 493
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSkipCapabilitySwitch, slot"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " is power off."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 475
    .end local v13    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_5
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v17

    const/4 v13, 0x2

    const/4 v15, 0x1

    goto :goto_0

    .line 482
    .end local v17    # "tSimCount":I
    .restart local v7    # "tSimCount":I
    .restart local v13    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_6
    move/from16 v17, v7

    .line 483
    .end local v7    # "tSimCount":I
    .restart local v17    # "tSimCount":I
    :goto_2
    const-string v7, "iccid is not ready, do capability switch"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 484
    const/4 v7, 0x0

    return v7

    .line 475
    .end local v13    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .end local v17    # "tSimCount":I
    .restart local v7    # "tSimCount":I
    :cond_7
    move/from16 v17, v7

    .line 499
    .end local v7    # "tSimCount":I
    .end local v14    # "i":I
    .restart local v17    # "tSimCount":I
    if-nez v6, :cond_8

    .line 500
    const-string v7, "no sim card, skip capability switch"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 501
    const/4 v7, 0x1

    return v7

    .line 505
    :cond_8
    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v7

    if-nez v7, :cond_9

    .line 506
    const-string v7, "cannot get sim operator info, do capability switch"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 507
    const/4 v7, 0x0

    return v7

    .line 510
    :cond_9
    const/4 v7, 0x0

    move v13, v12

    move v12, v11

    move v11, v9

    move v9, v8

    move/from16 v8, v17

    .end local v17    # "tSimCount":I
    .local v7, "i":I
    .local v8, "tSimCount":I
    .local v9, "wSimCount":I
    .local v11, "cSimCount":I
    .local v12, "hasOp09Sim":Z
    .local v13, "op09VolteOffPhoneId":I
    :goto_3
    if-ge v7, v1, :cond_e

    .line 511
    const/4 v15, 0x1

    shl-int v17, v15, v7

    and-int v15, v17, v5

    if-lez v15, :cond_d

    .line 512
    aget v15, v3, v7

    const/4 v14, 0x2

    if-ne v14, v15, :cond_a

    .line 513
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 514
    :cond_a
    aget v14, v3, v7

    invoke-static {v7, v14, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 515
    add-int/lit8 v11, v11, 0x1

    .line 516
    move v13, v7

    goto :goto_4

    .line 517
    :cond_b
    aget v14, v3, v7

    if-eqz v14, :cond_c

    .line 518
    add-int/lit8 v9, v9, 0x1

    .line 520
    :cond_c
    :goto_4
    aget v14, v3, v7

    const/4 v15, 0x4

    if-ne v14, v15, :cond_d

    .line 521
    const/4 v12, 0x1

    .line 510
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 526
    .end local v7    # "i":I
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isSkipCapabilitySwitch : Inserted SIM count: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", insertedStatus: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", tSimCount: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", wSimCount: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", cSimCount: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 530
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_f

    :cond_f
    const/4 v7, 0x2

    .line 540
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v15

    if-eqz v15, :cond_10

    if-ne v6, v7, :cond_10

    if-ne v8, v14, :cond_10

    if-ne v9, v14, :cond_10

    .line 542
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isTPlusWSupport()Z

    move-result v14

    if-eqz v14, :cond_10

    aget v14, v3, v0

    .line 553
    :cond_10
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_11

    if-ne v6, v7, :cond_11

    const/4 v7, 0x1

    if-ne v8, v7, :cond_11

    if-ne v11, v7, :cond_11

    .line 555
    aget v14, v3, v0

    invoke-static {v0, v14, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 556
    return v7

    .line 561
    :cond_11
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    const/4 v7, 0x1

    if-ne v9, v7, :cond_12

    if-ne v11, v7, :cond_12

    .line 563
    aget v14, v3, v0

    invoke-static {v0, v14, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 564
    return v7

    .line 569
    :cond_12
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v7, 0x2

    if-ne v6, v7, :cond_13

    if-ne v9, v7, :cond_13

    .line 571
    const/4 v7, 0x1

    return v7

    .line 575
    :cond_13
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    if-ne v9, v7, :cond_15

    .line 577
    return v7

    .line 575
    :cond_14
    const/4 v7, 0x1

    .line 581
    :cond_15
    const/4 v14, 0x0

    aget v15, v3, v14

    const/4 v14, 0x4

    if-ne v14, v15, :cond_16

    aget v15, v3, v7

    if-ne v14, v15, :cond_16

    if-ne v11, v7, :cond_16

    if-ne v9, v7, :cond_16

    if-eq v13, v0, :cond_16

    .line 584
    return v7

    .line 588
    :cond_16
    move v7, v8

    move v8, v9

    move v9, v11

    move v11, v12

    move v12, v13

    goto :goto_5

    .line 465
    .end local v13    # "op09VolteOffPhoneId":I
    .local v7, "tSimCount":I
    .local v8, "wSimCount":I
    .local v9, "cSimCount":I
    .local v11, "hasOp09Sim":Z
    .local v12, "op09VolteOffPhoneId":I
    :cond_17
    move/from16 v17, v7

    .line 588
    :goto_5
    const/4 v13, 0x0

    return v13
.end method

.method public static blacklist isSubsidyLockFeatureOn()Z
    .locals 3

    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, "supportSubsidYLock":Z
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v1

    .line 971
    .local v1, "lockPolicy":I
    const/16 v2, 0xa

    if-ne v2, v1, :cond_0

    .line 972
    const/4 v2, 0x1

    return v2

    .line 974
    :cond_0
    return v0
.end method

.method public static blacklist isSubsidyLockForOmSupported()Z
    .locals 3

    .line 983
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockFeatureOn()Z

    move-result v0

    .line 986
    .local v0, "isSubsidyLockSupported":Z
    nop

    .line 987
    const-string v1, "persist.vendor.subsidylock"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 992
    .local v1, "subsidylockStatus":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static blacklist isSupportSimSwitchEnhancement(I)Z
    .locals 2
    .param p0, "simType"    # I

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "ret":Z
    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    const/4 v0, 0x1

    .line 439
    goto :goto_0

    .line 433
    :cond_1
    const/4 v0, 0x1

    .line 434
    goto :goto_0

    .line 428
    :cond_2
    const/4 v0, 0x0

    .line 429
    goto :goto_0

    .line 423
    :cond_3
    const/4 v0, 0x0

    .line 424
    goto :goto_0

    .line 418
    :cond_4
    const/4 v0, 0x1

    .line 419
    goto :goto_0

    .line 413
    :cond_5
    const/4 v0, 0x1

    .line 414
    nop

    .line 444
    :goto_0
    return v0
.end method

.method public static blacklist isTPlusWSupport()Z
    .locals 2

    .line 857
    const-string v0, "vendor.ril.simswitch.tpluswsupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x1

    return v0

    .line 861
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVolteEnabled(ILandroid/content/Context;)Z
    .locals 8
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 334
    invoke-static {p1, p0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 335
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 338
    .local v1, "imsUseEnabled":Z
    :goto_0
    if-ne v1, v2, :cond_3

    .line 340
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 341
    .local v2, "subId":[I
    if-eqz v2, :cond_2

    .line 342
    nop

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/mediatek/internal/telephony/MtkRILConstants;->PREFERRED_NETWORK_MODE:I

    .line 342
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 346
    .local v3, "nwMode":I
    invoke-static {v3}, Landroid/telephony/MtkRadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v4

    .line 347
    .local v4, "rafFromNwMode":I
    const v5, 0x41000

    .line 348
    .local v5, "rafLteGroup":I
    and-int v6, v4, v5

    if-nez v6, :cond_1

    .line 349
    const/4 v1, 0x0

    .line 351
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVolteEnabled, imsUseEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", nwMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rafFromNwMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rafLteGroup = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 355
    .end local v3    # "nwMode":I
    .end local v4    # "rafFromNwMode":I
    .end local v5    # "rafLteGroup":I
    goto :goto_1

    .line 356
    :cond_2
    const-string v3, "isVolteEnabled, subId[] is null"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 359
    .end local v2    # "subId":[I
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVolteEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 360
    return v1
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RadioCapSwitchUtil] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioCapabilitySwitchUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void
.end method

.method public static blacklist updateSimImsiStatus(ILjava/lang/String;)V
    .locals 2
    .param p0, "slot"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimImsiStatus slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 866
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 867
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void
.end method
