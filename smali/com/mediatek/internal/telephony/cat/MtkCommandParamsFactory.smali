.class public Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;
.super Lcom/android/internal/telephony/cat/CommandParamsFactory;
.source "MtkCommandParamsFactory.java"


# static fields
.field public static final blacklist BATTERY_STATE:I = 0xa


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field blacklist tlvIndex:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    .locals 1
    .param p1, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->tlvIndex:I

    .line 108
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method private blacklist getAddrIndex(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)I"
        }
    .end annotation

    .line 923
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 925
    .local v0, "addrIndex":I
    const/4 v1, 0x0

    .line 926
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 927
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 928
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 929
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 930
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 933
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    :cond_1
    :goto_1
    return v0

    .line 936
    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 5
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 1023
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1025
    .local v0, "alphaIndex":I
    const/4 v1, 0x0

    .line 1026
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1027
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1028
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1029
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-le v0, p2, :cond_0

    .line 1031
    return-object v1

    .line 1033
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1036
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist getCallingAlphaIdIndex(Ljava/util/List;I)I
    .locals 5
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .line 973
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 975
    .local v0, "alphaIndex":I
    const/4 v1, 0x0

    .line 976
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 977
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 979
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-le v0, p2, :cond_0

    .line 981
    return v0

    .line 983
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 6
    .param p2, "alpha2Index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 1080
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 1081
    return-object v0

    .line 1084
    :cond_0
    const/4 v1, 0x0

    .line 1086
    .local v1, "iconIndex":I
    const/4 v2, 0x0

    .line 1087
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1088
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1089
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1090
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    if-ne v4, v5, :cond_1

    if-le v1, p2, :cond_1

    .line 1092
    return-object v2

    .line 1094
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1097
    :cond_2
    return-object v0
.end method

.method private blacklist getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 5
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 998
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1000
    .local v0, "alphaIndex":I
    const/4 v1, 0x0

    .line 1001
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1002
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1003
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1004
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-ge v0, p2, :cond_0

    .line 1006
    return-object v1

    .line 1008
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist getConfirmationAlphaIdIndex(Ljava/util/List;I)I
    .locals 5
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .line 948
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 950
    .local v0, "alphaIndex":I
    const/4 v1, 0x0

    .line 951
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 952
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 953
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 954
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-ge v0, p2, :cond_0

    .line 956
    return v0

    .line 958
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 7
    .param p2, "alpha1Index"    # I
    .param p3, "alpha2Index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;II)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 1051
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 1052
    return-object v0

    .line 1055
    :cond_0
    const/4 v2, 0x0

    .line 1057
    .local v2, "iconIndex":I
    const/4 v3, 0x0

    .line 1058
    .local v3, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1059
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1060
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1061
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    if-ne v5, v6, :cond_2

    if-eq v1, p3, :cond_1

    if-ge v2, p3, :cond_2

    .line 1063
    :cond_1
    return-object v3

    .line 1065
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1068
    :cond_3
    return-object v0
.end method

.method private blacklist resetTlvIndex()V
    .locals 1

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->tlvIndex:I

    .line 121
    return-void
.end method

.method private blacklist searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 4
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 138
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 145
    .local v1, "tagValue":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->tlvIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->tlvIndex:I

    .line 147
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 148
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 149
    return-object v2

    .line 151
    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    goto :goto_0

    .line 154
    :cond_2
    return-object v0

    .line 139
    .end local v1    # "tagValue":I
    :cond_3
    :goto_1
    const-string v1, "CPF-searchForNextTagAndIndex: Invalid params"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    return-object v0
.end method

