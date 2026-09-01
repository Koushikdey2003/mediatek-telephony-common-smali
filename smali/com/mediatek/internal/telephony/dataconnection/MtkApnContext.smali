.class public Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;
.super Lcom/android/internal/telephony/dataconnection/ApnContext;
.source "MtkApnContext.java"


# static fields
.field private static final blacklist NETWORK_TYPE_BIP:I = 0x7d2

.field private static final blacklist NETWORK_TYPE_MCX:I = 0x3e9

.field private static final blacklist NETWORK_TYPE_RCS:I = 0x7d1

.field private static final blacklist NETWORK_TYPE_VSIM:I = 0x7d3

.field private static final blacklist NETWORK_TYPE_XCAP:I = 0x3ea

.field private static final blacklist SLOG_TAG:Ljava/lang/String; = "MtkApnContext"


# instance fields
.field private blacklist mDataConnectionSscMode3:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private blacklist mNeedNotify:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "typeId"    # I
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p5, "priority"    # I

    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 88
    invoke-static {p2}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->needNotifyType(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->mNeedNotify:Z

    .line 89
    return-void
.end method

.method private static blacklist getApnTypeFromNetworkRequestEx(Landroid/net/NetworkCapabilities;IZ)Landroid/os/Bundle;
    .locals 2
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;
    .param p1, "apnType"    # I
    .param p2, "error"    # Z

    .line 140
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 142
    :cond_0
    const/16 p1, 0x1000

    .line 144
    :cond_1
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 146
    :cond_2
    const/16 p1, 0x2000

    .line 148
    :cond_3
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 150
    :cond_4
    const/16 p1, 0x4000

    .line 153
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    return-object v0
.end method

.method private static blacklist getApnTypeFromNetworkTypeEx(I)I
    .locals 1
    .param p0, "networkType"    # I

    .line 121
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 131
    :pswitch_0
    const/16 v0, 0x4000

    return v0

    .line 129
    :pswitch_1
    const/16 v0, 0x2000

    return v0

    .line 127
    :pswitch_2
    const/16 v0, 0x1000

    return v0

    .line 125
    :cond_0
    const/16 v0, 0x800

    return v0

    .line 123
    :cond_1
    const/16 v0, 0x400

    return v0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist needNotifyType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnTypes"    # Ljava/lang/String;

    .line 160
    const-string v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    const-string v0, "rcs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const-string v0, "bip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const-string v0, "vsim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized blacklist getDataConnectionSscMode3()Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->mDataConnectionSscMode3:Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 101
    .end local p0    # "this":Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getNextApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataSetupSscMode3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNextApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isNeedNotify()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->mNeedNotify:Z

    return v0
.end method

.method public declared-synchronized blacklist setDataConnectionSscMode3(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    monitor-enter p0

    .line 109
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->mDataConnectionSscMode3:Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;
    .end local p1    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 115
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;->mNeedNotify:Z

    .line 117
    return-void
.end method
