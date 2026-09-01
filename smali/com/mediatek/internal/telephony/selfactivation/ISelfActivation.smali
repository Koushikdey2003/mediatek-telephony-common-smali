.class public interface abstract Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
.super Ljava/lang/Object;
.source "ISelfActivation.java"


# static fields
.field public static final blacklist ACTION_ADD_DATA_SERVICE:I = 0x0

.field public static final blacklist ACTION_MO_CALL:I = 0x1

.field public static final blacklist ACTION_RESET_520_STATE:I = 0x2

.field public static final blacklist ADD_DATA_AGREE:I = 0x1

.field public static final blacklist ADD_DATA_DECLINE:I = 0x0

.field public static final blacklist CALL_TYPE_EMERGENCY:I = 0x1

.field public static final blacklist CALL_TYPE_NORMAL:I = 0x0

.field public static final blacklist EXTRA_KEY_ADD_DATA_OP:Ljava/lang/String; = "key_add_data_operation"

.field public static final blacklist EXTRA_KEY_MO_CALL_TYPE:Ljava/lang/String; = "key_mo_call_type"

.field public static final blacklist STATE_520_ACTIVATED:I = 0x1

.field public static final blacklist STATE_520_NONE:I = 0x0

.field public static final blacklist STATE_520_UNKNOWN:I = -0x1

.field public static final blacklist STATE_ACTIVATED:I = 0x1

.field public static final blacklist STATE_NONE:I = 0x0

.field public static final blacklist STATE_NOT_ACTIVATED:I = 0x2

.field public static final blacklist STATE_UNKNOWN:I = -0x1


# virtual methods
.method public abstract blacklist buildParams()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
.end method

.method public abstract blacklist getPCO520State()I
.end method

.method public abstract blacklist getSelfActivateState()I
.end method

.method public abstract blacklist selfActivationAction(ILandroid/os/Bundle;)I
.end method

.method public abstract blacklist setCommandsInterface(Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
.end method

.method public abstract blacklist setContext(Landroid/content/Context;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
.end method