.method private blacklist searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 169
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->resetTlvIndex()V

    .line 170
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 171
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected blacklist processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 189
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process DisplayText"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 192
    .local v0, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 194
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 196
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_0

    .line 197
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 201
    :cond_0
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 205
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 206
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 207
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 210
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_2

    .line 213
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v4

    .line 215
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveIconId ResultException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_0
    :try_start_1
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    goto :goto_1

    .line 219
    :catch_1
    move-exception v4

    .line 220
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string v5, "iconId is null."

    invoke-static {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :cond_2
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_3

    .line 227
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    goto :goto_2

    .line 228
    :catch_2
    move-exception v4

    .line 229
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveDuration ResultException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_3
    :goto_2
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 235
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 237
    new-instance v4, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v4, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 239
    if-eqz v1, :cond_6

    .line 240
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 241
    iput v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 242
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 243
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 242
    invoke-virtual {v3, v4, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 244
    return v5

    .line 246
    :cond_6
    return v3

    .line 202
    :cond_7
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method protected blacklist processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 620
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process EventNotify"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 623
    .local v0, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 625
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 627
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_0

    .line 628
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 631
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 634
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 635
    if-eqz v2, :cond_1

    .line 636
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 637
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 640
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 641
    new-instance v4, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v4, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 643
    if-eqz v1, :cond_2

    .line 644
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 645
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 646
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 647
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 646
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 648
    return v3

    .line 650
    :cond_2
    return v3
.end method

.method protected blacklist processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 263
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process GetInkey"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 266
    .local v0, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v1, 0x0

    .line 268
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 270
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_7

    .line 271
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 276
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_0

    .line 279
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v3

    .line 281
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveIconId ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_0
    :try_start_1
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    goto :goto_1

    .line 286
    :catch_1
    move-exception v3

    .line 287
    .local v3, "ne":Ljava/lang/NullPointerException;
    const-string v4, "iconId is null."

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    :cond_0
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_1

    .line 295
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 298
    goto :goto_2

    .line 296
    :catch_2
    move-exception v3

    .line 297
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveDuration ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_1
    :goto_2
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 302
    iput v3, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 304
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr v4, v3

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_3

    :cond_2
    move v4, v5

    :goto_3
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 305
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_4

    :cond_3
    move v4, v5

    :goto_4
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 306
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_5

    :cond_4
    move v4, v5

    :goto_5
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 307
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_6

    :cond_5
    move v4, v5

    :goto_6
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 308
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 310
    new-instance v4, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v4, p1, v0}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 312
    if-eqz v1, :cond_6

    .line 313
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 314
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 315
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 316
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 315
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 317
    return v3

    .line 319
    :cond_6
    return v5

    .line 273
    :cond_7
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method protected blacklist processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 336
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process GetInput"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 339
    .local v0, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v1, 0x0

    .line 341
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 343
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_e

    .line 344
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 349
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 350
    if-eqz v2, :cond_d

    .line 352
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 353
    .local v3, "rawValue":[B
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 356
    .local v4, "valueIndex":I
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 357
    iget v5, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    const/16 v6, 0xef

    if-le v5, v6, :cond_0

    .line 358
    iput v6, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 361
    :cond_0
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 362
    iget v5, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v5, v6, :cond_1

    .line 363
    iput v6, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 367
    .end local v3    # "rawValue":[B
    .end local v4    # "valueIndex":I
    :cond_1
    nop

    .line 372
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 373
    if-eqz v2, :cond_2

    .line 375
    :try_start_1
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v3

    .line 377
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveTextString ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_2
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 382
    if-eqz v2, :cond_3

    .line 384
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v3

    .line 387
    goto :goto_1

    .line 385
    :catch_1
    move-exception v3

    .line 386
    .restart local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveIconId ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_1
    :try_start_3
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 393
    goto :goto_2

    .line 391
    :catch_2
    move-exception v3

    .line 392
    .local v3, "ne":Ljava/lang/NullPointerException;
    const-string v4, "iconId is null."

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    :cond_3
    :goto_2
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 398
    if-eqz v2, :cond_4

    .line 400
    :try_start_4
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_4
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_3

    .line 403
    goto :goto_3

    .line 401
    :catch_3
    move-exception v3

    .line 402
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveDuration ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_4
    :goto_3
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    move v3, v5

    :goto_4
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 407
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_5

    :cond_6
    move v3, v5

    :goto_5
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 408
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_6

    :cond_7
    move v3, v5

    :goto_6
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 409
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_8

    move v3, v4

    goto :goto_7

    :cond_8
    move v3, v5

    :goto_7
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 410
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_8

    :cond_9
    move v3, v5

    :goto_8
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 414
    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    const-string v7, ", truncating to "

    if-eqz v3, :cond_a

    iget v3, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v8, 0x76

    if-le v3, v8, :cond_a

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCS2: received maxLen = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iput v8, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    goto :goto_9

    .line 418
    :cond_a
    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    if-nez v3, :cond_b

    iget v3, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v3, v6, :cond_b

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GSM 7Bit Default: received maxLen = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iput v6, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 424
    :cond_b
    :goto_9
    new-instance v3, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v3, p1, v0}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 426
    if-eqz v1, :cond_c

    .line 427
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 428
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 429
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 430
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 429
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 431
    return v4

    .line 433
    :cond_c
    return v5

    .line 365
    :catch_4
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 369
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_d
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    .line 346
    :cond_e
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method protected blacklist processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 704
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process LaunchBrowser"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 707
    .local v0, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 708
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v2, 0x0

    .line 710
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 711
    .local v3, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v3, :cond_1

    .line 713
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 714
    .local v4, "rawValue":[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 715
    .local v5, "valueIndex":I
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v6

    .line 716
    .local v6, "valueLen":I
    if-lez v6, :cond_0

    .line 717
    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    goto :goto_0

    .line 720
    :cond_0
    const/4 v2, 0x0

    .line 724
    .end local v4    # "rawValue":[B
    .end local v5    # "valueIndex":I
    .end local v6    # "valueLen":I
    :goto_0
    goto :goto_1

    .line 722
    :catch_0
    move-exception v4

    .line 723
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5

    .line 728
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 729
    if-eqz v3, :cond_2

    .line 730
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 733
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 734
    if-eqz v3, :cond_3

    .line 735
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 736
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 741
    :cond_3
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 744
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 745
    .local v4, "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_2

    .line 750
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_2

    .line 747
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 748
    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    nop

    .line 754
    :goto_2
    new-instance v5, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    invoke-direct {v5, p1, v0, v2, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 756
    if-eqz v1, :cond_6

    .line 757
    const/4 v5, 0x1

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 758
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v7, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 759
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 758
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 760
    return v5

    .line 762
    :cond_6
    const/4 v5, 0x0

    return v5
.end method

.method protected blacklist processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 16
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 779
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "process PlayTone"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    const/4 v3, 0x0

    .line 782
    .local v3, "tone":Lcom/android/internal/telephony/cat/Tone;
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    move-object v10, v0

    .line 783
    .local v10, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 784
    .local v4, "duration":Lcom/android/internal/telephony/cat/Duration;
    const/4 v5, 0x0

    .line 786
    .local v5, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 787
    .local v6, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 789
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 791
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 792
    .local v0, "rawValue":[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 793
    .local v7, "valueIndex":I
    aget-byte v8, v0, v7

    .line 794
    .local v8, "toneVal":I
    invoke-static {v8}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v9

    .line 798
    .end local v0    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "toneVal":I
    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 802
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 803
    if-eqz v6, :cond_1

    .line 805
    :try_start_1
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 808
    goto :goto_1

    .line 806
    :catch_1
    move-exception v0

    .line 807
    .local v0, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveAlphaId ResultException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    .end local v0    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 812
    if-eqz v6, :cond_2

    .line 814
    :try_start_2
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v0
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v0

    .line 817
    goto :goto_2

    .line 815
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 816
    .restart local v0    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveDuration ResultException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    .end local v0    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_2
    move-object v0, v4

    .end local v4    # "duration":Lcom/android/internal/telephony/cat/Duration;
    .local v0, "duration":Lcom/android/internal/telephony/cat/Duration;
    :goto_2
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v11

    .line 821
    .end local v6    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v11, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v11, :cond_3

    .line 822
    invoke-static {v11}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 823
    iget-boolean v4, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v10, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    move-object v12, v5

    goto :goto_3

    .line 821
    :cond_3
    move-object v12, v5

    .line 826
    .end local v5    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .local v12, "iconId":Lcom/android/internal/telephony/cat/IconId;
    :goto_3
    move-object/from16 v13, p1

    iget v4, v13, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v14, 0x1

    and-int/2addr v4, v14

    const/4 v15, 0x0

    if-eqz v4, :cond_4

    move v9, v14

    goto :goto_4

    :cond_4
    move v9, v15

    .line 828
    .local v9, "vibrate":Z
    :goto_4
    iput-boolean v15, v10, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 829
    new-instance v8, Lcom/android/internal/telephony/cat/PlayToneParams;

    move-object v4, v8

    move-object/from16 v5, p1

    move-object v6, v10

    move-object v7, v3

    move-object v15, v8

    move-object v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    iput-object v15, v1, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 831
    if-eqz v12, :cond_5

    .line 832
    iput v14, v1, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 833
    iget-object v4, v1, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v12, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 834
    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 833
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 835
    return v14

    .line 837
    :cond_5
    const/4 v4, 0x0

    return v4
.end method

.method protected blacklist processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 450
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process SelectItem"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/MtkMenu;-><init>()V

    .line 453
    .local v0, "menu":Lcom/mediatek/internal/telephony/cat/MtkMenu;
    const/4 v1, 0x0

    .line 454
    .local v1, "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v2, 0x0

    .line 455
    .local v2, "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 457
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 458
    invoke-static {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    .line 460
    .local v4, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v5, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 462
    .local v5, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v5, :cond_0

    .line 464
    :try_start_0
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->title:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v6

    .line 466
    .local v6, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveAlphaId ResultException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    .end local v6    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add AlphaId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 469
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v4, v6, :cond_13

    .line 479
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v6, v3}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 480
    if-eqz v5, :cond_2

    .line 481
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v6

    .line 482
    .local v6, "item":Lcom/android/internal/telephony/cat/Item;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add menu item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_1

    const-string v8, ""

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/Item;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->items:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v6    # "item":Lcom/android/internal/telephony/cat/Item;
    goto :goto_1

    .line 490
    :cond_2
    iget-object v6, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_12

    .line 518
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v6, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 519
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 523
    :try_start_1
    invoke-static {v5}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v7

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->defaultItem:I
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 526
    goto :goto_3

    .line 524
    :catch_1
    move-exception v7

    .line 525
    .local v7, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveItemId ResultException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    .end local v7    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->defaultItem:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v7, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 531
    if-eqz v5, :cond_4

    .line 532
    iput v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 534
    :try_start_2
    invoke-static {v5}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v7
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v7

    .line 537
    goto :goto_4

    .line 535
    :catch_2
    move-exception v7

    .line 536
    .restart local v7    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveIconId ResultException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    .end local v7    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_4
    :try_start_3
    iget-boolean v7, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->titleIconSelfExplanatory:Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 542
    goto :goto_5

    .line 540
    :catch_3
    move-exception v7

    .line 541
    .local v7, "ne":Ljava/lang/NullPointerException;
    const-string v8, "titleIconId is null."

    invoke-static {p0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    .end local v7    # "ne":Ljava/lang/NullPointerException;
    :cond_4
    :goto_5
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v7, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 546
    const/4 v7, 0x2

    if-eqz v5, :cond_5

    .line 547
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 549
    :try_start_4
    invoke-static {v5}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;

    move-result-object v8
    :try_end_4
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v8

    .line 552
    goto :goto_6

    .line 550
    :catch_4
    move-exception v8

    .line 551
    .local v8, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retrieveItemsIconId ResultException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    .end local v8    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_6
    :try_start_5
    iget-boolean v8, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    iput-boolean v8, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->itemsIconSelfExplanatory:Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 557
    goto :goto_7

    .line 555
    :catch_5
    move-exception v8

    .line 556
    .local v8, "ne":Ljava/lang/NullPointerException;
    const-string v9, "itemsIconId is null."

    invoke-static {p0, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    .end local v8    # "ne":Ljava/lang/NullPointerException;
    :cond_5
    :goto_7
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr v8, v6

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    move v8, v6

    goto :goto_8

    :cond_6
    move v8, v9

    .line 561
    .local v8, "presentTypeSpecified":Z
    :goto_8
    if-eqz v8, :cond_8

    .line 562
    iget v10, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr v10, v7

    if-nez v10, :cond_7

    .line 563
    sget-object v10, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    goto :goto_9

    .line 565
    :cond_7
    sget-object v10, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 568
    :cond_8
    :goto_9
    iget v10, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_9

    move v10, v6

    goto :goto_a

    :cond_9
    move v10, v9

    :goto_a
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->softKeyPreferred:Z

    .line 569
    iget v10, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_a

    move v10, v6

    goto :goto_b

    :cond_a
    move v10, v9

    :goto_b
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->helpAvailable:Z

    .line 571
    new-instance v10, Lcom/android/internal/telephony/cat/SelectItemParams;

    if-eqz v1, :cond_b

    move v11, v6

    goto :goto_c

    :cond_b
    move v11, v9

    :goto_c
    invoke-direct {v10, p1, v0, v11}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 574
    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    if-eqz v10, :cond_11

    if-eq v10, v6, :cond_f

    if-eq v10, v7, :cond_c

    goto :goto_d

    .line 587
    :cond_c
    if-eqz v2, :cond_e

    .line 588
    iget-object v7, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 589
    .local v7, "recordNumbers":[I
    if-eqz v1, :cond_d

    .line 591
    iget-object v10, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v10, v10

    add-int/2addr v10, v6

    new-array v7, v10, [I

    .line 592
    iget v10, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    aput v10, v7, v9

    .line 593
    iget-object v10, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    iget-object v11, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v11, v11

    invoke-static {v10, v9, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    :cond_d
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 597
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 598
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 597
    invoke-virtual {v9, v7, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 599
    goto :goto_d

    .line 601
    .end local v7    # "recordNumbers":[I
    :cond_e
    return v9

    .line 578
    :cond_f
    if-eqz v1, :cond_10

    iget v7, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    if-lez v7, :cond_10

    .line 579
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 580
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v9, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 581
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 580
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 582
    nop

    .line 604
    :goto_d
    return v6

    .line 584
    :cond_10
    return v9

    .line 576
    :cond_11
    return v9

    .line 491
    .end local v8    # "presentTypeSpecified":Z
    :cond_12
    const-string v6, "no menu item"

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 475
    :cond_13
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6
.end method

.method protected blacklist processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .line 664
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process SetUpEventList"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 667
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 669
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 670
    .local v1, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 671
    .local v2, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 673
    .local v3, "valueLen":I
    new-array v4, v3, [I

    .line 674
    .local v4, "eventList":[I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 675
    aget-byte v6, v1, v2

    aput v6, v4, v5

    .line 676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPF-processSetUpEventList: eventList["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    add-int/lit8 v5, v5, 0x1

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    .end local v5    # "index":I
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cat/SetEventListParams;

    invoke-direct {v5, p1, v4}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v1    # "rawValue":[B
    .end local v2    # "valueIndex":I
    .end local v3    # "valueLen":I
    goto :goto_1

    .line 682
    .end local v4    # "eventList":[I
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, " IndexOutofBoundException in processSetUpEventList"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method protected blacklist processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 853
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process SetupCall"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 856
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v1, 0x0

    .line 858
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 860
    .local v2, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 861
    .local v3, "callMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 862
    .local v4, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v5, 0x0

    .line 868
    .local v5, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getAddrIndex(Ljava/util/List;)I

    move-result v6

    .line 869
    .local v6, "addrIndex":I
    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v8, v6, :cond_0

    .line 870
    const-string v8, "fail to get ADDRESS data object"

    invoke-static {p0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    return v7

    .line 874
    :cond_0
    invoke-direct {p0, p2, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getConfirmationAlphaIdIndex(Ljava/util/List;I)I

    move-result v9

    .line 875
    .local v9, "alpha1Index":I
    invoke-direct {p0, p2, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getCallingAlphaIdIndex(Ljava/util/List;I)I

    move-result v10

    .line 877
    .local v10, "alpha2Index":I
    invoke-direct {p0, p2, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 878
    if-eqz v1, :cond_1

    .line 879
    iget-boolean v11, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v1, v11}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 882
    :cond_1
    invoke-direct {p0, p2, v9, v10}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 883
    if-eqz v1, :cond_2

    .line 884
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4

    .line 885
    iget-boolean v11, v4, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v11, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 888
    :cond_2
    invoke-direct {p0, p2, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 889
    if-eqz v1, :cond_3

    .line 890
    iget-boolean v11, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v1, v11}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 893
    :cond_3
    invoke-direct {p0, p2, v10}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 894
    if-eqz v1, :cond_4

    .line 895
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 896
    iget-boolean v11, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v11, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 899
    :cond_4
    new-instance v11, Lcom/android/internal/telephony/cat/CallSetupParams;

    invoke-direct {v11, p1, v2, v3}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v11, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 901
    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_0

    .line 913
    :cond_5
    return v7

    .line 902
    :cond_6
    :goto_0
    const/4 v11, 0x2

    iput v11, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 903
    new-array v11, v11, [I

    .line 904
    .local v11, "recordNumbers":[I
    if-eqz v4, :cond_7

    .line 905
    iget v12, v4, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    goto :goto_1

    :cond_7
    move v12, v8

    :goto_1
    aput v12, v11, v7

    .line 906
    if-eqz v5, :cond_8

    iget v8, v5, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    goto :goto_2

    .line 907
    :cond_8
    nop

    :goto_2
    const/4 v7, 0x1

    aput v8, v11, v7

    .line 909
    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 910
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 909
    invoke-virtual {v8, v11, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 911
    return v7
.end method

.method protected blacklist sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 115
    :cond_0
    const-string v0, "mCaller is null!!!"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void
.end method
