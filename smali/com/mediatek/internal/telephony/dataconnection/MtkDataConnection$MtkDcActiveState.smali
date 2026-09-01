.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;
.super Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkDcActiveState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;

    .line 1283
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 17

    .line 1285
    move-object/from16 v1, p0

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState: enter dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1286
    :cond_0
    const/16 v3, 0x4b

    const/4 v4, 0x3

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1288
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v6

    .line 1289
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    int-to-long v7, v0

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    .line 1290
    :goto_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1291
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    move v9, v0

    goto :goto_1

    :cond_2
    move v9, v2

    .line 1286
    :goto_1
    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIIIJZ)V

    .line 1294
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "connected"

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1295
    .local v3, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1296
    .local v5, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1298
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v6, "DcActiveState: notifyDataConnection in advance for default apn type."

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1300
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1301
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1302
    goto :goto_3

    .line 1304
    .end local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v5    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    goto :goto_2

    .line 1307
    :cond_4
    :goto_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1309
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v0

    .line 1310
    .local v0, "port":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_5

    .line 1311
    const/16 v0, 0x1f90

    .line 1313
    :cond_5
    new-instance v5, Landroid/net/ProxyInfo;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1314
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1315
    .local v5, "proxy":Landroid/net/ProxyInfo;
    iget-object v6, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    .end local v0    # "port":I
    .end local v5    # "proxy":Landroid/net/ProxyInfo;
    goto :goto_4

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v5, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcActiveState: NumberFormatException making ProxyProperties ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1318
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1317
    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1323
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1326
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const v5, 0x42000

    invoke-static {v0, v3, v5, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 1338
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v4, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcController;->addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1340
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1341
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 1340
    invoke-virtual {v0, v4, v5, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v4, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 1343
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V

    .line 1344
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V

    .line 1346
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    move-object v4, v0

    .line 1347
    .local v4, "configBuilder":Landroid/net/NetworkAgentConfig$Builder;
    invoke-virtual {v4, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 1348
    const-string v0, "MOBILE"

    invoke-virtual {v4, v0}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1349
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1350
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v5

    .line 1351
    .local v5, "carrierSignalAgent":Lcom/android/internal/telephony/CarrierSignalAgent;
    const-string v0, "com.android.internal.telephony.CARRIER_SIGNAL_REDIRECTED"

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->hasRegisteredReceivers(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1354
    invoke-virtual {v4}, Landroid/net/NetworkAgentConfig$Builder;->disableProvisioningNotification()Landroid/net/NetworkAgentConfig$Builder;

    .line 1357
    :cond_7
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 1358
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1359
    invoke-virtual {v4, v6}, Landroid/net/NetworkAgentConfig$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1363
    :cond_8
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->shouldSkip464Xlat()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1364
    invoke-virtual {v4}, Landroid/net/NetworkAgentConfig$Builder;->disableNat64Detection()Landroid/net/NetworkAgentConfig$Builder;

    .line 1368
    :cond_9
    sget-boolean v0, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_DATA_VSIM:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_b

    .line 1369
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sget-object v8, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->DEFAULT:Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    invoke-static {v0, v8}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;

    .line 1370
    .local v0, "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;->haveVsimIgnoreUserDataSetting()Z

    move-result v9

    if-nez v9, :cond_a

    move v2, v7

    :cond_a
    invoke-static {v8, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1373
    .end local v0    # "interfaceImpl":Lcom/android/internal/telephony/dataconnection/IOplusDcTracker;
    :cond_b
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1375
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1376
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRestrictedNetworkOverride = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mUnmeteredUseOnly = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1377
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1376
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1380
    :cond_c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1381
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 1385
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    .line 1386
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1387
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    .line 1386
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    .line 1390
    .local v2, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-eqz v2, :cond_d

    .line 1393
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    .line 1396
    :cond_d
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 1397
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transfer network agent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " successfully."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1399
    .local v8, "logStr":Ljava/lang/String;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1400
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1401
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 1402
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->acquireOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 1409
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1411
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1412
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v9, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12002(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 1413
    .end local v8    # "logStr":Ljava/lang/String;
    nop

    .line 1419
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_6

    .line 1414
    .restart local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .restart local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_e
    const-string v3, "Failed to get network agent from original data connection"

    .line 1415
    .local v3, "logStr":Ljava/lang/String;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v7, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1416
    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1417
    return-void

    .line 1420
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v3    # "logStr":Ljava/lang/String;
    :cond_f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12202(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1421
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1422
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 1421
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkFactory(I)Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    move-result-object v0

    .line 1423
    .local v0, "factory":Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    if-nez v0, :cond_10

    move-object v14, v3

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getProvider()Landroid/net/NetworkProvider;

    move-result-object v2

    move-object v14, v2

    .line 1425
    .local v14, "provider":Landroid/net/NetworkProvider;
    :goto_5
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v8

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12576(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1427
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v15, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1428
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v11

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v12

    invoke-virtual {v4}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v13

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1429
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v16

    move-object v8, v15

    move-object v3, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkInfo;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;I)V

    .line 1427
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12702(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 1433
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->markConnected()V

    .line 1436
    .end local v0    # "factory":Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    .end local v14    # "provider":Landroid/net/NetworkProvider;
    :goto_6
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 1437
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1438
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x40012

    .line 1437
    const/4 v8, 0x0

    invoke-interface {v0, v2, v3, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1439
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1440
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x40017

    .line 1439
    invoke-interface {v0, v2, v3, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_7

    .line 1436
    :cond_11
    const/4 v8, 0x0

    .line 1442
    :goto_7
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v3, v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1443
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v9

    .line 1442
    invoke-virtual {v0, v2, v3, v9, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDataCallEvent(IIII)V

    .line 1447
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v0

    .line 1448
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-nez v2, :cond_12

    move-object v3, v8

    goto :goto_8

    .line 1449
    :cond_12
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    .line 1448
    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    .line 1449
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1450
    :goto_8
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_13

    const-string v2, ""

    goto :goto_9

    :cond_13
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1447
    :goto_9
    invoke-interface {v0, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->onDcActivated([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1454
    goto :goto_a

    .line 1451
    :catch_1
    move-exception v0

    .line 1452
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v3, "onDcActivated fail!"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1456
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public blacklist exit()V
    .locals 3

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v0

    .line 1463
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1464
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    .line 1463
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 1464
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1465
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1462
    :goto_1
    invoke-interface {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->onDcDeactivated([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    goto :goto_2

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "onDcDeactivated fail!"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1472
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->exit()V

    .line 1473
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1479
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " != mTag:"

    const-string v2, ": "

    const-string v3, "DcActiveState: "

    const-string v4, " dc="

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1805
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    .local v1, "retVal":Z
    goto/16 :goto_d

    .line 1626
    .end local v1    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1627
    .local v0, "addrV6Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1628
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getScope()I

    move-result v1

    .line 1629
    .local v1, "scope":I
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getFlags()I

    move-result v2

    .line 1630
    .local v2, "flag":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_IPV6_ADDRESS_UPDATED, scope: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1631
    sget v3, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    if-ne v3, v1, :cond_0

    and-int/lit8 v3, v2, 0x1

    sget v4, Landroid/system/OsConstants;->IFA_F_TEMPORARY:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1632
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1633
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1634
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mtkGetLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1636
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v4, "EVENT_IPV6_ADDRESS_UPDATED, notify global ipv6 address update"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1639
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v4, "EVENT_IPV6_ADDRESS_UPDATED, not notify global ipv6 address update"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1643
    .end local v1    # "scope":I
    .end local v2    # "flag":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1644
    .local v1, "retVal":Z
    goto/16 :goto_d

    .line 1648
    .end local v0    # "addrV6Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .end local v1    # "retVal":Z
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v2, v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    if-ne v0, v2, :cond_4

    .line 1649
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1650
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1651
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v1, "DcActiveState: EVENT_FALLBACK_RETRY_CONNECTION not in service"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1655
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1656
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState EVENT_FALLBACK_RETRY_CONNECTION mConnectionParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1657
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1656
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1659
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->connect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I

    goto :goto_1

    .line 1662
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1663
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState stale EVENT_FALLBACK_RETRY_CONNECTION tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1667
    :cond_5
    :goto_1
    const/4 v1, 0x1

    .line 1668
    .restart local v1    # "retVal":Z
    goto/16 :goto_d

    .line 1772
    .end local v1    # "retVal":Z
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6

    move v1, v6

    goto :goto_2

    :cond_6
    move v1, v7

    :goto_2
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1773
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v6, v7

    :goto_3
    invoke-static {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4202(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1774
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1775
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState: EVENT_VOICE_CALL, mIsInVoiceCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSupportConcurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1776
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1775
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1778
    :cond_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateNetworkInfoSuspendState()V

    .line 1779
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$20000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1781
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$20200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$20100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1783
    :cond_9
    const/4 v1, 0x1

    .line 1784
    .restart local v1    # "retVal":Z
    goto/16 :goto_d

    .line 1593
    .end local v1    # "retVal":Z
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1594
    .restart local v0    # "addrV6Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1595
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1597
    :cond_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1598
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "strAddress":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1600
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1602
    :cond_b
    const-string v2, "FE80::5A:5A:5A:23"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, -0x2

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_c

    .line 1603
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J

    goto :goto_4

    .line 1604
    :cond_c
    const-string v2, "FE80::5A:5A:5A:22"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1605
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2, v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J

    goto :goto_4

    .line 1607
    :cond_d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-wide/16 v8, -0x3e8

    invoke-static {v2, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J

    .line 1610
    :goto_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1611
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-nez v2, :cond_f

    .line 1612
    :cond_e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState: RA initial or refresh fail, valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1613
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1612
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1614
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1618
    .end local v1    # "strAddress":Ljava/lang/String;
    :cond_f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1619
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1620
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1622
    :cond_10
    const/4 v1, 0x1

    .line 1623
    .local v1, "retVal":Z
    goto/16 :goto_d

    .line 1584
    .end local v0    # "addrV6Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .end local v1    # "retVal":Z
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1585
    .local v0, "addrV4Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1586
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$18000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1589
    :cond_11
    const/4 v1, 0x1

    .line 1590
    .restart local v1    # "retVal":Z
    goto/16 :goto_d

    .line 1797
    .end local v0    # "addrV4Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .end local v1    # "retVal":Z
    :sswitch_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$20400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1798
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v1, "EVENT_REEVALUATE_RESTRICTED_STATE: mNetworkAgent is null"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1799
    return v6

    .line 1801
    :cond_12
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    .line 1802
    .restart local v1    # "retVal":Z
    goto/16 :goto_d

    .line 1790
    .end local v1    # "retVal":Z
    :sswitch_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$20300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1791
    return v6

    .line 1793
    :cond_13
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    .line 1794
    .restart local v1    # "retVal":Z
    goto/16 :goto_d

    .line 1566
    .end local v1    # "retVal":Z
    :sswitch_7
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1567
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState EVENT_LOST_CONNECTION dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1569
    :cond_14
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    const/16 v1, 0xc27

    const/16 v2, 0xf8e

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1570
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    const/16 v1, 0xd27

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1571
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    if-eq v0, v2, :cond_16

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1572
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    const/16 v1, 0x1a27

    if-ne v0, v1, :cond_15

    goto :goto_5

    .line 1576
    :cond_15
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v0

    const v1, 0x10004

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(I)V

    goto :goto_6

    .line 1573
    :cond_16
    :goto_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(I)V

    .line 1578
    :goto_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1579
    const/4 v1, 0x1

    .line 1580
    .restart local v1    # "retVal":Z
    goto/16 :goto_d

    .line 1518
    .end local v1    # "retVal":Z
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1519
    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1520
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState: EVENT_DISCONNECT dp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1523
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1524
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1525
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1526
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1525
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1529
    :cond_18
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v6, :cond_1a

    .line 1531
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1532
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->handlePcscfErrorCause(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 1534
    :cond_19
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1535
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16602(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1536
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16702(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1537
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    .line 1538
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->tearDownData(Ljava/lang/Object;)V

    .line 1539
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_7

    .line 1541
    :cond_1a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1545
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17176(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1546
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1547
    .local v1, "cap":Landroid/net/NetworkCapabilities;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1548
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState update Capabilities:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1552
    .end local v1    # "cap":Landroid/net/NetworkCapabilities;
    :cond_1b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkDeactivateDataCall(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1555
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_7

    .line 1558
    :cond_1c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState ERROR no such apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in this dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1560
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    .line 1562
    :goto_7
    const/4 v1, 0x1

    .line 1563
    .local v1, "retVal":Z
    goto/16 :goto_d

    .line 1674
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v1    # "retVal":Z
    :sswitch_9
    const/4 v0, 0x0

    .line 1675
    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    const/4 v2, 0x0

    .line 1677
    .local v2, "castException":Z
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 1682
    if-eqz v2, :cond_1d

    .line 1683
    :goto_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1684
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v5, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1685
    .end local v3    # "ar":Landroid/os/AsyncResult;
    goto :goto_9

    .line 1682
    :catchall_0
    move-exception v1

    goto/16 :goto_c

    .line 1678
    :catch_0
    move-exception v3

    .line 1679
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 1680
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v8, "msg.obj can not be cast to ConnectionParams"

    invoke-virtual {v5, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1682
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1d

    .line 1683
    goto :goto_8

    .line 1687
    :cond_1d
    :goto_9
    if-nez v0, :cond_1e

    .line 1688
    const/4 v1, 0x1

    .line 1689
    .restart local v1    # "retVal":Z
    goto/16 :goto_d

    .line 1693
    .end local v1    # "retVal":Z
    :cond_1e
    nop

    .line 1694
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "data_call_response"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    .line 1695
    .local v3, "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8, v3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object v5

    .line 1696
    .local v5, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq v5, v8, :cond_1f

    .line 1697
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v8

    if-eq v8, v0, :cond_1f

    .line 1698
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DcActiveState_FALLBACK_Retry: WEIRD mConnectionsParams:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1699
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " != cp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1698
    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1702
    :cond_1f
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1703
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DcActiveState_FALLBACK_Retry onSetupConnectionCompleted result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1706
    :cond_20
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$3;->$SwitchMap$com$android$internal$telephony$dataconnection$DataConnection$SetupResult:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ordinal()I

    move-result v8

    aget v4, v4, v8

    if-eq v4, v6, :cond_27

    const/4 v6, 0x4

    if-eq v4, v6, :cond_22

    const/4 v6, 0x5

    if-eq v4, v6, :cond_21

    .line 1761
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1762
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v4, "DcActiveState_FALLBACK_Retry: Another error cause, Not retry anymore"

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1755
    :cond_21
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcActiveState_FALLBACK_Retry: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Not retry anymore"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1759
    goto/16 :goto_b

    .line 1713
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState_FALLBACK_Retry: ERROR_DATA_SERVICE_SPECIFIC_ERROR result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " result.isRadioRestartFailure="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1717
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, v5, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1718
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    .line 1717
    invoke-static {v4, v6, v8}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " result.isPermanentFailure="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1720
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    iget v6, v5, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1721
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v4, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1723
    :cond_23
    iget v4, v5, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    const/16 v6, -0x3e8

    if-ne v4, v6, :cond_26

    .line 1725
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    sget-object v8, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP19:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v4, v8}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->isSpecificNetworkAndSimOperator(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1727
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19708(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    .line 1728
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v8

    sget-object v9, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP19:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v4, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getRetryTimeByIndex(ILcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;)J

    move-result-wide v8

    .line 1731
    .local v8, "retryTime":J
    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gez v4, :cond_25

    .line 1732
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1733
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v6, "DcActiveState_FALLBACK_Retry: No retry but at least one IPv4 or IPv6 is accepted"

    invoke-virtual {v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1737
    :cond_24
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    goto :goto_a

    .line 1740
    :cond_25
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1741
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const v6, 0x40024

    iget v7, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->startRetryAlarm(IIJ)V

    .line 1744
    .end local v8    # "retryTime":J
    :goto_a
    goto :goto_b

    .line 1747
    :cond_26
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1748
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v6, "DcActiveState_FALLBACK_Retry: ERROR_DATA_SERVICE_SPECIFIC_ERROR Not retry anymore"

    invoke-virtual {v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 1709
    .end local v1    # "str":Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$19302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1710
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1711
    nop

    .line 1766
    :cond_28
    :goto_b
    const/4 v1, 0x1

    .line 1767
    .local v1, "retVal":Z
    goto/16 :goto_d

    .line 1682
    .end local v1    # "retVal":Z
    .end local v3    # "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    .end local v5    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :goto_c
    if-eqz v2, :cond_29

    .line 1683
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1684
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1686
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :cond_29
    throw v1

    .line 1481
    .end local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v2    # "castException":Z
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1484
    .restart local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1486
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState: EVENT_CONNECT cp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1491
    :cond_2a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 1492
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    not-int v2, v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14972(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1493
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1494
    .local v1, "cap":Landroid/net/NetworkCapabilities;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1495
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1496
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState: update Capabilities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1498
    :cond_2b
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1500
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2c

    .line 1502
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v3, "DcActiveState: inform UI the added INTERNET capability."

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1503
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1504
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 1503
    invoke-virtual {v2, v3, v5, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1506
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1507
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 1506
    invoke-virtual {v2, v3, v5, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1513
    .end local v1    # "cap":Landroid/net/NetworkCapabilities;
    :cond_2c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-static {v1, v0, v7, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IZ)V

    .line 1514
    const/4 v1, 0x1

    .line 1515
    .local v1, "retVal":Z
    nop

    .line 1808
    .end local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :goto_d
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_a
        0x40001 -> :sswitch_9
        0x40004 -> :sswitch_8
        0x40009 -> :sswitch_7
        0x40017 -> :sswitch_6
        0x40019 -> :sswitch_5
        0x4001b -> :sswitch_6
        0x40020 -> :sswitch_4
        0x40021 -> :sswitch_3
        0x40023 -> :sswitch_2
        0x40024 -> :sswitch_1
        0x40025 -> :sswitch_0
    .end sparse-switch
.end method
