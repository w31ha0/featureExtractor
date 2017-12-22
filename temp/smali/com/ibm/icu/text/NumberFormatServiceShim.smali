.class Lcom/ibm/icu/text/NumberFormatServiceShim;
.super Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
.source "NumberFormatServiceShim.java"


# static fields
.field private static service:Lcom/ibm/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;-><init>()V

    return-void
.end method


# virtual methods
.method createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 85
    new-array v1, v2, [Lcom/ibm/icu/util/ULocale;

    .line 86
    sget-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat;

    .line 88
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/MissingResourceException;

    const-string/jumbo v1, "Unable to construct NumberFormat"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat;

    .line 95
    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 101
    :cond_2
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 102
    invoke-virtual {v0, v1, v1}, Lcom/ibm/icu/text/NumberFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 103
    return-object v0
.end method
