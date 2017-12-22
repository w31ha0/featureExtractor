.class Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;
.super Ljava/lang/Object;
.source "Parse.java"


# static fields
.field private static final currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/ibm/icu/impl/number/Properties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ibm/icu/impl/number/Parse$AffixHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 912
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;

    .line 941
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->threadLocalProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    .prologue
    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->set:Ljava/util/Set;

    .line 929
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ibm/icu/text/NumberFormat;->getPatternForStyle(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->addPattern(Ljava/lang/String;)V

    .line 934
    invoke-static {p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v1

    .line 935
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/StandardPlural;

    .line 936
    invoke-virtual {v0}, Lcom/ibm/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->addPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_0
    return-void
.end method

.method private addPattern(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 950
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    .line 952
    :try_start_0
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/number/PatternString;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->set:Ljava/util/Set;

    invoke-static {v0}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->fromPropertiesPositivePattern(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->set:Ljava/util/Set;

    invoke-static {v0}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->fromPropertiesNegativePattern(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 958
    return-void

    .line 953
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static addToState(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/number/Parse$ParserState;)V
    .locals 2

    .prologue
    .line 916
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;

    .line 917
    if-nez v0, :cond_0

    .line 920
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;-><init>(Lcom/ibm/icu/util/ULocale;)V

    .line 921
    sget-object v1, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;

    .line 924
    :cond_0
    iget-object v1, p1, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->set:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 925
    return-void
.end method
