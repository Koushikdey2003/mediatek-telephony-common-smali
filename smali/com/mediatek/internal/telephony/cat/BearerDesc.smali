.class public abstract Lcom/mediatek/internal/telephony/cat/BearerDesc;
.super Ljava/lang/Object;
.source "BearerDesc.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public blacklist bearerType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
.end method
