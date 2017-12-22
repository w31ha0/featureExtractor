.class final Lcom/ibm/icu/text/DateFormatSymbols$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/text/DateFormatSymbols;",
        "Lcom/ibm/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x2b

    .line 1508
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 1509
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1510
    if-gez v0, :cond_0

    .line 1512
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1514
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1515
    new-instance v1, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {v1, p2, v3, v0, v3}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols$1;)V

    return-object v1
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1502
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DateFormatSymbols$1;->createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method
