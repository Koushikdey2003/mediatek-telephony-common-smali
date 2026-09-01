.class public final Lcom/mediatek/internal/telephony/uicc/MtkIsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IsimFileHandler;
.source "MtkIsimFileHandler.java"


# static fields
.field static final blacklist LOG_TAG_EX:Ljava/lang/String; = "MtkIsimFH"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 51
    return-void
.end method
