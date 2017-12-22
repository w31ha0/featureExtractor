.class Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"


# instance fields
.field final digits:[Ljava/lang/String;

.field final numberElements:[Ljava/lang/String;

.field final validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 1926
    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->digits:[Ljava/lang/String;

    .line 1927
    iput-object p3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    .line 1928
    return-void
.end method
