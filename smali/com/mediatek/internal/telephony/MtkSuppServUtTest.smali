.class public Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
.super Ljava/lang/Object;
.source "MtkSuppServUtTest.java"


# static fields
.field private static final blacklist ACTION_ACTIVATE:I = 0x1

.field private static final blacklist ACTION_DEACTIVATE:I = 0x0

.field private static final blacklist ACTION_INTERROGATE:I = 0x2

.field static final blacklist ACTION_SUPPLEMENTARY_SERVICE_ROAMING_TEST:Ljava/lang/String; = "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_ROAMING_TEST"

.field static final blacklist ACTION_SUPPLEMENTARY_SERVICE_UT_TEST:Ljava/lang/String; = "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_UT_TEST"

.field private static final blacklist EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final blacklist EXTRA_PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final blacklist EXTRA_SERVICE_CODE:Ljava/lang/String; = "serviceCode"

.field private static final blacklist EXTRA_SERVICE_INFO_A:Ljava/lang/String; = "serviceInfoA"

.field private static final blacklist EXTRA_SERVICE_INFO_B:Ljava/lang/String; = "serviceInfoB"

.field private static final blacklist EXTRA_SERVICE_INFO_C:Ljava/lang/String; = "serviceInfoC"

.field private static final blacklist EXTRA_SERVICE_INFO_D:Ljava/lang/String; = "serviceInfoD"

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkSuppServUtTest"

.field private static final blacklist NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final blacklist NUM_PRESENTATION_RESTRICTED:I = 0x1

.field private static final blacklist SC_BAIC:Ljava/lang/String; = "35"

.field private static final blacklist SC_BAICr:Ljava/lang/String; = "351"

.field private static final blacklist SC_CFB:Ljava/lang/String; = "67"

.field private static final blacklist SC_CFNR:Ljava/lang/String; = "62"

.field private static final blacklist SC_CFNRy:Ljava/lang/String; = "61"

.field private static final blacklist SC_CFNotRegister:Ljava/lang/String; = "68"

.field private static final blacklist SC_CFU:Ljava/lang/String; = "21"

.field private static final blacklist SC_CFUR:Ljava/lang/String; = "22"

.field private static final blacklist SC_CLIP:Ljava/lang/String; = "30"

.field private static final blacklist SC_CLIR:Ljava/lang/String; = "31"

.field private static final blacklist SC_COLP:Ljava/lang/String; = "76"

.field private static final blacklist SC_COLR:Ljava/lang/String; = "77"

.field private static final blacklist SC_WAIT:Ljava/lang/String; = "43"

.field static final blacklist SUPPLEMENTARY_SERVICE_PERMISSION:Ljava/lang/String; = "com.mediatek.permission.SUPPLEMENTARY_SERVICE_UT_TEST"


# instance fields
.field private blacklist activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

.field private blacklist activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist phoneId:I

.field private blacklist serviceCode:Ljava/lang/String;

.field private blacklist serviceInfoA:Ljava/lang/String;

.field private blacklist serviceInfoB:Ljava/lang/String;

.field private blacklist serviceInfoC:Ljava/lang/String;

.field private blacklist serviceInfoD:Ljava/lang/String;

.field private blacklist ssAction:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "action"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    .line 113
    const-string v0, "serviceCode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    .line 114
    const-string v0, "serviceInfoA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoA:Ljava/lang/String;

    .line 115
    const-string v0, "serviceInfoB"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoB:Ljava/lang/String;

    .line 116
    const-string v0, "serviceInfoC"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoC:Ljava/lang/String;

    .line 117
    const-string v0, "serviceInfoD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoD:Ljava/lang/String;

    .line 118
    const-string v0, "phoneId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->getValidPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->phoneId:I

    .line 120
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->mContext:Landroid/content/Context;

    .line 121
    move-object v0, p3

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 122
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 123
    return-void
.end method

