.class final Lcom/ibm/icu/impl/number/Parse$2;
.super Ljava/lang/ThreadLocal;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/ParsePosition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Parse$2;->initialValue()Ljava/text/ParsePosition;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/ParsePosition;
    .locals 2

    .prologue
    .line 1001
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    return-object v0
.end method
