.class public Lcom/mediatek/internal/telephony/NrMap;
.super Ljava/lang/Object;
.source "NrMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/NrMap$MtkHandler;,
        Lcom/mediatek/internal/telephony/NrMap$CitySQL;,
        Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;,
        Lcom/mediatek/internal/telephony/NrMap$Record;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_REQUEST_LISTENER_UPDATE:I = 0x2

.field protected static final blacklist EVENT_REQUEST_LOCATION_UPDATE:I = 0x1

.field protected static final blacklist EVENT_RESPONSE_SET_NR:I = 0x65

.field protected static final blacklist EVENT_SERVICE_STATE_CHANGE:I = 0xc9

.field private static final blacklist LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static blacklist NR_AT:Ljava/lang/String; = null

.field private static final blacklist NR_CITY_FILE:Ljava/lang/String; = "etc/nr-city.xml"

.field private static final blacklist NR_CITY_SQL_NAME:Ljava/lang/String; = "mtk_nr_city_sql.db"

.field private static blacklist NR_SET_AVAILABLE:Ljava/lang/String;

.field private static blacklist NR_SET_UNAVAILABLE:Ljava/lang/String;

.field private static blacklist NR_SET_UNKNOWN:Ljava/lang/String;

.field private static blacklist loader:Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

.field private static blacklist lock:Ljava/lang/Object;

.field private static blacklist mLock:Ljava/lang/Object;

.field private static blacklist records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/NrMap$Record;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist LOG_TAG:Ljava/lang/String;

.field private final blacklist NR_MAP_SP_KEY:Ljava/lang/String;

.field private final blacklist NR_MAP_SW_KEY:Ljava/lang/String;

.field private blacklist camp_SA:Z

.field private blacklist city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;

.field private blacklist city_sql_data:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklist current_city:Ljava/lang/String;

.field private blacklist interval_location_update:I

.field private blacklist is_nr_city:Ljava/lang/String;

.field private blacklist listening:Z

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mGnssProxyPackageName:Ljava/lang/String;

.field private blacklist mId:I

.field private blacklist mLastPermission:Z

.field private blacklist mLocationListener:Landroid/location/LocationListener;

.field private blacklist mLocationManager:Landroid/location/LocationManager;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private blacklist mSS:Landroid/telephony/ServiceState;

.field private blacklist manually_config:I

.field private blacklist manually_set:Z

.field private blacklist min_distance_location_update:I

.field private blacklist min_time_location_update:I

.field private blacklist mtkHandler:Landroid/os/Handler;

.field private blacklist mtkHandlerThread:Landroid/os/HandlerThread;

.field private blacklist signal_update:Z

