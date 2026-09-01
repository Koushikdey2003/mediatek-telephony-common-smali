.class Lcom/mediatek/internal/telephony/test/InterpreterEx;
.super Ljava/lang/Exception;
.source "MtkModelInterpreter.java"


# instance fields
.field blacklist mResult:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/InterpreterEx;->mResult:Ljava/lang/String;

    .line 128
    return-void
.end method
