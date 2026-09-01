.class public Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
.super Ljava/lang/Object;
.source "MtkSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperatorName"
.end annotation


# instance fields
.field public blacklist sFullName:Ljava/lang/String;

.field public blacklist sShortName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
