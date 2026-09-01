.class public Lcom/mediatek/internal/telephony/MtkRadioExResponse;
.super Lcom/mediatek/internal/telephony/MtkRadioExResponseBase;
.source "MtkRadioExResponse.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MtkRadioRespEx"

.field private static final blacklist isUserLoad:Z


# instance fields
.field blacklist mMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

.field blacklist mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 119
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->isUserLoad:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 125
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRadioExResponseBase;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 127
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkMessageBoost;->init(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/mediatek/internal/telephony/MtkMessageBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

    .line 128
    return-void
.end method

.method private static blacklist convertOpertatorInfoToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .line 427
    if-nez p0, :cond_0

    .line 428
    const-string v0, "unknown"

    return-object v0

    .line 429
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 430
    const-string v0, "available"

    return-object v0

    .line 431
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 432
    const-string v0, "current"

    return-object v0

    .line 433
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 434
    const-string v0, "forbidden"

    return-object v0

    .line 436
    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method private blacklist getSubId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 418
    const/4 v0, -0x1

    .line 419
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 420
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 421
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 423
    :cond_0
    return v0
.end method

.method private blacklist responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 850
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 851
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_5

    .line 852
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 853
    .local v1, "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 854
    const/4 v3, 0x2

    new-array v4, v3, [J

    .line 855
    .local v4, "timeSlot":[J
    new-array v5, v3, [Ljava/lang/String;

    .line 857
    .local v5, "timeSlotStr":[Ljava/lang/String;
    new-instance v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    aput-object v6, v1, v2

    .line 858
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->status:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 859
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 860
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 861
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 862
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 863
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 864
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 865
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 867
    aget-object v6, v5, v7

    if-eqz v6, :cond_2

    aget-object v6, v5, v8

    if-nez v6, :cond_0

    goto :goto_2

    .line 871
    :cond_0
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 872
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "HH:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 873
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v8, "GMT+8"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 875
    :try_start_0
    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 876
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    aput-wide v9, v4, v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .end local v8    # "date":Ljava/util/Date;
    nop

    .line 871
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 877
    .restart local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 878
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 879
    const/4 v4, 0x0

    .line 883
    .end local v3    # "e":Ljava/text/ParseException;
    .end local v6    # "j":I
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    aget-object v3, v1, v2

    iput-object v4, v3, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    goto :goto_3

    .line 868
    :cond_2
    :goto_2
    aget-object v3, v1, v2

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 853
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 886
    .end local v2    # "i":I
    .end local v4    # "timeSlot":[J
    .end local v5    # "timeSlotStr":[Ljava/lang/String;
    :cond_3
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_4

    .line 887
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 889
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 891
    .end local v1    # "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :cond_5
    return-void
.end method

.method private blacklist responseFemtoCellInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 29
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1042
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1043
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v0, 0x0

    .line 1044
    .local v0, "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    const/4 v4, 0x7

    .line 1046
    .local v4, "size_femto":I
    const/4 v5, 0x0

    .line 1047
    .local v5, "fPlmn":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1048
    .local v6, "fAct":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1049
    .local v7, "fCsgId":Ljava/lang/String;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1050
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_0

    .line 1051
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    .line 1052
    .local v9, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1053
    .local v10, "ss":Landroid/telephony/ServiceState;
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoPlmn()Ljava/lang/String;

    move-result-object v5

    .line 1054
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoAct()Ljava/lang/String;

    move-result-object v6

    .line 1055
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoCsgId()Ljava/lang/String;

    move-result-object v7

    .line 1058
    .end local v9    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    .end local v10    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    if-eqz v3, :cond_c

    iget v9, v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v9, :cond_c

    .line 1059
    const/4 v9, 0x0

    .line 1061
    .local v9, "strings":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 1062
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 1063
    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v9, v10

    .line 1062
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v11, p2

    .line 1066
    .end local v10    # "i":I
    array-length v10, v9

    rem-int/2addr v10, v4

    if-nez v10, :cond_b

    .line 1071
    new-instance v10, Ljava/util/ArrayList;

    array-length v12, v9

    div-int/2addr v12, v4

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1074
    .end local v0    # "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    .local v10, "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1
    array-length v0, v9

    if-ge v12, v0, :cond_a

    .line 1078
    const/4 v13, 0x0

    .line 1079
    .local v13, "sig":I
    const/4 v14, 0x0

    .line 1082
    .local v14, "con":Z
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    move-object/from16 v16, v8

    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .local v16, "phone":Lcom/android/internal/telephony/Phone;
    const-string v8, "uCs2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v15, :cond_3

    .line 1084
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v8, "responseFemtoCellInfos handling UCS2 format name"

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1087
    add-int/lit8 v0, v12, 0x0

    :try_start_0
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v17, v12, 0x1

    aget-object v15, v9, v17

    .line 1088
    const/4 v11, 0x4

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    const-string v15, "UTF-16"

    invoke-direct {v8, v11, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v8, v9, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    goto :goto_2

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v11, "responseFemtoCellInfos UnsupportedEncodingException"

    invoke-virtual {v8, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1082
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v8    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    move-object/from16 v16, v8

    .line 1094
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_2
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    .line 1095
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    add-int/lit8 v8, v12, 0x0

    aget-object v8, v9, v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v17, v13

    move/from16 v19, v14

    goto :goto_4

    .line 1096
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lookup RIL responseFemtoCellInfos() for plmn id= "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v12, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1098
    add-int/lit8 v0, v12, 0x1

    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v11, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->getSubId(I)I

    move-result v11

    add-int/lit8 v15, v12, 0x0

    aget-object v15, v9, v15

    move/from16 v17, v13

    .end local v13    # "sig":I
    .local v17, "sig":I
    const/4 v13, -0x1

    move/from16 v19, v14

    const/4 v14, 0x1

    .end local v14    # "con":Z
    .local v19, "con":Z
    invoke-virtual {v8, v11, v15, v14, v13}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v0

    goto :goto_4

    .line 1094
    .end local v17    # "sig":I
    .end local v19    # "con":Z
    .restart local v13    # "sig":I
    .restart local v14    # "con":Z
    :cond_6
    move/from16 v17, v13

    move/from16 v19, v14

    .line 1102
    .end local v13    # "sig":I
    .end local v14    # "con":Z
    .restart local v17    # "sig":I
    .restart local v19    # "con":Z
    :goto_4
    add-int/lit8 v0, v12, 0x6

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1104
    .end local v17    # "sig":I
    .local v0, "sig":I
    add-int/lit8 v8, v12, 0x2

    aget-object v8, v9, v8

    const-string v11, "7"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1105
    const-string v8, "4G"

    .line 1106
    .local v8, "actStr":Ljava/lang/String;
    const/16 v11, 0xe

    .local v11, "rat":I
    goto :goto_5

    .line 1107
    .end local v8    # "actStr":Ljava/lang/String;
    .end local v11    # "rat":I
    :cond_7
    add-int/lit8 v8, v12, 0x2

    aget-object v8, v9, v8

    const-string v11, "2"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1108
    const-string v8, "3G"

    .line 1109
    .restart local v8    # "actStr":Ljava/lang/String;
    const/4 v11, 0x3

    .restart local v11    # "rat":I
    goto :goto_5

    .line 1111
    .end local v8    # "actStr":Ljava/lang/String;
    .end local v11    # "rat":I
    :cond_8
    const-string v8, "2G"

    .line 1112
    .restart local v8    # "actStr":Ljava/lang/String;
    const/4 v11, 0x1

    .line 1114
    .restart local v11    # "rat":I
    :goto_5
    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v14, v12, 0x1

    aget-object v14, v9, v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v13

    .line 1116
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v13, v12, 0x5

    aget-object v13, v9, v13

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/String;-><init>([B)V

    .line 1118
    .local v2, "hnbName":Ljava/lang/String;
    add-int/lit8 v13, v12, 0x0

    aget-object v13, v9, v13

    if-eqz v13, :cond_9

    add-int/lit8 v13, v12, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    add-int/lit8 v13, v12, 0x2

    aget-object v13, v9, v13

    if-eqz v13, :cond_9

    add-int/lit8 v13, v12, 0x2

    aget-object v13, v9, v13

    .line 1119
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    add-int/lit8 v13, v12, 0x3

    aget-object v13, v9, v13

    if-eqz v13, :cond_9

    add-int/lit8 v13, v12, 0x3

    aget-object v13, v9, v13

    .line 1120
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1121
    const/4 v14, 0x1

    .end local v19    # "con":Z
    .restart local v14    # "con":Z
    goto :goto_6

    .line 1123
    .end local v14    # "con":Z
    .restart local v19    # "con":Z
    :cond_9
    move/from16 v14, v19

    .end local v19    # "con":Z
    .restart local v14    # "con":Z
    :goto_6
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "fPlmn":Ljava/lang/String;
    .local v17, "fPlmn":Ljava/lang/String;
    const-string v5, "FemtoCellInfo("

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v12, 0x3

    aget-object v5, v9, v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v18, v12, 0x4

    move-object/from16 v19, v6

    .end local v6    # "fAct":Ljava/lang/String;
    .local v19, "fAct":Ljava/lang/String;
    aget-object v6, v9, v18

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v12, 0x5

    aget-object v6, v9, v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v12, 0x0

    aget-object v6, v9, v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v12, 0x1

    aget-object v6, v9, v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") hnbName="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",sig="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",con="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1127
    new-instance v5, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    add-int/lit8 v6, v12, 0x3

    aget-object v6, v9, v6

    .line 1129
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v6, v12, 0x4

    aget-object v6, v9, v6

    .line 1130
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v6, v12, 0x0

    aget-object v24, v9, v6

    add-int/lit8 v6, v12, 0x1

    aget-object v25, v9, v6

    move-object/from16 v20, v5

    move-object/from16 v23, v2

    move/from16 v26, v11

    move/from16 v27, v14

    move/from16 v28, v0

    invoke-direct/range {v20 .. v28}, Lcom/mediatek/internal/telephony/FemtoCellInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1127
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    .end local v0    # "sig":I
    .end local v2    # "hnbName":Ljava/lang/String;
    .end local v8    # "actStr":Ljava/lang/String;
    .end local v11    # "rat":I
    .end local v14    # "con":Z
    add-int/2addr v12, v4

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    goto/16 :goto_1

    .end local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v17    # "fPlmn":Ljava/lang/String;
    .end local v19    # "fAct":Ljava/lang/String;
    .restart local v5    # "fPlmn":Ljava/lang/String;
    .restart local v6    # "fAct":Ljava/lang/String;
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    :cond_a
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v16, v8

    .line 1138
    .end local v5    # "fPlmn":Ljava/lang/String;
    .end local v6    # "fAct":Ljava/lang/String;
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v12    # "i":I
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v17    # "fPlmn":Ljava/lang/String;
    .restart local v19    # "fAct":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v0, v10

    goto :goto_7

    .line 1067
    .end local v10    # "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    .end local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v17    # "fPlmn":Ljava/lang/String;
    .end local v19    # "fAct":Ljava/lang/String;
    .local v0, "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    .restart local v5    # "fPlmn":Ljava/lang/String;
    .restart local v6    # "fAct":Ljava/lang/String;
    .restart local v8    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_b
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    .end local v5    # "fPlmn":Ljava/lang/String;
    .end local v6    # "fAct":Ljava/lang/String;
    .restart local v17    # "fPlmn":Ljava/lang/String;
    .restart local v19    # "fAct":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseFemtoCellInfos: invalid response. Got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " strings, expected multible of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1058
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v17    # "fPlmn":Ljava/lang/String;
    .end local v19    # "fAct":Ljava/lang/String;
    .restart local v5    # "fPlmn":Ljava/lang/String;
    .restart local v6    # "fAct":Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v16, v8

    .line 1140
    .end local v5    # "fPlmn":Ljava/lang/String;
    .end local v6    # "fAct":Ljava/lang/String;
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v17    # "fPlmn":Ljava/lang/String;
    .restart local v19    # "fAct":Ljava/lang/String;
    :goto_7
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    move-object/from16 v5, p1

    invoke-virtual {v2, v3, v5, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1141
    return-void
.end method

.method private blacklist responseGetPhbMemStorage(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;

    .line 823
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 825
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 826
    new-instance v1, Lcom/mediatek/internal/telephony/phb/PBMemStorage;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;-><init>()V

    .line 827
    .local v1, "ret":Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 828
    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;->storage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setStorage(Ljava/lang/String;)V

    .line 829
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;->used:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setUsed(I)V

    .line 830
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;->total:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setTotal(I)V

    .line 831
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 833
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 835
    .end local v1    # "ret":Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    :cond_1
    return-void
.end method

.method private blacklist responseGetSignalStrengthWithWcdmaEcio(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    .line 497
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 499
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 501
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    .line 502
    .local v1, "ret":Landroid/telephony/SignalStrength;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 507
    .end local v1    # "ret":Landroid/telephony/SignalStrength;
    :cond_1
    return-void
.end method

.method private blacklist responseOperatorInfosWithAct(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 445
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_5

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_4

    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 450
    const/4 v3, -0x1

    .line 451
    .local v3, "nLac":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 452
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 457
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 458
    .local v4, "plmn":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "52000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "52015"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 460
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v7, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 461
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->getSubId(I)I

    move-result v7

    .line 462
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 460
    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 463
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v7, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 464
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->getSubId(I)I

    move-result v7

    .line 465
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    const/4 v9, 0x0

    .line 463
    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 473
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v9, v9, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 475
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 478
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 479
    new-instance v5, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 480
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 481
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 482
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v9, v9, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v9, v9, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 484
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove this one "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 484
    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 449
    .end local v3    # "nLac":I
    .end local v4    # "plmn":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 488
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 490
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 492
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_5
    return-void
.end method

.method private blacklist responsePhbEntries(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 764
    .local p2, "phbEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 766
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 767
    const/4 v1, 0x0

    .line 768
    .local v1, "ret":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 769
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 770
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 771
    new-instance v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/phb/PhbEntry;-><init>()V

    aput-object v3, v1, v2

    .line 772
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->type:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->type:I

    .line 773
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->index:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 774
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 775
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->ton:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    .line 776
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->alphaId:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 778
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 780
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 782
    .end local v1    # "ret":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    :cond_2
    return-void
.end method

.method private blacklist responseReadPhbEntryExt(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .line 895
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 897
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 898
    const/4 v1, 0x0

    .line 899
    .local v1, "ret":[Lcom/mediatek/internal/telephony/phb/PBEntry;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 900
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mediatek/internal/telephony/phb/PBEntry;

    .line 901
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 902
    new-instance v3, Lcom/mediatek/internal/telephony/phb/PBEntry;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/phb/PBEntry;-><init>()V

    aput-object v3, v1, v2

    .line 903
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->type:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setIndex1(I)V

    .line 904
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setNumber(Ljava/lang/String;)V

    .line 905
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->type:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setType(I)V

    .line 906
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setText(Ljava/lang/String;)V

    .line 907
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->hidden:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setHidden(I)V

    .line 908
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->group:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setGroup(Ljava/lang/String;)V

    .line 909
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->adnumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setAdnumber(Ljava/lang/String;)V

    .line 910
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->adtype:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setAdtype(I)V

    .line 911
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->secondtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setSecondtext(Ljava/lang/String;)V

    .line 912
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setEmail(Ljava/lang/String;)V

    .line 901
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 914
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 916
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 918
    .end local v1    # "ret":[Lcom/mediatek/internal/telephony/phb/PBEntry;
    :cond_2
    return-void
.end method

.method private blacklist responseSmsMemStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V
    .locals 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    .line 561
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 563
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 566
    new-instance v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->used:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->total:I

    invoke-direct {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>(II)V

    .line 568
    .local v2, "status":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseSmsMemStatus: from HIDL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 569
    move-object v1, v2

    .line 570
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 572
    .end local v2    # "status":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 574
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private blacklist responseSmsParams(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V
    .locals 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    .line 525
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 527
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 528
    const/4 v1, 0x0

    .line 529
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 530
    new-instance v2, Lmediatek/telephony/MtkSmsParameters;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->format:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->vp:I

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->pid:I

    iget v6, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->dcs:I

    invoke-direct {v2, v3, v4, v5, v6}, Lmediatek/telephony/MtkSmsParameters;-><init>(IIII)V

    .line 532
    .local v2, "smsp":Lmediatek/telephony/MtkSmsParameters;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseSmsParams: from HIDL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 533
    move-object v1, v2

    .line 534
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 536
    .end local v2    # "smsp":Lmediatek/telephony/MtkSmsParameters;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 538
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 136
    if-eqz p0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 138
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 982
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 983
    return-void
.end method

.method public blacklist acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processRequestAck(I)V

    .line 151
    return-void
.end method

.method public blacklist activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 287
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 288
    return-void
.end method

.method public blacklist cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 341
    return-void
.end method

.method public blacklist cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 347
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 348
    return-void
.end method

.method public blacklist cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 354
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 355
    return-void
.end method

.method public blacklist dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1423
    return-void
.end method

.method public blacklist dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1426
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1427
    return-void
.end method

.method public blacklist deactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 369
    return-void
.end method

.method public blacklist deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 296
    return-void
.end method

.method public blacklist deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 794
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 795
    return-void
.end method

.method public blacklist disableNRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 386
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 387
    return-void
.end method

.method public blacklist eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 656
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 657
    return-void
.end method

.method public blacklist editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 790
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 791
    return-void
.end method

.method public blacklist enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 361
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 362
    return-void
.end method

.method public blacklist getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public blacklist getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 678
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 680
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 681
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 682
    .local v1, "response":[I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 683
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 684
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 688
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 690
    .end local v1    # "response":[I
    :cond_2
    return-void
.end method

.method public blacklist getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseOperatorInfosWithAct(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 325
    return-void
.end method

.method public blacklist getCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enabled"    # I

    .line 666
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 667
    return-void
.end method

.method public blacklist getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 177
    return-void
.end method

.method public blacklist getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 186
    return-void
.end method

.method public blacklist getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1177
    .local p2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1178
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    .line 1179
    .local v1, "NetworkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;>;"
    if-eqz v0, :cond_9

    .line 1180
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_8

    .line 1181
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 1182
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_REQUEST_GET_POL_LIST: invalid response. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " strings, expected multible of 4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1182
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1185
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 1186
    const/4 v2, 0x0

    .line 1187
    .local v2, "strOperName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1188
    .local v3, "strOperNumeric":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1189
    .local v4, "nAct":I
    const/4 v5, 0x0

    .line 1190
    .local v5, "nIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1191
    const/4 v2, 0x0

    .line 1192
    const/4 v3, 0x0

    .line 1193
    const/4 v4, 0x0

    .line 1194
    const/4 v5, 0x0

    .line 1195
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1196
    :cond_1
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1197
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1198
    .local v7, "format":I
    if-eqz v7, :cond_3

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2

    goto :goto_1

    .line 1204
    :cond_2
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1205
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Ljava/lang/String;

    .line 1206
    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 1207
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->getSubId(I)I

    move-result v10

    const/4 v11, -0x1

    .line 1206
    invoke-virtual {v9, v10, v3, v8, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1201
    :cond_3
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Ljava/lang/String;

    .line 1215
    .end local v7    # "format":I
    :cond_4
    :goto_1
    add-int/lit8 v7, v6, 0x3

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    add-int/lit8 v7, v6, 0x3

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1216
    :cond_5
    if-eqz v3, :cond_6

    const-string v7, "?????"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1217
    new-instance v7, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_6
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_0

    .line 1225
    .end local v6    # "i":I
    :cond_7
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v6, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1228
    .end local v2    # "strOperName":Ljava/lang/String;
    .end local v3    # "strOperNumeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    .end local v5    # "nIndex":I
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1230
    :cond_9
    return-void
.end method

.method public blacklist getCurrentUiccCardProvisioningStatusRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffStatus"    # I

    .line 304
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 305
    return-void
.end method

.method public blacklist getDeactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "deactivate"    # I
    .param p3, "allowSCGAdd"    # I

    .line 379
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 380
    return-void
.end method

.method public blacklist getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 638
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 639
    return-void
.end method

.method public blacklist getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 974
    .local p2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseFemtoCellInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 975
    return-void
.end method

.method public blacklist getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "activation"    # I

    .line 588
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 589
    return-void
.end method

.method public blacklist getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "langs"    # Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public blacklist getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public blacklist getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 1275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1276
    return-void
.end method

.method public blacklist getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1168
    .local p2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1169
    return-void
.end method

.method public blacklist getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;

    .line 818
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseGetPhbMemStorage(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V

    .line 819
    return-void
.end method

.method public blacklist getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 813
    .local p2, "stringLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 814
    return-void
.end method

.method public blacklist getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1259
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1260
    return-void
.end method

.method public blacklist getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1159
    .local p2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1160
    return-void
.end method

.method public blacklist getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseGetSignalStrengthWithWcdmaEcio(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V

    .line 334
    return-void
.end method

.method public blacklist getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseSmsMemStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V

    .line 558
    return-void
.end method

.method public blacklist getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    .line 521
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseSmsParams(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V

    .line 522
    return-void
.end method

.method public blacklist getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "memStatus"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    .line 706
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 708
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, "ret":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 711
    new-instance v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->used:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->total:I

    invoke-direct {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>(II)V

    move-object v1, v2

    .line 712
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 716
    .end local v1    # "ret":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :cond_1
    return-void
.end method

.method public blacklist getSuggestedPlmnListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1485
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1486
    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 744
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 745
    return-void
.end method

.method public blacklist hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 611
    return-void
.end method

.method public blacklist hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1467
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1468
    return-void
.end method

.method public blacklist modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "applyType"    # I

    .line 739
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 740
    return-void
.end method

.method public blacklist notifyEPDGScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1371
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1373
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1374
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1376
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1377
    return-void
.end method

.method public blacklist queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 222
    return-void
.end method

.method public blacklist queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 1000
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1001
    return-void
.end method

.method public blacklist queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "catagory"    # I
    .param p3, "state"    # I
    .param p4, "retry_cnt"    # I
    .param p5, "autolock_cnt"    # I
    .param p6, "num_set"    # I
    .param p7, "total_set"    # I
    .param p8, "key_state"    # I

    .line 1010
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    const/4 v2, 0x4

    aput p6, v1, v2

    const/4 v2, 0x5

    aput p7, v1, v2

    const/4 v2, 0x6

    aput p8, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1012
    return-void
.end method

.method public blacklist queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 750
    .local p2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 751
    return-void
.end method

.method public blacklist queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 926
    .local p2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 927
    return-void
.end method

.method public blacklist queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 786
    .local p2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 787
    return-void
.end method

.method public blacklist readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 759
    .local p2, "phbEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responsePhbEntries(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 760
    return-void
.end method

.method public blacklist readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .line 843
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseReadPhbEntryExt(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 844
    return-void
.end method

.method public blacklist readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 950
    .local p2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 952
    return-void
.end method

.method public blacklist readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 946
    .local p2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responsePhbEntries(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 947
    return-void
.end method

.method public blacklist readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "email"    # Ljava/lang/String;

    .line 930
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 931
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 932
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 935
    :cond_0
    const-string v1, "xxx@email.com"

    .line 936
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 938
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public blacklist readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 798
    .local p2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 800
    return-void
.end method

.method public blacklist readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 804
    .local p2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 805
    return-void
.end method

.method public blacklist readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sne"    # Ljava/lang/String;

    .line 941
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public blacklist registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1475
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1477
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1480
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1481
    return-void
.end method

.method public blacklist removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 551
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 552
    return-void
.end method

.method public blacklist resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1430
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1431
    return-void
.end method

.method public blacklist resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1246
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1247
    return-void
.end method

.method public blacklist restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 963
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 964
    return-void
.end method

.method public blacklist runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 242
    return-void
.end method

.method public blacklist selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 990
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 991
    return-void
.end method

.method public blacklist sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 195
    return-void
.end method

.method public blacklist sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public blacklist sendOemRilRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public blacklist sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1388
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1390
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1391
    const/4 v1, 0x0

    .line 1392
    .local v1, "ret":[B
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1393
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 1394
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1396
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1398
    .end local v1    # "ret":[B
    :cond_1
    return-void
.end method

.method public blacklist sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1418
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1419
    return-void
.end method

.method public blacklist sendRsuRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;

    .line 1502
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1503
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1504
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 1505
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1506
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_0

    .line 1510
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "sendRsuRequestResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1512
    :goto_0
    return-void
.end method

.method public blacklist sendSarIndicatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1489
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1490
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1491
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1492
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1494
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_0

    .line 1496
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "sendSarIndicatorResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1498
    :goto_0
    return-void
.end method

.method public blacklist sendWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1520
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1521
    return-void
.end method

.method public blacklist sendWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1516
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1517
    return-void
.end method

.method public blacklist sendWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1524
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1525
    return-void
.end method

.method public blacklist setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 673
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 674
    return-void
.end method

.method public blacklist setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 415
    return-void
.end method

.method public blacklist setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 230
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 231
    return-void
.end method

.method public blacklist setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 617
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 618
    return-void
.end method

.method public blacklist setCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 662
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 663
    return-void
.end method

.method public blacklist setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1447
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1448
    return-void
.end method

.method public blacklist setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 168
    return-void
.end method

.method public blacklist setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 203
    return-void
.end method

.method public blacklist setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 211
    return-void
.end method

.method public blacklist setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 647
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 648
    return-void
.end method

.method public blacklist setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 631
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 632
    return-void
.end method

.method public blacklist setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1343
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1345
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1348
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1349
    return-void
.end method

.method public blacklist setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 546
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 547
    return-void
.end method

.method public blacklist setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 720
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 721
    return-void
.end method

.method public blacklist setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1036
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1037
    return-void
.end method

.method public blacklist setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 578
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 579
    return-void
.end method

.method public blacklist setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1443
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1444
    return-void
.end method

.method public blacklist setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1452
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1453
    return-void
.end method

.method public blacklist setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1462
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1463
    return-void
.end method

.method public blacklist setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1457
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1458
    return-void
.end method

.method public blacklist setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1334
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1336
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1339
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1340
    return-void
.end method

.method public blacklist setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1268
    return-void
.end method

.method public blacklist setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 515
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 516
    return-void
.end method

.method public blacklist setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1352
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1354
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1357
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1358
    return-void
.end method

.method public blacklist setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1018
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1019
    return-void
.end method

.method public blacklist setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 314
    return-void
.end method

.method public blacklist setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1237
    return-void
.end method

.method public blacklist setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 838
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 839
    return-void
.end method

.method public blacklist setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 955
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 956
    return-void
.end method

.method public blacklist setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1250
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1251
    return-void
.end method

.method public blacklist setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 727
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 728
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 729
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 731
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 732
    return-void
.end method

.method public blacklist setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1255
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1256
    return-void
.end method

.method public blacklist setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1150
    .local p2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1151
    return-void
.end method

.method public blacklist setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 407
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 408
    return-void
.end method

.method public blacklist setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 400
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 401
    return-void
.end method

.method public blacklist setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1380
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1381
    return-void
.end method

.method public blacklist setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 280
    return-void
.end method

.method public blacklist setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 543
    return-void
.end method

.method public blacklist setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1434
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1435
    return-void
.end method

.method public blacklist setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 249
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 250
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 251
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 256
    :cond_1
    return-void
.end method

.method public blacklist setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 393
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 394
    return-void
.end method

.method public blacklist setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1402
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1403
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1404
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1407
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_0

    .line 1409
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "setTxPowerStatusResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1411
    :goto_0
    return-void
.end method

.method public blacklist setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1438
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1439
    return-void
.end method

.method public blacklist setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 624
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 625
    return-void
.end method

.method public blacklist setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1309
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1312
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1313
    return-void
.end method

.method public blacklist setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1298
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1300
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1303
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1304
    return-void
.end method

.method public blacklist setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1325
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1327
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1330
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1331
    return-void
.end method

.method public blacklist setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1361
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1363
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1366
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1367
    return-void
.end method

.method public blacklist setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1316
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1318
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1319
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1321
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1322
    return-void
.end method

.method public blacklist supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 160
    return-void
.end method

.method public blacklist supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 1027
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1028
    return-void
.end method

.method public blacklist syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1242
    return-void
.end method

.method public blacklist triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 694
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 695
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 696
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 701
    :cond_1
    return-void
.end method

.method public blacklist vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;

    .line 1280
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1282
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1283
    const/4 v1, 0x0

    .line 1284
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1285
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;->transactionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1286
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1288
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1290
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public blacklist vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1294
    return-void
.end method

.method public blacklist writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 754
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 755
    return-void
.end method

.method public blacklist writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 921
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 922
    return-void
.end method

.method public blacklist writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 808
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 809
    return-void
.end method
