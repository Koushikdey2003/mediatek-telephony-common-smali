.class public Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
.super Ljava/lang/Object;
.source "OpTelephonyCustomizationFactoryBase.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist makeDataConnectionExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeDataSubSelectorOPExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeDeviceRegisterExt(Landroid/content/Context;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 107
    new-instance v0, Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;-><init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)V

    return-object v0
.end method

.method public blacklist makeDigitsUssdManager()Lcom/mediatek/internal/telephony/digits/DigitsUssdManager;
    .locals 1

    .line 143
    new-instance v0, Lcom/mediatek/internal/telephony/digits/DigitsUssdManagerBase;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/digits/DigitsUssdManagerBase;-><init>()V

    return-object v0
.end method

.method public blacklist makeDigitsUtil()Lcom/mediatek/internal/telephony/digits/DigitsUtil;
    .locals 1

    .line 139
    new-instance v0, Lcom/mediatek/internal/telephony/digits/DigitsUtilBase;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/digits/DigitsUtilBase;-><init>()V

    return-object v0
.end method

.method public blacklist makeMtkGsmCdmaCallTrackerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IMtkGsmCdmaCallTrackerExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeMtkProxyControllerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    new-instance v0, Lcom/mediatek/internal/telephony/MtkProxyControllerExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkProxyControllerExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeMtkSimHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 152
    const-string v0, "makeMtkSimHandler"

    const-string v1, "[makeMtkSimHandler] "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public blacklist makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist makeSCBMManager(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/scbm/ISCBMManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 175
    new-instance v0, Lcom/mediatek/internal/telephony/scbm/SCBMManagerDefault;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/scbm/SCBMManagerDefault;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public blacklist makeSelfActivationInstance(I)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    .locals 2
    .param p1, "phoneId"    # I

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "instance":Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    new-instance v1, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;-><init>(I)V

    move-object v0, v1

    .line 118
    return-object v0
.end method

.method public blacklist makeServiceStateTrackerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeSimSwitchForDSSOPExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeSmartDataSwitchAssistantOpExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeTelephonyExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IDefaultTelephonyExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/mediatek/internal/telephony/DefaultTelephonyExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/DefaultTelephonyExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
