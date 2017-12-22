.class final Lcom/ibm/icu/text/DecimalFormatSymbols$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Lcom/ibm/icu/util/ULocale;",
        "Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1831
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Lcom/ibm/icu/util/ULocale;Ljava/lang/Void;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
    .locals 1

    .prologue
    .line 1834
    invoke-static {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->access$100(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1831
    check-cast p1, Lcom/ibm/icu/util/ULocale;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormatSymbols$1;->createInstance(Lcom/ibm/icu/util/ULocale;Ljava/lang/Void;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object v0

    return-object v0
.end method
