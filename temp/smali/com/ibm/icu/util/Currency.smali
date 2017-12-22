.class public Lcom/ibm/icu/util/Currency;
.super Lcom/ibm/icu/util/MeasureUnit;
.source "Currency.java"


# static fields
.field private static CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache",
            "<",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final EQUIVALENT_CURRENCY_SYMBOLS:Lcom/ibm/icu/util/Currency$EquivalenceRelation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/util/Currency$EquivalenceRelation",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final POW10:[I

.field private static final UND:Lcom/ibm/icu/util/ULocale;

.field private static final regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Currency;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static shim:Lcom/ibm/icu/util/Currency$ServiceShim;


# instance fields
.field private final isoCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const-string/jumbo v0, "currency"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/util/Currency;->DEBUG:Z

    .line 65
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 90
    new-instance v0, Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;-><init>(Lcom/ibm/icu/util/Currency$1;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "\u00a5"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\uffe5"

    aput-object v2, v1, v4

    .line 92
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "$"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\ufe69"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\uff04"

    aput-object v2, v1, v5

    .line 93
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "\u20a8"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u20b9"

    aput-object v2, v1, v4

    .line 94
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "\u00a3"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u20a4"

    aput-object v2, v1, v4

    .line 95
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    .line 235
    new-instance v0, Lcom/ibm/icu/util/Currency$1;

    invoke-direct {v0}, Lcom/ibm/icu/util/Currency$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/Currency;->regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;

    .line 448
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v1, "und"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Currency;->UND:Lcom/ibm/icu/util/ULocale;

    .line 449
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/ibm/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 918
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/util/Currency;->POW10:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 910
    const-string/jumbo v0, "currency"

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iput-object p1, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;

    .line 915
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->loadCurrency(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method static createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    .line 248
    const-string/jumbo v0, "EURO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string/jumbo v0, "EUR"

    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string/jumbo v2, "PREEURO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    sget-object v1, Lcom/ibm/icu/util/Currency;->regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Currency;

    goto :goto_0
.end method

.method private static getCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 718
    sget-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 719
    if-nez v0, :cond_0

    .line 720
    new-instance v1, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 722
    new-instance v2, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-static {p0, v0}, Lcom/ibm/icu/util/Currency;->setupCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;Ljava/util/List;)V

    .line 728
    sget-object v1, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v1, p0, v0}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 730
    :cond_0
    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "currency"

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 171
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_1

    .line 172
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Currency$ServiceShim;->createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 2

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input currency code is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The input currency code is not 3-letter alphabetic code."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    const-string/jumbo v0, "currency"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method private static isAlpha3Code(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 311
    :goto_1
    if-ge v1, v4, :cond_3

    .line 312
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 313
    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x5a

    if-le v2, v3, :cond_2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    :cond_2
    const/16 v3, 0x7a

    if-gt v2, v3, :cond_0

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static loadCurrency(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 264
    const-string/jumbo v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v1, v2

    .line 271
    :goto_0
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v4

    .line 272
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->onRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v4

    .line 273
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 274
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    if-eqz v1, :cond_2

    const-string/jumbo v1, "EUR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    move-object v0, v3

    .line 283
    :goto_1
    return-object v0

    :cond_0
    move v1, v0

    .line 269
    goto :goto_0

    .line 279
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    :cond_2
    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 283
    goto :goto_1
.end method

.method public static openParseState(Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/impl/TextTrieMap$ParseState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "II)",
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">.ParseState;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 709
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;)Ljava/util/List;

    move-result-object v0

    .line 710
    if-ne p2, v1, :cond_0

    .line 711
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/TextTrieMap;->openParseState(I)Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move-result-object v0

    .line 713
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/TextTrieMap;->openParseState(I)Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move-result-object v0

    goto :goto_0
.end method

.method private static setupCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TextTrieMap;

    .line 737
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/TextTrieMap;

    .line 739
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object v5

    .line 740
    invoke-virtual {v5}, Lcom/ibm/icu/text/CurrencyDisplayNames;->symbolMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 741
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 742
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 745
    sget-object v4, Lcom/ibm/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 746
    new-instance v8, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v8, v2, v3}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v8}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {v5}, Lcom/ibm/icu/text/CurrencyDisplayNames;->nameMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 750
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 751
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 752
    new-instance v4, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v4, v0, v2}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_1

    .line 754
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I
    .locals 2

    .prologue
    .line 846
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v0

    .line 848
    iget v0, v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    return v0
.end method

.method public getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 603
    invoke-virtual {p0, p1, p2, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    .line 612
    :goto_0
    return-object v0

    .line 607
    :cond_0
    if-eqz p4, :cond_1

    .line 608
    aput-boolean v1, p4, v1

    .line 611
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 552
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad name style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    if-eqz p3, :cond_1

    .line 559
    aput-boolean v1, p3, v1

    .line 562
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object v0

    .line 563
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoundingIncrement(Lcom/ibm/icu/util/Currency$CurrencyUsage;)D
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 870
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v2

    .line 871
    iget-object v3, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v2

    .line 873
    iget v3, v2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    .line 877
    if-nez v3, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-wide v0

    .line 881
    :cond_1
    iget v2, v2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    .line 884
    if-ltz v2, :cond_0

    sget-object v4, Lcom/ibm/icu/util/Currency;->POW10:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 890
    int-to-double v0, v3

    sget-object v3, Lcom/ibm/icu/util/Currency;->POW10:[I

    aget v2, v3, v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method