.field private blacklist started:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 104
    const-string v0, "AT+EGMC=1,\"5g_available\","

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_AT:Ljava/lang/String;

    .line 105
    const-string v0, "0"

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNAVAILABLE:Ljava/lang/String;

    .line 106
    const-string v0, "1"

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_AVAILABLE:Ljava/lang/String;

    .line 107
    const-string v0, "2"

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->loader:Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "NrMap"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    .line 123
    const v1, 0x1b7740

    iput v1, p0, Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    .line 125
    iput v0, p0, Lcom/mediatek/internal/telephony/NrMap;->min_time_location_update:I

    .line 126
    iput v0, p0, Lcom/mediatek/internal/telephony/NrMap;->min_distance_location_update:I

    .line 132
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->is_nr_city:Ljava/lang/String;

    .line 133
    const-string v2, "n/a"

    iput-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->current_city:Ljava/lang/String;

    .line 135
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;

    .line 136
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z

    .line 138
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    .line 139
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_config:I

    .line 141
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z

    .line 143
    iput v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    .line 149
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLastPermission:Z

    .line 580
    new-instance v3, Lcom/mediatek/internal/telephony/NrMap$1;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/NrMap$1;-><init>(Lcom/mediatek/internal/telephony/NrMap;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;

    .line 349
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 350
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nr_map_sp_key-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nr_map_sw_key-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    .line 354
    iput-object p2, p0, Lcom/mediatek/internal/telephony/NrMap;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 356
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MtkNrMapThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandlerThread:Landroid/os/HandlerThread;

    .line 357
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 358
    new-instance v3, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;-><init>(Lcom/mediatek/internal/telephony/NrMap;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    .line 359
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 360
    .local v3, "context":Landroid/content/Context;
    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;

    .line 361
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 362
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/NrMap;->loadProxyNameFromCarrierConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    .line 363
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGnssProxyPackageName from carrierConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->enableAggressiveUpdate(Z)V

    .line 366
    new-instance v4, Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    invoke-direct {v4, p0, v3}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;-><init>(Lcom/mediatek/internal/telephony/NrMap;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    .line 367
    sget-object v4, Lcom/mediatek/internal/telephony/NrMap;->loader:Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

    if-nez v4, :cond_0

    .line 368
    new-instance v4, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;-><init>(Lcom/mediatek/internal/telephony/NrMap;Lcom/mediatek/internal/telephony/NrMap$1;)V

    sput-object v4, Lcom/mediatek/internal/telephony/NrMap;->loader:Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

    .line 369
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 371
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    const/16 v5, 0xc9

    invoke-virtual {v1, v4, v5, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    .line 375
    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "set":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->checkLocationProxyAppPermission()Z

    move-result v1

    .line 377
    .local v1, "permission":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NrMap set="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 379
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    .line 380
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->startSingleLocationUpdate()V

    .line 382
    :cond_1
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100()Ljava/util/ArrayList;
    .locals 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Lcom/mediatek/internal/telephony/NrMap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->checkLocationProxyAppPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Lcom/mediatek/internal/telephony/NrMap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    return v0
.end method

.method static synthetic blacklist access$1102(Lcom/mediatek/internal/telephony/NrMap;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    return p1
.end method

.method static synthetic blacklist access$1200(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic blacklist access$1500(Lcom/mediatek/internal/telephony/NrMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->startSingleLocationUpdate()V

    return-void
.end method

.method static synthetic blacklist access$1600(Lcom/mediatek/internal/telephony/NrMap;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic blacklist access$1602(Lcom/mediatek/internal/telephony/NrMap;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 91
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic blacklist access$1700(Lcom/mediatek/internal/telephony/NrMap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z

    return v0
.end method

.method static synthetic blacklist access$1702(Lcom/mediatek/internal/telephony/NrMap;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z

    return p1
.end method

.method static synthetic blacklist access$1800(Lcom/mediatek/internal/telephony/NrMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I

    return v0
.end method

.method static synthetic blacklist access$1900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/mediatek/internal/telephony/NrMap;DD)Landroid/location/Address;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/NrMap;->getAddByLocation(DD)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$2102(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap;->current_city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$2200()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$2400(Lcom/mediatek/internal/telephony/NrMap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    return v0
.end method

.method static synthetic blacklist access$2500()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_AVAILABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$2600()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNAVAILABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$2700(Lcom/mediatek/internal/telephony/NrMap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z

    return v0
.end method

.method static synthetic blacklist access$2702(Lcom/mediatek/internal/telephony/NrMap;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z

    return p1
.end method

.method static synthetic blacklist access$2800(Lcom/mediatek/internal/telephony/NrMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->startPassiveLocationListener()V

    return-void
.end method

.method static synthetic blacklist access$300()Ljava/lang/Object;
    .locals 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/mediatek/internal/telephony/NrMap;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic blacklist access$402(Lcom/mediatek/internal/telephony/NrMap;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic blacklist access$600()Ljava/lang/Object;
    .locals 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/mediatek/internal/telephony/NrMap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    return v0
.end method

.method static synthetic blacklist access$800(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private blacklist checkLocationProxyAppPermission()Z
    .locals 4

    .line 744
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->hasLocationPermission(Ljava/lang/String;)Z

    move-result v0

    .line 746
    .local v0, "proxyAppLocationGranted":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxyApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proxyAppLocationGranted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLastPermission:Z

    .line 749
    return v0

    .line 751
    .end local v0    # "proxyAppLocationGranted":Z
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLastPermission:Z

    .line 752
    return v0
.end method

.method private blacklist getAddByLocation(DD)Landroid/location/Address;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 549
    .local v1, "geocoder":Landroid/location/Geocoder;
    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 552
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    goto :goto_0

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geocoder.getFromLocation throw exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 559
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 562
    .local v1, "address":Landroid/location/Address;
    return-object v1

    .line 555
    .end local v1    # "address":Landroid/location/Address;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getGeoLocationFromLatLong: get empty address"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getDoubleFromProperty(Ljava/lang/String;)D
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 539
    :try_start_0
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private blacklist hasLocationPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPackageInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .line 731
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    const/4 v0, 0x1

    return v0

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private blacklist loadProxyNameFromCarrierConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "sContext"    # Landroid/content/Context;

    .line 757
    nop

    .line 758
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 759
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 760
    return-object v1

    .line 763
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 764
    .local v2, "ddSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 766
    .local v3, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v3, :cond_2

    .line 767
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SIM not ready, use default carrier config."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 771
    :cond_2
    const-string v4, "gps.nfw_proxy_apps"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 772
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gps.nfw_proxy_apps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    if-eqz v4, :cond_3

    .line 774
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "strings":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    return-object v5

    .line 778
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private blacklist nrSetToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;

    .line 385
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NR_SET_UNAVAILABLE"

    return-object v0

    .line 386
    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NR_SET_AVAILABLE"

    return-object v0

    .line 387
    :cond_1
    const-string v0, "NR_SET_UNKNOWN"

    return-object v0
.end method

.method private blacklist setNrCity(Ljava/lang/String;)V
    .locals 5
    .param p1, "setting"    # Ljava/lang/String;

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "isNrCity":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->is_nr_city:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 394
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 395
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 397
    .local v2, "result":Landroid/os/Message;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify MD about NR city "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mediatek/internal/telephony/NrMap;->NR_AT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "at":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 402
    .end local v1    # "at":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 403
    :try_start_1
    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->is_nr_city:Ljava/lang/String;

    .line 404
    monitor-exit v3

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 394
    .end local v2    # "result":Landroid/os/Message;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private blacklist startPassiveLocationListener()V
    .locals 8

    .line 573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    const-string v1, "startPassiveLocationListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;

    iget v0, p0, Lcom/mediatek/internal/telephony/NrMap;->min_time_location_update:I

    int-to-long v4, v0

    iget v0, p0, Lcom/mediatek/internal/telephony/NrMap;->min_distance_location_update:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;

    const-string v3, "passive"

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 578
    return-void
.end method

.method private blacklist startSingleLocationUpdate()V
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    const-string v1, "startSingleLocationUpdate"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z

    .line 568
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;

    const-string v2, "network"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 570
    return-void
.end method


# virtual methods
.method public blacklist enableAggressiveUpdate(Z)V
    .locals 6
    .param p1, "sw"    # Z

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "start":Z
    const/4 v1, 0x0

    .line 437
    .local v1, "interval":I
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_0
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    move v0, v3

    .line 439
    iget v3, p0, Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I

    move v1, v3

    .line 440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 441
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "swtichNrMap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " listening="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-eqz p1, :cond_0

    .line 443
    if-nez v0, :cond_1

    .line 444
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    .line 446
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    .line 448
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    .line 447
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 452
    :cond_0
    if-eqz v0, :cond_1

    .line 453
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    .line 455
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 440
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method public blacklist getNrMapStatus()Ljava/lang/String;
    .locals 2

    .line 705
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    if-eqz v0, :cond_3

    .line 706
    iget v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_config:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 714
    const-string v0, "Unknown manually setting"

    return-object v0

    .line 712
    :cond_0
    const-string v0, "Manually_UNKNOWN"

    return-object v0

    .line 710
    :cond_1
    const-string v0, "Manually_AVAILABLE"

    return-object v0

    .line 708
    :cond_2
    const-string v0, "Manually_UNAVAILABLE"

    return-object v0

    .line 716
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLastPermission:Z

    if-nez v0, :cond_4

    .line 717
    const-string v0, "NEED PERMISSION"

    return-object v0

    .line 719
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    if-eqz v0, :cond_5

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NR MAP is ON, city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->current_city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->is_nr_city:Ljava/lang/String;

    .line 721
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/NrMap;->nrSetToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    return-object v0

    .line 723
    :cond_5
    const-string v0, "NR MAP is OFF"

    return-object v0
.end method

.method public blacklist isNrMapEnabled()Z
    .locals 1

    .line 701
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    return v0
.end method

.method public blacklist manuallySetNrMap(I)V
    .locals 4
    .param p1, "i"    # I

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    .line 677
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manuallySetNrMap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " listening="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iput p1, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_config:I

    .line 679
    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    .line 692
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_config:I

    .line 693
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    if-eqz v0, :cond_3

    .line 694
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->startSingleLocationUpdate()V

    goto :goto_0

    .line 687
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    .line 688
    goto :goto_0

    .line 684
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_AVAILABLE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    .line 685
    goto :goto_0

    .line 681
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNAVAILABLE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    .line 682
    nop

    .line 698
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist setAggressiveUpdateInterval(I)V
    .locals 3
    .param p1, "interval"    # I

    .line 461
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAggressiveUpdateInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    iput p1, p0, Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I

    .line 464
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist swtichNrMap(Z)V
    .locals 6
    .param p1, "sw"    # Z

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "listen":Z
    sget-object v1, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    move v0, v2

    .line 411
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 412
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swtichNrMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " listening="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 414
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 415
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    if-nez v0, :cond_1

    .line 417
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    .line 419
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 423
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 424
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    if-eqz v0, :cond_1

    .line 426
    sget-object v3, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 427
    :try_start_3
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    .line 428
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 429
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 428
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 411
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method
