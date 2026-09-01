.class public interface abstract Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;
.super Ljava/lang/Object;
.source "IPplSmsFilter.java"


# static fields
.field public static final blacklist KEY_DST_ADDR:Ljava/lang/String; = "dstAddr"

.field public static final blacklist KEY_FORMAT:Ljava/lang/String; = "format"

.field public static final blacklist KEY_MSG_CONTENT:Ljava/lang/String; = "msgContent"

.field public static final blacklist KEY_PDUS:Ljava/lang/String; = "pdus"

.field public static final blacklist KEY_SIM_ID:Ljava/lang/String; = "simId"

.field public static final blacklist KEY_SMS_TYPE:Ljava/lang/String; = "smsType"

.field public static final blacklist KEY_SRC_ADDR:Ljava/lang/String; = "srdAddr"

.field public static final blacklist KEY_SUB_ID:Ljava/lang/String; = "subId"


# virtual methods
.method public abstract blacklist pplFilter(Landroid/os/Bundle;)Z
.end method
