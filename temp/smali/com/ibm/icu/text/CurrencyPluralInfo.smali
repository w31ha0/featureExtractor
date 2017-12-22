.class public Lcom/ibm/icu/text/CurrencyPluralInfo;
.super Ljava/lang/Object;
.source "CurrencyPluralInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final defaultCurrencyPluralPattern:Ljava/lang/String;

.field private static final defaultCurrencyPluralPatternChar:[C

.field private static final tripleCurrencySign:[C

.field private static final tripleCurrencyStr:Ljava/lang/String;


# instance fields
.field private pluralCountToCurrencyUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    .line 321
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    .line 324
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    .line 326
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    return-void

    .line 319
    :array_0
    .array-data 2
        0xa4s
        0xa4s
        0xa4s
    .end array-data

    .line 324
    nop

    :array_1
    .array-data 2
        0x0s
        0x2es
        0x23s
        0x23s
        0x20s
        0xa4s
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 339
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 342
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 49
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 339
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 342
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 67
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V

    .line 68
    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyPluralInfo;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method private initialize(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 278
    invoke-static {p1}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 279
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->setupCurrencyPluralPattern(Lcom/ibm/icu/util/ULocale;)V

    .line 280
    return-void
.end method

.method private setupCurrencyPluralPattern(Lcom/ibm/icu/util/ULocale;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 285
    invoke-static {p1, v2}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v1

    .line 287
    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 288
    const/4 v0, 0x0

    .line 289
    if-eq v5, v9, :cond_2

    .line 290
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    .line 293
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    const-string/jumbo v4, "{0}"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 301
    const-string/jumbo v7, "{1}"

    sget-object v8, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 302
    if-eq v5, v9, :cond_1

    .line 304
    const-string/jumbo v7, "{0}"

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string/jumbo v7, "{1}"

    sget-object v8, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v4, ";"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_2
    iget-object v4, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 313
    :cond_0
    return-void

    :cond_1
    move-object v0, v4

    goto :goto_2

    :cond_2
    move-object v2, v0

    move-object v3, v1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 198
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 200
    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    iput-object v1, v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 206
    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    iget-object v2, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    iget-object v4, v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 210
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 223
    instance-of v1, p1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    if-eqz v1, :cond_0

    .line 224
    check-cast p1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 225
    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    iget-object v2, p1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iget-object v2, p1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 226
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 228
    :cond_0
    return v0
.end method

.method public getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    if-nez v0, :cond_1

    .line 124
    const-string/jumbo v1, "other"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    const-string/jumbo v1, "other"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    :cond_0
    if-nez v0, :cond_1

    .line 133
    sget-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    .line 136
    :cond_1
    return-object v0
.end method

.method public getPluralRules()Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 241
    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 242
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 240
    return v0
.end method
