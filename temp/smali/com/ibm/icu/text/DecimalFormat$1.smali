.class final Lcom/ibm/icu/text/DecimalFormat$1;
.super Ljava/lang/ThreadLocal;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/ibm/icu/impl/number/Properties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2427
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/ibm/icu/impl/number/Properties;
    .locals 1

    .prologue
    .line 2430
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2427
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat$1;->initialValue()Lcom/ibm/icu/impl/number/Properties;

    move-result-object v0

    return-object v0
.end method
