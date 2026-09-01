.class Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "MtkResponseData.java"


# instance fields
.field private blacklist day:I

.field private blacklist hour:I

.field private blacklist language:[B

.field private blacklist mBatteryState:I

.field private blacklist mIsBatteryState:Z

.field private blacklist mIsDate:Z

.field private blacklist mIsLanguage:Z

.field private blacklist minute:I

.field private blacklist month:I

.field private blacklist second:I

.field private blacklist timezone:I

.field private blacklist year:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "batteryState"    # I

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 98
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mBatteryState:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsDate:Z

    .line 100
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsBatteryState:Z

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(IIIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "timezone"    # I

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 76
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->year:I

    .line 77
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->month:I

    .line 78
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->day:I

    .line 79
    iput p4, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->hour:I

    .line 80
    iput p5, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->minute:I

    .line 81
    iput p6, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->second:I

    .line 82
    iput p7, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->timezone:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsDate:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 85
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsBatteryState:Z

    .line 86
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 2
    .param p1, "language"    # [B

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->language:[B

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsDate:Z

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsBatteryState:Z

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .line 106
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsDate:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATE_TIME_AND_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 110
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 112
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->year:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->month:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->day:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 115
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->hour:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 116
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->minute:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->second:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->timezone:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    .end local v0    # "tag":I
    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsLanguage:Z

    if-ne v0, v1, :cond_2

    .line 120
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 121
    .restart local v0    # "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->language:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 124
    .local v4, "b":B
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "tag":I
    :cond_1
    goto :goto_1

    .line 126
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mIsBatteryState:Z

    if-ne v0, v1, :cond_3

    .line 127
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BATTERY_STATE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 128
    .restart local v0    # "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;->mBatteryState:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 126
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    nop

    .line 132
    :goto_2
    return-void
.end method
