.class final Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
.super Ljava/lang/Object;
.source "MtkWapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkWapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodedResult"
.end annotation


# instance fields
.field blacklist contentType:Ljava/lang/String;

.field blacklist contentTypeParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist header:[B

.field blacklist headerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist intentData:[B

.field blacklist isBlock:Z

.field blacklist mimeType:Ljava/lang/String;

.field blacklist parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field blacklist pduType:I

.field blacklist phoneId:I

.field blacklist statusCode:I

.field blacklist subId:I

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/MtkWapPushOverSms;

.field blacklist transactionId:I

.field blacklist wapAppId:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkWapPushOverSms;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->this$0:Lcom/mediatek/internal/telephony/MtkWapPushOverSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->isBlock:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/MtkWapPushOverSms;Lcom/mediatek/internal/telephony/MtkWapPushOverSms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/MtkWapPushOverSms;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/MtkWapPushOverSms$1;

    .line 457
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;-><init>(Lcom/mediatek/internal/telephony/MtkWapPushOverSms;)V

    return-void
.end method
