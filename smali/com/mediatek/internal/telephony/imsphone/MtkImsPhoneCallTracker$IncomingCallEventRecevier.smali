.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;
.super Landroid/content/BroadcastReceiver;
.source "MtkImsPhoneCallTracker.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncomingCallEventRecevier"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 1228
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCheckComplete(ZLjava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Z
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1296
    const/4 v0, 0x1

    .line 1297
    .local v0, "rejectCause":I
    const/4 v1, 0x1

    .line 1298
    .local v1, "isAllow":Z
    move-object v2, p2

    check-cast v2, Landroid/content/Intent;

    .line 1299
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, -0x1

    .line 1301
    .local v3, "phoneId":I
    if-eqz v2, :cond_0

    .line 1302
    const/4 v4, -0x1

    const-string v5, "android:phoneId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1305
    :cond_0
    if-eqz p1, :cond_1

    .line 1306
    const/16 v0, 0x10

    .line 1307
    const/4 v1, 0x0

    .line 1311
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckComplete(): intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isAllow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1316
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v4

    instance-of v4, v4, Lcom/mediatek/ims/internal/MtkImsManager;

    if-eqz v4, :cond_2

    .line 1317
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->setCallIndication(ILandroid/content/Intent;ZI)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    :cond_2
    goto :goto_0

    .line 1320
    :catch_0
    move-exception v4

    .line 1321
    .local v4, "e":Lcom/android/ims/ImsException;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCheckComplete() ImsException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1323
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onReceive() indication call intent"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onReceive() no ims manager"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1242
    return-void

    .line 1245
    :cond_0
    const/4 v0, 0x1

    .line 1246
    .local v0, "isAllow":Z
    const/4 v1, -0x1

    const-string v2, "android:phoneId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1247
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v2

    .line 1248
    .local v2, "subId":I
    const/4 v3, 0x1

    .line 1249
    .local v3, "rejectCause":I
    const-string v4, "android:imsDialString"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1252
    .local v4, "number":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() : subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", number ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1256
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 1257
    return-void

    .line 1261
    :cond_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v6, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    const-string v7, "ims_call_pre_check"

    invoke-direct {v6, v7, p2}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6702(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;)Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 1263
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1264
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1263
    invoke-virtual {v5, v6, v2, v4, p0}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->startIncomingCallNumberCheck(Landroid/content/Context;ILjava/lang/String;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;)Z

    move-result v5

    .line 1269
    .local v5, "bCheckStart":Z
    if-eqz v5, :cond_2

    .line 1270
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v7, "onReceive() startIncomingCallNumberCheck true. start check "

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1271
    return-void

    .line 1274
    :cond_2
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v7, "onReceive() startIncomingCallNumberCheck false, and flow continues"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1278
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCallIndication : intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isAllow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", cause = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1283
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v6

    instance-of v6, v6, Lcom/mediatek/ims/internal/MtkImsManager;

    if-eqz v6, :cond_3

    .line 1284
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v6, v1, p2, v0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->setCallIndication(ILandroid/content/Intent;ZI)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :cond_3
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v6

    .line 1288
    .local v6, "e":Lcom/android/ims/ImsException;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCallIndication ImsException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1291
    .end local v0    # "isAllow":Z
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    .end local v3    # "rejectCause":I
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "bCheckStart":Z
    .end local v6    # "e":Lcom/android/ims/ImsException;
    :cond_4
    :goto_0
    return-void
.end method
