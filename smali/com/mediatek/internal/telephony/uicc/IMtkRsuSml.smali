.class public abstract Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
.super Ljava/lang/Object;
.source "IMtkRsuSml.java"


# static fields
.field protected static final blacklist REMOTE_SIM_UNLOCK_ERROR:I = 0x1

.field protected static final blacklist REMOTE_SIM_UNLOCK_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IMtkRsuSml"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMtkRsuSml"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method


# virtual methods
.method public blacklist deregisterCallback(Ljava/lang/Object;)I
    .locals 1
    .param p1, "cb"    # Ljava/lang/Object;

    .line 41
    const-string v0, "default deregisterCallback, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAllowedSimLockData(II)I
    .locals 1
    .param p1, "token"    # I
    .param p2, "slotId"    # I

    .line 192
    const-string v0, "default getAllowedSimLockData, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getExcludedSimLockData(II)I
    .locals 1
    .param p1, "token"    # I
    .param p2, "slotId"    # I

    .line 210
    const-string v0, "default getExcludedSimLockData, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist registerCallback(Ljava/lang/Object;)I
    .locals 1
    .param p1, "cb"    # Ljava/lang/Object;

    .line 26
    const-string v0, "default registerCallback, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteSimlockGenerateRequest(II)I
    .locals 1
    .param p1, "token"    # I
    .param p2, "requestType"    # I

    .line 128
    const-string v0, "default remoteSimlockGenerateRequest, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteSimlockGetSimlockStatus(I)I
    .locals 1
    .param p1, "token"    # I

    .line 108
    const-string v0, "default remoteSimlockGetSimlockStatus, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteSimlockGetSimlockStatusEx(Ljava/lang/Object;)I
    .locals 1
    .param p1, "cb"    # Ljava/lang/Object;

    .line 57
    const-string v0, "default remoteSimlockGetSimlockStatusEx, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteSimlockGetVersion(I)I
    .locals 1
    .param p1, "token"    # I

    .line 93
    const-string v0, "default remoteSimlockGetVersion, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteSimlockProcessSimlockData(I[B)I
    .locals 1
    .param p1, "token"    # I
    .param p2, "simlockData"    # [B

    .line 77
    const-string v0, "default remoteSimlockProcessSimlockData, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteSimlockUnlockTimer(II)I
    .locals 1
    .param p1, "token"    # I
    .param p2, "requestType"    # I

    .line 150
    const-string v0, "default remoteSimlockUnlockTimer, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setSimLockPolicyData(I[BI)I
    .locals 1
    .param p1, "token"    # I
    .param p2, "data"    # [B
    .param p3, "slotId"    # I

    .line 174
    const-string v0, "default setSimLockPolicyData, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sleCreateUnlockRequest([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 237
    const-string v0, "default sleCreateUnlockRequest, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public blacklist sleGetAdapterConfig([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 275
    const-string v0, "default sleGetAdapterConfig, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public blacklist sleGetRegisterRequest([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 225
    const-string v0, "default sleGetRegisterRequest, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public blacklist sleGetSimlockStatus([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 263
    const-string v0, "default sleGetSimlockStatus, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public blacklist sleProcessMessage([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # [B
    .param p2, "imei"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 252
    const-string v0, "default sleProcessMessage, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;->loge(Ljava/lang/String;)V

    .line 253
    return-void
.end method
