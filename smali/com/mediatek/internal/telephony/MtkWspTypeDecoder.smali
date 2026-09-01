.class public Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;
.super Lcom/android/internal/telephony/WspTypeDecoder;
.source "MtkWspTypeDecoder.java"


# static fields
.field public static final blacklist CONTENT_MIME_TYPE_B_CONNECTIVITY:Ljava/lang/String; = "application/vnd.wap.connectivity-wbxml"

.field public static final blacklist CONTENT_MIME_TYPE_B_VND_SULP_INIT:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final blacklist CONTENT_TYPE_B_CONNECTIVITY:I = 0x35

.field private static final blacklist WELL_KNOWN_HEADERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 23

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    .line 68
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Accept"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Accept-Charset"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Accept-Encoding"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Accept-Language"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Accept-Ranges"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Age"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Allow"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Authorization"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "Cache-Control"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Connection"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Content-Base"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v15, 0xb

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v14

    const-string v14, "Content-Encoding"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Content-Language"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v14, 0xd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Content-Length"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v14, 0xe

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Content-Location"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v14, 0xf

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Content-MD5"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v14, 0x10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Content-Range"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v17, 0x11

    move-object/from16 v18, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v17, v13

    const-string v13, "Content-Type"

    invoke-virtual {v0, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v19, v14

    const-string v14, "Date"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v14, 0x13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v20, v13

    const-string v13, "Etag"

    invoke-virtual {v0, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x14

    move-object/from16 v21, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v13, "Expires"

    invoke-virtual {v0, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x15

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v13, "From"

    invoke-virtual {v0, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Host"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "If-Modified-Since"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x18

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "If-Match"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x19

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "If-None-Match"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x1a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "If-Range"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x1b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "If-Unmodified-Since"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x1c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Location"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x1d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Last-Modified"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x1e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Max-Forwards"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x1f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Pragma"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Proxy-Authenticate"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x21

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Proxy-Authorization"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x22

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Public"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x23

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Range"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x24

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Referer"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x25

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Retry-After"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x26

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Server"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x27

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Transfer-Encoding"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x28

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Upgrade"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x29

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "User-Agent"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x2a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Vary"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x2b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Via"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x2c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Warning"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x2d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "WWW-Authenticate"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x2e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Content-Disposition"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v13, 0x2f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v22, v11

    const-string v11, "X-Wap-Application-Id"

    invoke-virtual {v0, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x30

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "X-Wap-Content-URI"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x31

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "X-Wap-Initiator-URI"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Accept-Application"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Bearer-Indication"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Push-Flag"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Profile"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Profile-Diff"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Profile-Warning"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Expect"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "TE"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x3a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Trailer"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v11, 0x3b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "X-Wap-Tod"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Content-ID"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Set-Cookie"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Cookie"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Encoding-Version"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x44

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Profile-Warning"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x45

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "X-WAP-Security"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x47

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x48

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Expect"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x49

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "X-Wap-Loc-Invocation"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v3, 0x4a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "X-Wap-Loc-Delivery"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    .line 278
    const-string v3, "x-wap-application:*"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:push.sia"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:wml.ua"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:wta.ua"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:mms.ua"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:push.syncml"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:loc.ua"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:syncml.dm"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:drm.ua"

    move-object/from16 v2, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:emn.ua"

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-wap-application:wv.ua"

    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-oma-application:ulp.ua"

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-oma-application:dlota.ua"

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-oma-application:java-ams"

    move-object/from16 v2, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const-string v1, "x-oma-application:bcast.ua"

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-application:dpe.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-application:cpm:ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-microsoft:localcontent.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-microsoft:IMclient.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-docomo:imode.mail.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-docomo:imode.mr.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-docomo:imode.mf.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-motorola:location.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-motorola:now.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-motorola:otaprov.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-motorola:browser.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-motorola:splash.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x800b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-nai:mvsw.command"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-openwave:iota.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-docomo:imode.mail2.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nec:otaprov.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:call.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-coremobility:sqa.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:doja.jam.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:sip.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-vodafone:otaprov.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-hutchison:ad.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:voip.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:voice.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:browser.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:dan.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9017

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:vs.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:voip.ext1.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-vodafone:casting.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:imode.data.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-snapin:otaprov.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:vrs.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:vrpg.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-motorola:screen3.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:device.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:msc.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-3gpp2:lcs.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-vodafone:dcd.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-3gpp:mbms.service.announcement.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-vodafone:dltmtbl.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-vodafone:dvcctl.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-cmcc:mail.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:vmb.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:ldapss.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-hutchison:al.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:uma.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:news.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:pf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:ub>"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:nat.traversal.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-intromobile:intropad.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:uin.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9031

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:iptv.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-hutchison:il.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9033

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:voip.general.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9034

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-microsoft:drm.meter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9035

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-microsoft:drm.license"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9036

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:ic.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9037

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-slingmedia:SPM.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-cibenix:odp.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9039

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-motorola:voip.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-motorola:ims"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:imode.remote.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:device.ctl.um"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-microsoft:playready.drm.initiator"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-microsoft:playready.drm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-sbm:ms.mexa.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "urn:oma:drms:org-LGE:L650V"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:um"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:uin.um"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "urn:oma:drms:org-LGE:KU450"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-microsoft:cfgmgr.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-3gpp:mbms.download.delivery.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:star.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "urn:oma:drms:org-LGE:KU380"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:pf2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9049

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-motorola:blogcentral.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:imode.agent.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-wap-application:push.sia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:destination.network.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-sbm:mid2.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-carrieriq:avm.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-sbm:ms.xml.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "urn:dvb:ipdc:notification:2008"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:imode.mvch.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-motorola:webui.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-sbm:cid.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-nokia:vcc.v1.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:open.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:sp.mail.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-essoy-application:push.erace"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:open.fu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-samsung:osp.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:imode.mchara.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-Wap-Application-Id:x-oma-application: scidm.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:xmd.mail.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-application:pal.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:imode.relation.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:xmd.storage.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9060

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x-oma-docomo:xmd.lcsapp.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 0
    .param p1, "pdu"    # [B

    .line 150
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 151
    return-void
.end method


# virtual methods
.method public blacklist decodeHeaderFieldName(I)Z
    .locals 2
    .param p1, "startIndex"    # I

    .line 221
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 223
    return v1

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public blacklist decodeHeaderFieldValues(I)Z
    .locals 4
    .param p1, "startIndex"    # I

    .line 241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    .line 242
    .local v0, "first":B
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1f

    if-ne v0, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    .line 243
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 245
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mDataLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mDataLength:I

    .line 246
    return v2

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 250
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 251
    return v2

    .line 253
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeTextString(I)Z

    move-result v1

    return v1
.end method

.method public blacklist decodeHeaders(II)V
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "headerLength"    # I

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "headerName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 179
    .local v1, "headerValue":Ljava/lang/String;
    move v2, p1

    .line 180
    .local v2, "index":I
    :cond_0
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_3

    .line 181
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeHeaderFieldName(I)Z

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->expandWellKnownHeadersName()V

    .line 184
    iget-wide v3, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mUnsigned32bit:J

    long-to-int v3, v3

    .line 185
    .local v3, "intValues":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 186
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    goto :goto_1

    .line 187
    :cond_1
    if-ltz v3, :cond_0

    .line 188
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeHeaderFieldValues(I)Z

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/2addr v2, v4

    .line 195
    iget-wide v4, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mUnsigned32bit:J

    long-to-int v3, v4

    .line 196
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 197
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    goto :goto_2

    .line 198
    :cond_2
    if-ltz v3, :cond_0

    .line 199
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    .end local v3    # "intValues":I
    :cond_3
    return-void
.end method

.method public blacklist expandWellKnownHeadersName()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v0

    .line 259
    .local v0, "binaryHeadersName":I
    sget-object v1, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 260
    .end local v0    # "binaryHeadersName":I
    goto :goto_0

    .line 261
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mUnsigned32bit:J

    .line 263
    :goto_0
    return-void
.end method

.method public blacklist expandWellKnownXWapApplicationIdName()V
    .locals 4

    .line 412
    const-string v0, "X-Wap-Application-Id"

    .line 413
    .local v0, "X_WAP_APPLICATION_ID":Ljava/lang/String;
    const/4 v1, -0x1

    .line 415
    .local v1, "binaryCode":I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 418
    nop

    .line 419
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 420
    sget-object v2, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 421
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 422
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 416
    :catch_0
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/Exception;
    return-void
.end method

.method public blacklist getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->expandWellKnownXWapApplicationIdName()V

    .line 267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method