.method private static blacklist actionToCommandAction(I)I
    .locals 2
    .param p0, "action"    # I

    .line 312
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 315
    return v0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid action command"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 313
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkIMSStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 301
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    const-string v1, "MtkSuppServUtTest"

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIMSStatus: ready, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 307
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIMSStatus: IMS is not registered or not Ut enabled, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method private static blacklist convertToLongTime(Ljava/lang/String;)[J
    .locals 8
    .param p0, "timeSlotString"    # Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "timeSlot":[J
    if-eqz p0, :cond_0

    .line 403
    const-string v1, ","

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v2, :cond_0

    .line 405
    new-array v0, v2, [J

    .line 406
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 407
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 408
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 410
    :try_start_0
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 411
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v0, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v5    # "date":Ljava/util/Date;
    nop

    .line 406
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 414
    const/4 v5, 0x0

    return-object v5

    .line 419
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    return-object v0
.end method

.method private static blacklist getValidPhoneId(I)I
    .locals 1
    .param p0, "phoneId"    # I

    .line 265
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 266
    return p0

    .line 268
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isActivate(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 285
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isDeactivate(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 289
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isInterrogate(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 293
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .line 279
    if-eqz p0, :cond_1

    .line 280
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0
.end method

.method private static blacklist isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .line 272
    if-eqz p0, :cond_1

    .line 273
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "68"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0
.end method

.method private static blacklist scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 342
    const-string v0, "invalid call barring sc"

    if-eqz p0, :cond_2

    .line 346
    const-string v1, "35"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v0, "AI"

    return-object v0

    .line 348
    :cond_0
    const-string v1, "351"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    const-string v0, "IR"

    return-object v0

    .line 351
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 322
    const-string v0, "invalid call forward sc"

    if-eqz p0, :cond_5

    .line 326
    const-string v1, "21"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const/4 v0, 0x0

    return v0

    .line 328
    :cond_0
    const-string v1, "67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_1
    const-string v1, "62"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const/4 v0, 0x3

    return v0

    .line 332
    :cond_2
    const-string v1, "61"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    const/4 v0, 0x2

    return v0

    .line 334
    :cond_3
    const-string v1, "68"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    const/4 v0, 0x6

    return v0

    .line 337
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist siToServiceClass(Ljava/lang/String;)I
    .locals 5
    .param p0, "si"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 365
    .local v1, "serviceCode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 367
    const/16 v0, 0x200

    return v0

    .line 369
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported service class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "si":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .restart local p0    # "si":Ljava/lang/String;
    :cond_2
    return v2

    .line 374
    .end local v1    # "serviceCode":I
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkSuppServUtTest"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v0

    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return v0
.end method

.method private static blacklist siToTime(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .line 386
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkSuppServUtTest"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v0

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method blacklist run()V
    .locals 20

    .line 126
    move-object/from16 v1, p0

    const-string v0, "76"

    const-string v2, "77"

    const-string v3, "30"

    const-string v4, "31"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive, ssAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", serviceCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceInfoA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceInfoB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceInfoC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoC:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceInfoD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->phoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkSuppServUtTest"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    const-string v7, "onReceive: Not supported SS action"

    const/4 v8, 0x0

    if-eqz v5, :cond_5

    .line 133
    :try_start_1
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->actionToCommandAction(I)I

    move-result v10

    .line 134
    .local v10, "cfAction":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, "reason":I
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoA:Ljava/lang/String;

    .line 136
    .local v12, "dialingNumber":Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoB:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    .line 137
    .local v2, "serviceClass":I
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoC:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->siToTime(Ljava/lang/String;)I

    move-result v13

    .line 138
    .local v13, "time":I
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoD:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->convertToLongTime(Ljava/lang/String;)[J

    move-result-object v3

    .line 140
    .local v3, "timeSlot":[J
    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    if-nez v0, :cond_0

    .line 142
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v0, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    goto :goto_1

    .line 144
    :cond_0
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v0, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1

    .line 146
    :cond_1
    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    .line 149
    const-string v4, "onReceive: setCallForwardInTimeSlot"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v15, 0x0

    move v11, v0

    move-object v14, v3

    invoke-virtual/range {v9 .. v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V

    goto :goto_1

    .line 153
    :cond_4
    const-string v4, "onReceive: setCallForwardingOption"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/16 v19, 0x0

    move v15, v10

    move/from16 v16, v0

    move-object/from16 v17, v12

    move/from16 v18, v13

    invoke-virtual/range {v14 .. v19}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 160
    .end local v0    # "reason":I
    .end local v2    # "serviceClass":I
    .end local v3    # "timeSlot":[J
    .end local v10    # "cfAction":I
    .end local v12    # "dialingNumber":Ljava/lang/String;
    .end local v13    # "time":I
    :goto_1
    goto/16 :goto_11

    :cond_5
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 161
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    .line 162
    .local v0, "lockState":Z
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "facility":Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoB:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    .line 164
    .local v3, "serviceClass":I
    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    const-string v5, "1234"

    if-eqz v4, :cond_6

    .line 165
    :try_start_2
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v2, v5, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 166
    :cond_6
    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v4

    if-nez v4, :cond_8

    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 170
    :cond_7
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 167
    :cond_8
    :goto_2
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v2, v0, v5, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 172
    .end local v0    # "lockState":Z
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "serviceClass":I
    :goto_3
    goto/16 :goto_11

    :cond_9
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    const-string v9, "43"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 173
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    .line 174
    .local v0, "enable":Z
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoA:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    .line 175
    .local v2, "serviceClass":I
    iget v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 176
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_5

    .line 177
    :cond_a
    iget v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v3

    if-nez v3, :cond_c

    iget v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .line 180
    :cond_b
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 178
    :cond_c
    :goto_4
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, v0, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 182
    .end local v0    # "enable":Z
    .end local v2    # "serviceClass":I
    :goto_5
    goto/16 :goto_11

    :cond_d
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    const-string v9, "onReceive: Not supported service code"

    if-eqz v5, :cond_10

    :try_start_3
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    const-string v10, "22"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 183
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    .line 188
    :cond_e
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 184
    :cond_f
    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_ROAMING_TEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "rIntent":Landroid/content/Intent;
    const-string v2, "phoneId"

    iget v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->phoneId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    .end local v0    # "rIntent":Landroid/content/Intent;
    goto/16 :goto_11

    .line 190
    :cond_10
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    const/4 v10, 0x1

    if-eqz v5, :cond_15

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 191
    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->checkIMSStatus(Ljava/lang/String;)V

    .line 192
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 193
    goto :goto_7

    :cond_11
    const/4 v10, 0x2

    :goto_7
    move v0, v10

    .line 194
    .local v0, "clirMode":I
    iget v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 195
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_9

    .line 196
    :cond_12
    iget v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v2

    if-nez v2, :cond_14

    iget v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_8

    .line 199
    :cond_13
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 197
    :cond_14
    :goto_8
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v0, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 201
    .end local v0    # "clirMode":I
    :goto_9
    goto/16 :goto_11

    :cond_15
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    if-eqz v4, :cond_19

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 202
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->checkIMSStatus(Ljava/lang/String;)V

    .line 203
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    move v2, v0

    .line 204
    .local v2, "clipMode":Z
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v0, :cond_16

    .line 206
    :try_start_4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 209
    goto :goto_b

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lcom/android/ims/ImsException;
    :try_start_5
    const-string v3, "Could not get UT handle for queryCLIP."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    nop

    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_b

    .line 210
    :cond_16
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_a

    .line 217
    :cond_17
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_b

    .line 212
    :cond_18
    :goto_a
    :try_start_6
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v2, v8}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    .line 215
    goto :goto_b

    .line 213
    :catch_1
    move-exception v0

    .line 214
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_7
    const-string v3, "Could not get UT handle for updateCLIP."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    nop

    .line 219
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v2    # "clipMode":Z
    :goto_b
    goto/16 :goto_11

    :cond_19
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 220
    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->checkIMSStatus(Ljava/lang/String;)V

    .line 221
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 222
    goto :goto_c

    :cond_1a
    const/4 v10, 0x0

    :goto_c
    move v2, v10

    .line 223
    .local v2, "colrMode":I
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    if-eqz v0, :cond_1b

    .line 225
    :try_start_8
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 228
    goto :goto_e

    .line 226
    :catch_2
    move-exception v0

    .line 227
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_9
    const-string v3, "processCode: Could not get UT handle for queryCOLR."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    nop

    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_e

    .line 229
    :cond_1b
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_d

    .line 236
    :cond_1c
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_e

    .line 231
    :cond_1d
    :goto_d
    :try_start_a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v2, v8}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 234
    goto :goto_e

    .line 232
    :catch_3
    move-exception v0

    .line 233
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_b
    const-string v3, "processCode: Could not get UT handle for updateCOLR."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    nop

    .line 238
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v2    # "colrMode":I
    :goto_e
    goto :goto_11

    :cond_1e
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 239
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->checkIMSStatus(Ljava/lang/String;)V

    .line 240
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    move v2, v0

    .line 241
    .local v2, "colpMode":Z
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v0, :cond_1f

    .line 243
    :try_start_c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    .line 246
    goto :goto_10

    .line 244
    :catch_4
    move-exception v0

    .line 245
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_d
    const-string v3, "processCode: Could not get UT handle for queryCOLP."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    nop

    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_10

    .line 247
    :cond_1f
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-nez v0, :cond_21

    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_f

    .line 254
    :cond_20
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_10

    .line 249
    :cond_21
    :goto_f
    :try_start_e
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v2, v8}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    .line 252
    goto :goto_10

    .line 250
    :catch_5
    move-exception v0

    .line 251
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_f
    const-string v3, "processCode: Could not get UT handle for updateCOLP."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    nop

    .line 256
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v2    # "colpMode":Z
    :goto_10
    goto :goto_11

    .line 257
    :cond_22
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6

    .line 261
    :goto_11
    goto :goto_12

    .line 259
    :catch_6
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 262
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_12
    return-void
.end method
