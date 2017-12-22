.class public abstract Lcom/ibm/icu/text/NumberFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "NumberFormat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final doubleCurrencySign:[C

.field private static final doubleCurrencyStr:Ljava/lang/String;

.field private static shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;


# instance fields
.field private capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

.field private currency:Lcom/ibm/icu/util/Currency;

.field private groupingUsed:Z

.field private maxFractionDigits:B

.field private maxIntegerDigits:B

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minFractionDigits:B

.field private minIntegerDigits:B

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z

.field private parseStrict:Z

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/NumberFormat;->$assertionsDisabled:Z

    .line 1604
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencySign:[C

    .line 1605
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1604
    nop

    :array_0
    .array-data 2
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1787
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 1619
    iput-boolean v1, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    .line 1637
    iput-byte v3, p0, Lcom/ibm/icu/text/NumberFormat;->maxIntegerDigits:B

    .line 1655
    iput-byte v1, p0, Lcom/ibm/icu/text/NumberFormat;->minIntegerDigits:B

    .line 1673
    iput-byte v2, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B

    .line 1691
    iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minFractionDigits:B

    .line 1699
    iput-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    .line 1711
    iput v3, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1721
    iput v1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1731
    iput v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1741
    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1775
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->serialVersionOnStream:I

    .line 1797
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object v0, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    .line 1788
    return-void
.end method

.method static createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1364
    invoke-static {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 1365
    new-instance v4, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v4, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    .line 1372
    if-eq p1, v1, :cond_0

    if-eq p1, v5, :cond_0

    const/4 v3, 0x7

    if-eq p1, v3, :cond_0

    if-eq p1, v7, :cond_0

    const/16 v3, 0x9

    if-ne p1, v3, :cond_1

    .line 1374
    :cond_0
    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v3

    .line 1375
    if-eqz v3, :cond_1

    move-object v0, v3

    .line 1382
    :cond_1
    if-ne p1, v5, :cond_2

    .line 1383
    const-string/jumbo v3, "\u00a4"

    sget-object v5, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1387
    :cond_2
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v3

    .line 1388
    if-nez v3, :cond_3

    .line 1389
    const/4 v0, 0x0

    .line 1451
    :goto_0
    return-object v0

    .line 1394
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1401
    invoke-virtual {v3}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 1402
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1403
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1405
    if-le v5, v3, :cond_4

    .line 1406
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1407
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1408
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1410
    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v6}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 1411
    const-string/jumbo v0, "SpelloutRules"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    move-object v1, v3

    .line 1419
    :goto_2
    new-instance v2, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-direct {v2, p0, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 1420
    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V

    move-object v0, v2

    .line 1447
    :goto_3
    sget-object v1, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 1448
    sget-object v2, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v4, v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    .line 1449
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/NumberFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    move v0, v2

    .line 1416
    goto :goto_2

    .line 1423
    :cond_5
    new-instance v3, Lcom/ibm/icu/text/DecimalFormat;

    invoke-direct {v3, v0, v4, p1}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V

    .line 1431
    if-ne p1, v2, :cond_6

    .line 1432
    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1433
    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1434
    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 1436
    :cond_6
    if-ne p1, v7, :cond_7

    .line 1437
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V

    .line 1439
    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 1440
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)V

    :cond_8
    move-object v0, v3

    .line 1442
    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method public static getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .prologue
    .line 581
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .prologue
    .line 1343
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 1344
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "choice should be from NUMBERSTYLE to STANDARDCURRENCYSTYLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_1
    invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method protected static getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1474
    invoke-static {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->getPatternForStyle(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPatternForStyle(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1492
    .line 1493
    packed-switch p1, :pswitch_data_0

    .line 1519
    sget-boolean v0, Lcom/ibm/icu/text/NumberFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1497
    :pswitch_0
    const-string/jumbo v0, "decimalFormat"

    move-object v1, v0

    .line 1524
    :goto_0
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    .line 1525
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1526
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v2

    .line 1528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NumberElements/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1529
    invoke-virtual {v2}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/patterns/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1528
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1530
    if-nez v2, :cond_2

    .line 1531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NumberElements/latn/patterns/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1534
    :goto_1
    return-object v0

    .line 1500
    :pswitch_1
    const-string/jumbo v0, "cf"

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    if-eqz v0, :cond_0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "accountingFormat"

    :goto_2
    move-object v1, v0

    .line 1503
    goto :goto_0

    .line 1501
    :cond_0
    const-string/jumbo v0, "currencyFormat"

    goto :goto_2

    .line 1507
    :pswitch_2
    const-string/jumbo v0, "currencyFormat"

    move-object v1, v0

    .line 1508
    goto :goto_0

    .line 1510
    :pswitch_3
    const-string/jumbo v0, "percentFormat"

    move-object v1, v0

    .line 1511
    goto :goto_0

    .line 1513
    :pswitch_4
    const-string/jumbo v0, "scientificFormat"

    move-object v1, v0

    .line 1514
    goto :goto_0

    .line 1516
    :pswitch_5
    const-string/jumbo v0, "accountingFormat"

    move-object v1, v0

    .line 1517
    goto :goto_0

    .line 1520
    :cond_1
    const-string/jumbo v0, "decimalFormat"

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 1493
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
    .locals 2

    .prologue
    .line 969
    sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    .line 971
    :try_start_0
    const-string/jumbo v0, "com.ibm.icu.text.NumberFormatServiceShim"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 972
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    sput-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 984
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    return-object v0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    throw v0

    .line 978
    :catch_1
    move-exception v0

    .line 980
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1097
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat;

    .line 1098
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1075
    if-nez p1, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v1

    .line 1076
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 1077
    goto :goto_0

    .line 1078
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1080
    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    .line 1081
    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    iget v3, p1, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v3, p1, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v3, p1, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v3, p1, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    iget-boolean v3, p1, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v3, p1, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z

    iget-boolean v3, p1, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    iget-object v3, p1, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 313
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 314
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    .line 406
    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 407
    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 409
    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 410
    :cond_1
    monitor-exit p0

    .line 411
    return-object p2

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 265
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 266
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 267
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 268
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 270
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_2
    instance-of v0, p1, Lcom/ibm/icu/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 272
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_3
    instance-of v0, p1, Lcom/ibm/icu/util/CurrencyAmount;

    if-eqz v0, :cond_4

    .line 274
    check-cast p1, Lcom/ibm/icu/util/CurrencyAmount;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 276
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/ibm/icu/text/NumberFormat;->currency:Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getRoundingMode()I
    .locals 2

    .prologue
    .line 1311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getRoundingMode must be implemented by the subclass implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1060
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormat;->currency:Lcom/ibm/icu/util/Currency;

    .line 1270
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 0

    .prologue
    .line 1123
    iput-boolean p1, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    .line 1124
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1222
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_0

    .line 1223
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1224
    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2

    .prologue
    .line 1157
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1158
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    .line 1159
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1160
    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2

    .prologue
    .line 1253
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1254
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_0

    .line 1255
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1256
    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2

    .prologue
    .line 1189
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1190
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    .line 1191
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1192
    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    .line 504
    return-void
.end method

.method public setRoundingMode(I)V
    .locals 2

    .prologue
    .line 1325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setRoundingMode must be implemented by the subclass implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
