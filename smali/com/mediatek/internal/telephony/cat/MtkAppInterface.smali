.class public interface abstract Lcom/mediatek/internal/telephony/cat/MtkAppInterface;
.super Ljava/lang/Object;
.source "MtkAppInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# static fields
.field public static final blacklist MTK_CAT_CMD_ACTION:Ljava/lang/String; = "com.mediatek.internal.stk.command"


# virtual methods
.method public abstract blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
.end method

.method public abstract blacklist onDBHandler(I)V
.end method

.method public abstract blacklist onEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V
.end method

.method public abstract blacklist onLaunchCachedSetupMenu()V
.end method
