.class public Lcom/ibm/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEF_DIGIT_CHARS_ARRAY:[C

.field private static final DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

.field private static final SYMBOL_DEFAULTS:[Ljava/lang/String;

.field private static final SYMBOL_KEYS:[Ljava/lang/String;

.field private static final cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private NaN:Ljava/lang/String;

.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private transient currency:Lcom/ibm/icu/util/Currency;

.field private currencyPattern:Ljava/lang/String;

.field private currencySpcAfterSym:[Ljava/lang/String;

.field private currencySpcBeforeSym:[Ljava/lang/String;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private decimalSeparatorString:Ljava/lang/String;

.field private digit:C

.field private digitStrings:[Ljava/lang/String;

.field private digits:[C

.field private exponentMultiplicationSign:Ljava/lang/String;

.field private exponentSeparator:Ljava/lang/String;

.field private groupingSeparator:C

.field private groupingSeparatorString:Ljava/lang/String;

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private minusSign:C

.field private minusString:Ljava/lang/String;

.field private monetaryGroupingSeparator:C

.field private monetaryGroupingSeparatorString:Ljava/lang/String;

.field private monetarySeparator:C

.field private monetarySeparatorString:Ljava/lang/String;

.field private padEscape:C

.field private patternSeparator:C

.field private perMill:C

.field private perMillString:Ljava/lang/String;

.field private percent:C

.field private percentString:Ljava/lang/String;

.field private plusSign:C

.field private plusString:Ljava/lang/String;

.field private requestedLocale:Ljava/util/Locale;

.field private serialVersionOnStream:I

.field private sigDigit:C

.field private ulocale:Lcom/ibm/icu/util/ULocale;

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 1202
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "decimal"

    aput-object v1, v0, v4

    const-string/jumbo v1, "group"

    aput-object v1, v0, v5

    const-string/jumbo v1, "list"

    aput-object v1, v0, v6

    const-string/jumbo v1, "percentSign"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "minusSign"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "plusSign"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "exponential"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "perMille"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "infinity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "nan"

    aput-object v2, v0, v1

    const-string/jumbo v1, "currencyDecimal"

    aput-object v1, v0, v3

    const/16 v1, 0xb

    const-string/jumbo v2, "currencyGroup"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "superscriptingExponent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    .line 1221
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v4

    const-string/jumbo v1, "1"

    aput-object v1, v0, v5

    const-string/jumbo v1, "2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    .line 1224
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    .line 1240
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x2e

    .line 1241
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x2c

    .line 1242
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, ";"

    aput-object v1, v0, v6

    const/16 v1, 0x25

    .line 1244
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x2d

    .line 1245
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x2b

    .line 1246
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2030

    .line 1248
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u221e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "NaN"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u00d7"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    .line 1830
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    return-void

    .line 1224
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1782
    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1825
    const/16 v0, 0x8

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1841
    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1782
    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1825
    const/16 v0, 0x8

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1841
    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;)V

    .line 75
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->loadData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>()V

    return-object v0
.end method

.method private initSpacingInfo(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;)V
    .locals 1

    .prologue
    .line 1426
    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->getBeforeSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1427
    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->getAfterSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    .line 1428
    return-void
.end method

.method private initialize(Lcom/ibm/icu/util/ULocale;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1298
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1299
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 1300
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    invoke-virtual {v0, p1, v5}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    .line 1301
    iget-object v1, v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Lcom/ibm/icu/util/ULocale;

    iget-object v2, v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 1302
    iget-object v1, v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->digits:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setDigitStrings([Ljava/lang/String;)V

    .line 1303
    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    .line 1306
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setDecimalSeparatorString(Ljava/lang/String;)V

    .line 1307
    aget-object v1, v0, v4

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setGroupingSeparatorString(Ljava/lang/String;)V

    .line 1311
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    .line 1313
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPercentString(Ljava/lang/String;)V

    .line 1314
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMinusSignString(Ljava/lang/String;)V

    .line 1315
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPlusSignString(Ljava/lang/String;)V

    .line 1316
    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 1317
    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPerMillString(Ljava/lang/String;)V

    .line 1318
    const/16 v1, 0x8

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 1319
    const/16 v1, 0x9

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 1320
    const/16 v1, 0xa

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    .line 1321
    const/16 v1, 0xb

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    .line 1322
    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setExponentMultiplicationSign(Ljava/lang/String;)V

    .line 1324
    const/16 v0, 0x23

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    .line 1325
    const/16 v0, 0x2a

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    .line 1326
    const/16 v0, 0x40

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->sigDigit:C

    .line 1329
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {v0, p1, v4}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    .line 1334
    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    .line 1335
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    if-eqz v1, :cond_1

    .line 1336
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1337
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    invoke-virtual {v1, p1, v3, v5}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1338
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getFormatInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;

    move-result-object v1

    .line 1339
    if-eqz v1, :cond_0

    .line 1340
    iget-object v2, v1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 1341
    iget-object v2, v1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->monetarySeparator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    .line 1342
    iget-object v1, v1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    .line 1351
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getSpacingInfo()Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initSpacingInfo(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    .line 1352
    return-void

    .line 1345
    :cond_1
    const-string/jumbo v1, "XXX"

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1346
    const-string/jumbo v1, "\u00a4"

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_0
.end method

.method private static loadData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/4 v5, 0x1

    const/16 v11, 0xa

    const/4 v3, 0x0

    .line 1357
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v6

    .line 1358
    new-array v0, v11, [Ljava/lang/String;

    .line 1359
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/ibm/icu/text/NumberingSystem;->getRadix()I

    move-result v1

    if-ne v1, v11, :cond_3

    invoke-virtual {v6}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1360
    invoke-virtual {v6}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1361
    invoke-virtual {v6}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v7

    move v1, v3

    move v4, v3

    .line 1363
    :goto_0
    if-ge v4, v11, :cond_0

    .line 1364
    invoke-virtual {v7, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1365
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 1366
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1363
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v2

    goto :goto_0

    .line 1369
    :cond_0
    invoke-virtual {v6}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    .line 1378
    :goto_1
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    .line 1379
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1381
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v6

    .line 1383
    sget-object v4, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v4, v4

    new-array v7, v4, [Ljava/lang/String;

    .line 1386
    new-instance v8, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;

    invoke-direct {v8, v7}, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;-><init>([Ljava/lang/String;)V

    .line 1388
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NumberElements/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "symbols"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_2
    array-length v9, v7

    move v4, v3

    :goto_3
    if-ge v4, v9, :cond_8

    aget-object v10, v7, v4

    .line 1397
    if-nez v10, :cond_4

    move v4, v5

    .line 1402
    :goto_4
    if-eqz v4, :cond_1

    const-string/jumbo v4, "latn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1403
    const-string/jumbo v2, "NumberElements/latn/symbols"

    invoke-virtual {v0, v2, v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    :cond_1
    move v0, v3

    .line 1407
    :goto_5
    sget-object v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 1408
    aget-object v2, v7, v0

    if-nez v2, :cond_2

    .line 1409
    sget-object v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v7, v0

    .line 1407
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1372
    :cond_3
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    .line 1373
    const-string/jumbo v1, "latn"

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 1396
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1415
    :cond_5
    aget-object v0, v7, v11

    if-nez v0, :cond_6

    .line 1416
    aget-object v0, v7, v3

    aput-object v0, v7, v11

    .line 1418
    :cond_6
    aget-object v0, v7, v12

    if-nez v0, :cond_7

    .line 1419
    aget-object v0, v7, v5

    aput-object v0, v7, v12

    .line 1422
    :cond_7
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    invoke-direct {v0, v6, v1, v7}, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;-><init>(Lcom/ibm/icu/util/ULocale;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 1389
    :catch_0
    move-exception v4

    goto :goto_2

    :cond_8
    move v4, v3

    goto :goto_4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1122
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1124
    :catch_0
    move-exception v0

    .line 1126
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1137
    instance-of v2, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    if-nez v2, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return v1

    .line 1140
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 1141
    goto :goto_0

    .line 1143
    :cond_2
    check-cast p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    move v2, v1

    .line 1144
    :goto_1
    const/4 v3, 0x2

    if-gt v2, v3, :cond_3

    .line 1145
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1148
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1153
    :cond_3
    iget-object v2, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v2, :cond_4

    move v2, v1

    .line 1154
    :goto_2
    const/16 v3, 0xa

    if-ge v2, v3, :cond_5

    .line 1155
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v3, v3, v2

    iget-char v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/2addr v4, v2

    if-ne v3, v4, :cond_0

    .line 1154
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1159
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    :cond_5
    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v2, v3, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v2, v3, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v3, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v3, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    if-ne v2, v3, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1170
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 1172
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 1173
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1174
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    if-ne v2, v3, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v2, v3, :cond_6

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1182
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_3
    move v1, v0

    .line 1163
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1182
    goto :goto_3
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method getCurrencyPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .prologue
    .line 379
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDecimalSeparatorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getDigitStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDigitStringsLocal()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public getDigits()[C
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingSeparatorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 1868
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-object v0
.end method

.method public getMonetaryDecimalSeparatorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getMonetaryGroupingSeparatorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPerMillString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusSignString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-object v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    .line 1192
    mul-int/lit8 v0, v0, 0x25

    iget-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int/2addr v0, v1

    .line 1193
    mul-int/lit8 v0, v0, 0x25

    iget-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int/2addr v0, v1

    .line 1194
    return v0
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)V
    .locals 1

    .prologue
    .line 814
    if-nez p1, :cond_0

    .line 815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 817
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    .line 818
    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 820
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 766
    return-void
.end method

.method public setDecimalSeparatorString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input decimal separator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_1
    const/16 v0, 0x2e

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    goto :goto_0
.end method

.method public setDigitStrings([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x0

    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input digit string array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    array-length v0, p1

    if-eq v0, v6, :cond_1

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number of digit strings is not 10"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    .line 270
    new-array v0, v6, [C

    move v1, v2

    .line 271
    :goto_0
    if-ge v1, v6, :cond_4

    .line 272
    aget-object v4, p1, v1

    if-nez v4, :cond_2

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The input digit string array contains a null element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    aget-object v4, p1, v1

    aput-object v4, v3, v1

    .line 276
    if-eqz v0, :cond_3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 277
    aget-object v4, p1, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v1

    .line 271
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 284
    :cond_4
    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 286
    if-nez v0, :cond_5

    .line 288
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 289
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    .line 294
    :goto_2
    return-void

    .line 291
    :cond_5
    aget-char v1, v0, v2

    iput-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 292
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    goto :goto_2
.end method

.method public setExponentMultiplicationSign(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 959
    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 983
    return-void
.end method

.method public setGroupingSeparatorString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input grouping separator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_1
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    goto :goto_0
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 601
    return-void
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1890
    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 1892
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    .line 1890
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1897
    :cond_2
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 1898
    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    .line 1899
    return-void
.end method

.method public setMinusSignString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 674
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input minus sign is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 677
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_1
    const/16 v0, 0x2d

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    goto :goto_0
.end method

.method public setMonetaryDecimalSeparatorString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 867
    if-nez p1, :cond_0

    .line 868
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input monetary decimal separator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 872
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_1
    const/16 v0, 0x2e

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    goto :goto_0
.end method

.method public setMonetaryGroupingSeparatorString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 924
    if-nez p1, :cond_0

    .line 925
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input monetary grouping separator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 928
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 929
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 934
    :goto_0
    return-void

    .line 932
    :cond_1
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    goto :goto_0
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public setPerMillString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input permille string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_1
    const/16 v0, 0x2030

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    goto :goto_0
.end method

.method public setPercentString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 531
    if-nez p1, :cond_0

    .line 532
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input percent sign is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_1
    const/16 v0, 0x25

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    goto :goto_0
.end method

.method public setPlusSignString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 738
    if-nez p1, :cond_0

    .line 739
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input plus sign is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 743
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_1
    const/16 v0, 0x2b

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    goto :goto_0
.end method
