.class public Lcom/mediatek/internal/telephony/uicc/EFResponseData;
.super Ljava/lang/Object;
.source "EFResponseData.java"


# static fields
.field private static final blacklist RESPONSE_DATA_FILE_STATUS:I = 0xb


# instance fields
.field private blacklist mFileStatus:I


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0xb

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/EFResponseData;->mFileStatus:I

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist getFileStatus()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/EFResponseData;->mFileStatus:I

    return v0
.end method
