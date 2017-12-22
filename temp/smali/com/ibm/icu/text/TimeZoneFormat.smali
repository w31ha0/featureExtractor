.class public Lcom/ibm/icu/text/TimeZoneFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "TimeZoneFormat.java"

# interfaces
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/text/UFormat;",
        "Lcom/ibm/icu/util/Freezable",
        "<",
        "Lcom/ibm/icu/text/TimeZoneFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALT_GMT_STRINGS:[Ljava/lang/String;

.field private static final DEFAULT_GMT_DIGITS:[Ljava/lang/String;

.field private static final PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field private static volatile SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;


# instance fields
.field private transient _abuttingOffsetHoursAndMinutes:Z

.field private volatile transient _frozen:Z

.field private _gmtOffsetDigits:[Ljava/lang/String;

.field private transient _gmtOffsetPatternItems:[[Ljava/lang/Object;

.field private _gmtOffsetPatterns:[Ljava/lang/String;

.field private _gmtPattern:Ljava/lang/String;

.field private transient _gmtPatternPrefix:Ljava/lang/String;

.field private transient _gmtPatternSuffix:Ljava/lang/String;

.field private _gmtZeroFormat:Ljava/lang/String;

.field private volatile transient _gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

.field private _locale:Lcom/ibm/icu/util/ULocale;

.field private _parseAllStyles:Z

.field private _parseTZDBNames:Z

.field private transient _region:Ljava/lang/String;

.field private volatile transient _tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

.field private _tznames:Lcom/ibm/icu/text/TimeZoneNames;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    .line 361
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v3, "GMT"

    aput-object v3, v0, v2

    const-string/jumbo v3, "UTC"

    aput-object v3, v0, v1

    const-string/jumbo v3, "UT"

    aput-object v3, v0, v7

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    .line 365
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "0"

    aput-object v3, v0, v2

    const-string/jumbo v3, "1"

    aput-object v3, v0, v1

    const-string/jumbo v3, "2"

    aput-object v3, v0, v7

    const-string/jumbo v3, "3"

    aput-object v3, v0, v8

    const-string/jumbo v3, "4"

    aput-object v3, v0, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "5"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "6"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "7"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "8"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "9"

    aput-object v4, v0, v3

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    .line 376
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v7

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v8

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v4, v0, v3

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 396
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>(Lcom/ibm/icu/text/TimeZoneFormat$1;)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    .line 399
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v6, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v0, v3, v4, v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    .line 406
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v3, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v0, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    .line 3134
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "_locale"

    const-class v5, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "_tznames"

    const-class v4, Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "_gmtPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "_gmtOffsetPatterns"

    const-class v3, [Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "_gmtOffsetDigits"

    const-class v3, [Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "_gmtZeroFormat"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "_parseAllStyles"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    :cond_0
    move v0, v2

    .line 68
    goto/16 :goto_0
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 418
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    .line 420
    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 425
    const-string/jumbo v0, "GMT"

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    .line 428
    :try_start_0
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b/zone"

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    :try_start_1
    const-string/jumbo v3, "zoneStrings/gmtFormat"

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 436
    :goto_0
    :try_start_2
    const-string/jumbo v4, "zoneStrings/hourFormat"

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 441
    :goto_1
    :try_start_3
    const-string/jumbo v4, "zoneStrings/gmtZeroFormat"

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move-object v0, v3

    .line 449
    :goto_3
    if-nez v0, :cond_0

    .line 450
    const-string/jumbo v0, "GMT{0}"

    .line 452
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    .line 455
    if-eqz v2, :cond_3

    .line 456
    const-string/jumbo v0, ";"

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 457
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 458
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v4, v0, v1

    aput-object v4, v3, v2

    .line 459
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 460
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v2, v0, v5

    invoke-static {v2}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 461
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v2, v0, v5

    aput-object v2, v3, v1

    .line 462
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 468
    :cond_1
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    .line 470
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 471
    invoke-static {p1}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 476
    :cond_2
    return-void

    .line 432
    :catch_0
    move-exception v3

    move-object v3, v2

    goto/16 :goto_0

    .line 445
    :catch_1
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3

    .line 464
    :cond_3
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v2

    array-length v4, v2

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_1

    aget-object v1, v2, v0

    .line 465
    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    invoke-static {v1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$100(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 442
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 437
    :catch_3
    move-exception v4

    goto/16 :goto_1
.end method

.method private appendOffsetDigits(Ljava/lang/StringBuilder;II)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 2164
    sget-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x3c

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2165
    :cond_1
    const/16 v0, 0xa

    if-lt p2, v0, :cond_2

    move v0, v1

    :goto_0
    move v2, v3

    .line 2166
    :goto_1
    sub-int v4, p3, v0

    if-ge v2, v4, :cond_3

    .line 2167
    iget-object v4, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2165
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2169
    :cond_3
    if-ne v0, v1, :cond_4

    .line 2170
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    div-int/lit8 v1, p2, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    rem-int/lit8 v1, p2, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    return-void
.end method

.method private checkAbuttingHoursAndMinutes()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1961
    iput-boolean v4, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    .line 1962
    iget-object v6, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v8, v6, v5

    .line 1964
    array-length v9, v8

    move v3, v4

    move v1, v4

    :goto_1
    if-ge v3, v9, :cond_2

    aget-object v0, v8, v3

    .line 1965
    instance-of v10, v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v10, :cond_1

    .line 1966
    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 1967
    if-eqz v1, :cond_0

    .line 1968
    iput-boolean v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    move v0, v1

    .line 1964
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1969
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v0

    const/16 v10, 0x48

    if-ne v0, v10, :cond_4

    move v0, v2

    .line 1970
    goto :goto_2

    .line 1972
    :cond_1
    if-eqz v1, :cond_4

    .line 1962
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 1977
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private static expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2119
    const-string/jumbo v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2120
    if-gez v1, :cond_0

    .line 2121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Bad time zone hour pattern data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2123
    :cond_0
    const-string/jumbo v0, ":"

    .line 2124
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2125
    if-ltz v2, :cond_1

    .line 2126
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2128
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ss"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatExemplarLocation(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    if-nez v0, :cond_0

    .line 1806
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    const-string/jumbo v1, "Etc/Unknown"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1807
    if-nez v0, :cond_0

    .line 1809
    const-string/jumbo v0, "Unknown"

    .line 1812
    :cond_0
    return-object v0
.end method

.method private formatOffsetISO8601(IZZZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1711
    if-gez p1, :cond_1

    neg-int v0, p1

    move v4, v0

    .line 1712
    :goto_0
    if-eqz p3, :cond_2

    const/16 v0, 0x3e8

    if-lt v4, v0, :cond_0

    if-eqz p5, :cond_2

    const v0, 0xea60

    if-ge v4, v0, :cond_2

    .line 1713
    :cond_0
    const-string/jumbo v0, "Z"

    .line 1767
    :goto_1
    return-object v0

    :cond_1
    move v4, p1

    .line 1711
    goto :goto_0

    .line 1715
    :cond_2
    if-eqz p4, :cond_3

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    move-object v2, v0

    .line 1716
    :goto_2
    if-eqz p5, :cond_4

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    move-object v1, v0

    .line 1717
    :goto_3
    if-eqz p2, :cond_5

    const/4 v0, 0x0

    move-object v3, v0

    .line 1722
    :goto_4
    const v0, 0x5265c00

    if-lt v4, v0, :cond_6

    .line 1723
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Offset out of range :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1715
    :cond_3
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    move-object v2, v0

    goto :goto_2

    .line 1716
    :cond_4
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    move-object v1, v0

    goto :goto_3

    .line 1717
    :cond_5
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 1726
    :cond_6
    const/4 v0, 0x3

    new-array v5, v0, [I

    .line 1727
    const/4 v0, 0x0

    const v6, 0x36ee80

    div-int v6, v4, v6

    aput v6, v5, v0

    .line 1728
    const v0, 0x36ee80

    rem-int v0, v4, v0

    .line 1729
    const/4 v4, 0x1

    const v6, 0xea60

    div-int v6, v0, v6

    aput v6, v5, v4

    .line 1730
    const v4, 0xea60

    rem-int/2addr v0, v4

    .line 1731
    const/4 v4, 0x2

    div-int/lit16 v0, v0, 0x3e8

    aput v0, v5, v4

    .line 1733
    sget-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    aget v0, v5, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x0

    aget v0, v5, v0

    const/16 v4, 0x17

    if-le v0, v4, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1734
    :cond_8
    sget-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    aget v0, v5, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    aget v0, v5, v0

    const/16 v4, 0x3b

    if-le v0, v4, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1735
    :cond_a
    sget-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x2

    aget v0, v5, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x2

    aget v0, v5, v0

    const/16 v4, 0x3b

    if-le v0, v4, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1737
    :cond_c
    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v0

    .line 1738
    :goto_5
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 1739
    aget v1, v5, v0

    if-eqz v1, :cond_11

    .line 1745
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1746
    const/16 v1, 0x2b

    .line 1747
    if-gez p1, :cond_e

    .line 1749
    const/4 v2, 0x0

    :goto_6
    if-gt v2, v0, :cond_e

    .line 1750
    aget v6, v5, v2

    if-eqz v6, :cond_12

    .line 1751
    const/16 v1, 0x2d

    .line 1756
    :cond_e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1758
    const/4 v1, 0x0

    :goto_7
    if-gt v1, v0, :cond_13

    .line 1759
    if-eqz v3, :cond_f

    if-eqz v1, :cond_f

    .line 1760
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1762
    :cond_f
    aget v2, v5, v1

    const/16 v6, 0xa

    if-ge v2, v6, :cond_10

    .line 1763
    const/16 v2, 0x30

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1765
    :cond_10
    aget v2, v5, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1758
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1742
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1749
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1767
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private formatOffsetLocalizedGMT(IZ)Ljava/lang/String;
    .locals 11

    .prologue
    const v8, 0xea60

    const/16 v10, 0x3b

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 1636
    if-nez p1, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    .line 1700
    :goto_0
    return-object v0

    .line 1640
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    if-gez p1, :cond_e

    .line 1643
    neg-int p1, p1

    move v0, v1

    .line 1647
    :goto_1
    const v3, 0x36ee80

    div-int v6, p1, v3

    .line 1648
    const v3, 0x36ee80

    rem-int v3, p1, v3

    .line 1649
    div-int v7, v3, v8

    .line 1650
    rem-int/2addr v3, v8

    .line 1651
    div-int/lit16 v8, v3, 0x3e8

    .line 1653
    const/16 v9, 0x17

    if-gt v6, v9, :cond_1

    if-gt v7, v10, :cond_1

    if-le v8, v10, :cond_2

    .line 1654
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Offset out of range :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1658
    :cond_2
    if-eqz v0, :cond_7

    .line 1659
    if-eqz v8, :cond_4

    .line 1660
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    move-object v3, v0

    .line 1677
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    array-length v9, v3

    :goto_3
    if-ge v1, v9, :cond_d

    aget-object v0, v3, v1

    .line 1680
    instance-of v10, v0, Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 1682
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1661
    :cond_4
    if-nez v7, :cond_5

    if-nez p2, :cond_6

    .line 1662
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    move-object v3, v0

    goto :goto_2

    .line 1664
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    move-object v3, v0

    goto :goto_2

    .line 1667
    :cond_7
    if-eqz v8, :cond_8

    .line 1668
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    move-object v3, v0

    goto :goto_2

    .line 1669
    :cond_8
    if-nez v7, :cond_9

    if-nez p2, :cond_a

    .line 1670
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    move-object v3, v0

    goto :goto_2

    .line 1672
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    move-object v3, v0

    goto :goto_2

    .line 1683
    :cond_b
    instance-of v10, v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v10, :cond_3

    .line 1685
    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 1686
    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    .line 1688
    :sswitch_0
    if-eqz p2, :cond_c

    move v0, v2

    :goto_5
    invoke-direct {p0, v5, v6, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_4

    :cond_c
    move v0, v4

    goto :goto_5

    .line 1691
    :sswitch_1
    invoke-direct {p0, v5, v7, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_4

    .line 1694
    :sswitch_2
    invoke-direct {p0, v5, v8, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_4

    .line 1699
    :cond_d
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_1

    .line 1686
    nop

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/TimeZone;",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            "J",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1781
    sget-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1782
    :cond_0
    sget-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-eq p3, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1784
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 1785
    if-eqz v2, :cond_3

    .line 1786
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1789
    :goto_0
    if-eqz v1, :cond_2

    if-eqz p6, :cond_2

    .line 1790
    if-eqz v2, :cond_4

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    :goto_1
    iput-object v0, p6, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1792
    :cond_2
    return-object v1

    .line 1787
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p4, p5}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1790
    :cond_4
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_1
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 2

    .prologue
    .line 489
    if-nez p0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    invoke-virtual {v0, p0, p0}, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat;

    return-object v0
.end method

.method private getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    if-nez v0, :cond_1

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TZDBTimeZoneNames;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 553
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    return-object v0

    .line 553
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1849
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1851
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 1853
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1854
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1855
    const-string/jumbo v0, "001"

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1849
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;
    .locals 2

    .prologue
    .line 1868
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1878
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    :goto_0
    return-object v0

    .line 1871
    :pswitch_0
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_0

    .line 1875
    :pswitch_1
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_0

    .line 1868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .prologue
    .line 2181
    if-nez p1, :cond_0

    .line 2183
    const-string/jumbo v0, "Etc/GMT"

    invoke-static {v0}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 2185
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomTimeZone(I)Lcom/ibm/icu/util/SimpleTimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_1

    .line 532
    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    .line 536
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    return-object v0

    .line 536
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1829
    .line 1830
    if-nez p1, :cond_1

    .line 1831
    sget-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1832
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTargetRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1833
    if-nez p1, :cond_1

    .line 1834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid mzID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1837
    :cond_1
    return-object p1
.end method

.method private initGMTOffsetPatterns([Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1941
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v2, v0

    .line 1942
    array-length v0, p1

    if-ge v0, v2, :cond_0

    .line 1943
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Insufficient number of elements in gmtOffsetPatterns"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1945
    :cond_0
    new-array v3, v2, [[Ljava/lang/Object;

    .line 1946
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 1947
    invoke-virtual {v6}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v7

    .line 1950
    aget-object v8, p1, v7

    invoke-static {v6}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$200(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 1951
    aput-object v6, v3, v7

    .line 1946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1954
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 1955
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1956
    iput-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    .line 1957
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    .line 1958
    return-void
.end method

.method private initGMTPattern(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1892
    const-string/jumbo v0, "{0}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1893
    if-gez v0, :cond_0

    .line 1894
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad localized GMT pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1896
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    .line 1897
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    .line 1898
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    .line 1899
    return-void
.end method

.method private static parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Z)I
    .locals 10

    .prologue
    .line 2818
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2820
    invoke-virtual {p2}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v0, 0x2

    if-eqz p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    sub-int v7, v2, v0

    .line 2821
    invoke-virtual {p3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 2823
    new-array v8, v0, [I

    .line 2824
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 2826
    :goto_1
    array-length v3, v8

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2827
    const-string/jumbo v3, "0123456789"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2828
    if-gez v3, :cond_2

    .line 2836
    :cond_0
    if-eqz p4, :cond_8

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_8

    .line 2838
    add-int/lit8 v2, v2, -0x1

    move v5, v2

    .line 2841
    :goto_2
    if-ge v5, v7, :cond_3

    .line 2842
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2843
    const/4 v0, 0x0

    .line 2892
    :goto_3
    return v0

    .line 2820
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2831
    :cond_2
    aput v3, v8, v2

    .line 2832
    add-int/lit8 v2, v2, 0x1

    .line 2833
    add-int/lit8 v0, v0, 0x1

    .line 2834
    goto :goto_1

    .line 2846
    :cond_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 2847
    const/4 v2, 0x0

    move v6, v5

    .line 2848
    :goto_4
    if-lt v6, v7, :cond_7

    .line 2849
    packed-switch v6, :pswitch_data_0

    move v5, v4

    move v4, v3

    move v3, v0

    .line 2876
    :goto_5
    const/16 v0, 0x17

    if-gt v5, v0, :cond_4

    const/16 v0, 0x3b

    if-gt v4, v0, :cond_4

    const/16 v0, 0x3b

    if-gt v3, v0, :cond_4

    .line 2878
    const/4 v0, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    .line 2887
    :goto_6
    if-nez v0, :cond_6

    .line 2888
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2889
    const/4 v0, 0x0

    goto :goto_3

    .line 2851
    :pswitch_0
    const/4 v4, 0x0

    aget v5, v8, v4

    move v4, v3

    move v3, v0

    .line 2852
    goto :goto_5

    .line 2854
    :pswitch_1
    const/4 v4, 0x0

    aget v4, v8, v4

    mul-int/lit8 v4, v4, 0xa

    const/4 v5, 0x1

    aget v5, v8, v5

    add-int/2addr v5, v4

    move v4, v3

    move v3, v0

    .line 2855
    goto :goto_5

    .line 2857
    :pswitch_2
    const/4 v3, 0x0

    aget v5, v8, v3

    .line 2858
    const/4 v3, 0x1

    aget v3, v8, v3

    mul-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    aget v4, v8, v4

    add-int/2addr v3, v4

    move v4, v3

    move v3, v0

    .line 2859
    goto :goto_5

    .line 2861
    :pswitch_3
    const/4 v3, 0x0

    aget v3, v8, v3

    mul-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    aget v4, v8, v4

    add-int v5, v3, v4

    .line 2862
    const/4 v3, 0x2

    aget v3, v8, v3

    mul-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    aget v4, v8, v4

    add-int/2addr v3, v4

    move v4, v3

    move v3, v0

    .line 2863
    goto :goto_5

    .line 2865
    :pswitch_4
    const/4 v0, 0x0

    aget v5, v8, v0

    .line 2866
    const/4 v0, 0x1

    aget v0, v8, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v3, 0x2

    aget v3, v8, v3

    add-int/2addr v3, v0

    .line 2867
    const/4 v0, 0x3

    aget v0, v8, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v4, 0x4

    aget v4, v8, v4

    add-int/2addr v0, v4

    move v4, v3

    move v3, v0

    .line 2868
    goto :goto_5

    .line 2870
    :pswitch_5
    const/4 v0, 0x0

    aget v0, v8, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v3, 0x1

    aget v3, v8, v3

    add-int v5, v0, v3

    .line 2871
    const/4 v0, 0x2

    aget v0, v8, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v3, 0x3

    aget v3, v8, v3

    add-int/2addr v3, v0

    .line 2872
    const/4 v0, 0x4

    aget v0, v8, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v4, 0x5

    aget v4, v8, v4

    add-int/2addr v0, v4

    move v4, v3

    move v3, v0

    goto/16 :goto_5

    .line 2883
    :cond_4
    if-eqz p4, :cond_5

    const/4 v0, 0x2

    :goto_7
    sub-int v3, v6, v0

    .line 2884
    const/4 v0, 0x0

    move v4, v0

    move v6, v3

    move v3, v0

    goto/16 :goto_4

    .line 2883
    :cond_5
    const/4 v0, 0x1

    goto :goto_7

    .line 2891
    :cond_6
    add-int v0, v1, v6

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2892
    mul-int/lit8 v0, v4, 0x3c

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    goto/16 :goto_3

    :cond_7
    move v9, v2

    move v2, v0

    move v0, v9

    goto/16 :goto_6

    :cond_8
    move v5, v2

    goto/16 :goto_2

    .line 2849
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseAbuttingOffsetFields(Ljava/lang/String;I[I)I
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2563
    .line 2564
    new-array v5, v10, [I

    .line 2565
    new-array v6, v10, [I

    .line 2569
    new-array v7, v8, [I

    aput v1, v7, v1

    move v2, v1

    move v0, v1

    move v3, p2

    .line 2571
    :goto_0
    if-ge v2, v10, :cond_0

    .line 2572
    invoke-direct {p0, p1, v3, v7}, Lcom/ibm/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v4

    aput v4, v5, v2

    .line 2573
    aget v4, v5, v2

    if-gez v4, :cond_1

    .line 2581
    :cond_0
    if-nez v0, :cond_2

    .line 2582
    aput v1, p3, v1

    .line 2627
    :goto_1
    return v1

    .line 2576
    :cond_1
    aget v4, v7, v1

    add-int/2addr v4, v3

    .line 2577
    sub-int v3, v4, p2

    aput v3, v6, v2

    .line 2578
    add-int/lit8 v3, v0, 0x1

    .line 2571
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    move v3, v4

    goto :goto_0

    :cond_2
    move v4, v0

    .line 2587
    :goto_2
    if-lez v4, :cond_6

    .line 2592
    sget-boolean v0, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-lez v4, :cond_3

    if-le v4, v10, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2593
    :cond_4
    packed-switch v4, :pswitch_data_0

    move v0, v1

    move v2, v1

    move v3, v1

    .line 2619
    :goto_3
    const/16 v7, 0x17

    if-gt v3, v7, :cond_5

    const/16 v7, 0x3b

    if-gt v2, v7, :cond_5

    const/16 v7, 0x3b

    if-gt v0, v7, :cond_5

    .line 2621
    const v5, 0x36ee80

    mul-int/2addr v3, v5

    const v5, 0xea60

    mul-int/2addr v2, v5

    add-int/2addr v2, v3

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v2

    .line 2622
    add-int/lit8 v2, v4, -0x1

    aget v2, v6, v2

    aput v2, p3, v1

    :goto_4
    move v1, v0

    .line 2627
    goto :goto_1

    .line 2595
    :pswitch_0
    aget v0, v5, v1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 2596
    goto :goto_3

    .line 2598
    :pswitch_1
    aget v0, v5, v1

    mul-int/lit8 v0, v0, 0xa

    aget v2, v5, v8

    add-int/2addr v0, v2

    move v2, v1

    move v3, v0

    move v0, v1

    .line 2599
    goto :goto_3

    .line 2601
    :pswitch_2
    aget v2, v5, v1

    .line 2602
    aget v0, v5, v8

    mul-int/lit8 v0, v0, 0xa

    aget v3, v5, v9

    add-int/2addr v0, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 2603
    goto :goto_3

    .line 2605
    :pswitch_3
    aget v0, v5, v1

    mul-int/lit8 v0, v0, 0xa

    aget v2, v5, v8

    add-int/2addr v2, v0

    .line 2606
    aget v0, v5, v9

    mul-int/lit8 v0, v0, 0xa

    aget v3, v5, v11

    add-int/2addr v0, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 2607
    goto :goto_3

    .line 2609
    :pswitch_4
    aget v3, v5, v1

    .line 2610
    aget v0, v5, v8

    mul-int/lit8 v0, v0, 0xa

    aget v2, v5, v9

    add-int/2addr v2, v0

    .line 2611
    aget v0, v5, v11

    mul-int/lit8 v0, v0, 0xa

    const/4 v7, 0x4

    aget v7, v5, v7

    add-int/2addr v0, v7

    .line 2612
    goto :goto_3

    .line 2614
    :pswitch_5
    aget v0, v5, v1

    mul-int/lit8 v0, v0, 0xa

    aget v2, v5, v8

    add-int v3, v0, v2

    .line 2615
    aget v0, v5, v9

    mul-int/lit8 v0, v0, 0xa

    aget v2, v5, v11

    add-int/2addr v2, v0

    .line 2616
    const/4 v0, 0x4

    aget v0, v5, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v7, 0x5

    aget v7, v5, v7

    add-int/2addr v0, v7

    goto :goto_3

    .line 2625
    :cond_5
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    .line 2626
    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_4

    .line 2593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;)I
    .locals 9

    .prologue
    .line 2910
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 2911
    const/4 v0, 0x3

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 2912
    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_1

    .line 2913
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p4}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 2914
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2915
    if-ne v3, p2, :cond_5

    .line 2916
    if-nez v0, :cond_4

    .line 2917
    const/4 v3, 0x0

    aget v3, v5, v3

    if-nez v3, :cond_2

    .line 2948
    :cond_0
    const/4 v3, 0x0

    .line 2949
    const/4 v1, 0x0

    .line 2950
    const/4 v0, 0x0

    .line 2953
    const/4 v6, 0x0

    aget v6, v5, v6

    if-nez v6, :cond_6

    move-object v8, v0

    move v0, v3

    move v3, v1

    move-object v1, v8

    .line 2983
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v1

    invoke-virtual {p3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 2984
    :cond_1
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2985
    const/4 v0, 0x0

    .line 2989
    :goto_2
    return v0

    .line 2922
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 2913
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2924
    :cond_4
    aget v3, v5, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 2928
    const/4 v3, 0x0

    aput v3, v5, v0

    goto :goto_3

    .line 2931
    :cond_5
    aget v6, v5, v0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 2935
    const-string/jumbo v6, "0123456789"

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2936
    if-ltz v3, :cond_0

    .line 2940
    aget v6, v4, v0

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v3, v6

    aput v3, v4, v0

    .line 2941
    aget v3, v5, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v0

    .line 2942
    aget v3, v5, v0

    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    .line 2944
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2956
    :cond_6
    const/4 v0, 0x0

    aget v0, v4, v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_7

    .line 2957
    const/4 v0, 0x0

    aget v0, v4, v0

    div-int/lit8 v0, v0, 0xa

    const v1, 0x36ee80

    mul-int v3, v0, v1

    .line 2958
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    .line 2959
    const/4 v1, 0x1

    move-object v8, v0

    move v0, v3

    move v3, v1

    move-object v1, v8

    .line 2960
    goto :goto_1

    .line 2962
    :cond_7
    const/4 v0, 0x0

    aget v0, v4, v0

    const v1, 0x36ee80

    mul-int v3, v0, v1

    .line 2963
    const/4 v0, 0x0

    aget v1, v5, v0

    .line 2964
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    .line 2967
    const/4 v6, 0x1

    aget v6, v5, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    aget v6, v4, v6

    const/16 v7, 0x3b

    if-le v6, v7, :cond_8

    move-object v8, v0

    move v0, v3

    move v3, v1

    move-object v1, v8

    .line 2968
    goto :goto_1

    .line 2970
    :cond_8
    const/4 v0, 0x1

    aget v0, v4, v0

    const v6, 0xea60

    mul-int/2addr v0, v6

    add-int/2addr v3, v0

    .line 2971
    const/4 v0, 0x1

    aget v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 2972
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    .line 2975
    const/4 v6, 0x2

    aget v6, v5, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    const/4 v6, 0x2

    aget v6, v4, v6

    const/16 v7, 0x3b

    if-le v6, v7, :cond_9

    move-object v8, v0

    move v0, v3

    move v3, v1

    move-object v1, v8

    .line 2976
    goto/16 :goto_1

    .line 2978
    :cond_9
    const/4 v0, 0x2

    aget v0, v4, v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v3, v0

    .line 2979
    const/4 v0, 0x2

    aget v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 2980
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    move-object v8, v0

    move v0, v3

    move v3, v1

    move-object v1, v8

    goto/16 :goto_1

    .line 2988
    :cond_a
    add-int v1, v2, v3

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto/16 :goto_2

    :cond_b
    move-object v8, v0

    move v0, v3

    move v3, v1

    move-object v1, v8

    goto/16 :goto_1

    .line 2911
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 2912
    :array_1
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method private parseDefaultOffsetFields(Ljava/lang/String;IC[I)I
    .locals 14

    .prologue
    .line 2517
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 2519
    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 2520
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2523
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x17

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v13

    .line 2524
    const/4 v1, 0x0

    aget v1, v8, v1

    if-nez v1, :cond_0

    move v1, v9

    move v2, v10

    move/from16 v3, p2

    .line 2546
    :goto_0
    move/from16 v0, p2

    if-ne v3, v0, :cond_3

    .line 2547
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p4, v1

    .line 2548
    const/4 v1, 0x0

    .line 2552
    :goto_1
    return v1

    .line 2527
    :cond_0
    const/4 v1, 0x0

    aget v1, v8, v1

    add-int v11, p2, v1

    .line 2529
    add-int/lit8 v1, v11, 0x1

    if-ge v1, v12, :cond_4

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v0, p3

    if-ne v1, v0, :cond_4

    .line 2530
    add-int/lit8 v3, v11, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x3b

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v10

    .line 2531
    const/4 v1, 0x0

    aget v1, v8, v1

    if-nez v1, :cond_1

    move v1, v9

    move v2, v10

    move v3, v11

    .line 2532
    goto :goto_0

    .line 2534
    :cond_1
    const/4 v1, 0x0

    aget v1, v8, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v11, v1

    .line 2536
    add-int/lit8 v1, v11, 0x1

    if-ge v1, v12, :cond_4

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v0, p3

    if-ne v1, v0, :cond_4

    .line 2537
    add-int/lit8 v3, v11, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x3b

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v1

    .line 2538
    const/4 v2, 0x0

    aget v2, v8, v2

    if-nez v2, :cond_2

    move v2, v10

    move v3, v11

    .line 2539
    goto :goto_0

    .line 2541
    :cond_2
    const/4 v2, 0x0

    aget v2, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v11

    move v3, v2

    move v2, v10

    goto :goto_0

    .line 2551
    :cond_3
    const/4 v4, 0x0

    sub-int v3, v3, p2

    aput v3, p4, v4

    .line 2552
    const v3, 0x36ee80

    mul-int/2addr v3, v13

    const v4, 0xea60

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v2

    goto :goto_1

    :cond_4
    move v1, v9

    move v2, v10

    move v3, v11

    goto :goto_0
.end method

.method private parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 3076
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 3077
    const/4 v2, -0x1

    .line 3080
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 3081
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v1, p1, v4, v0}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    .line 3082
    if-eqz v0, :cond_1

    .line 3084
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 3085
    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v6

    add-int/2addr v6, v4

    if-le v6, v2, :cond_3

    .line 3087
    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v1

    add-int/2addr v1, v4

    :goto_1
    move v2, v1

    move-object v1, v0

    .line 3089
    goto :goto_0

    .line 3090
    :cond_0
    if-eqz v1, :cond_1

    .line 3091
    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3092
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3095
    :cond_1
    if-nez v3, :cond_2

    .line 3096
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 3099
    :cond_2
    return-object v3

    :cond_3
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2445
    .line 2451
    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length v8, v7

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_7

    aget-object v3, v7, v6

    .line 2452
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    .line 2453
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2458
    :goto_1
    if-nez v5, :cond_1

    move v0, v4

    move v1, v4

    .line 2504
    :goto_2
    aput v0, p3, v4

    .line 2505
    return v1

    .line 2451
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 2461
    :cond_1
    add-int v2, p2, v5

    .line 2464
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    move v0, v4

    move v1, v4

    .line 2465
    goto :goto_2

    .line 2470
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2471
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 2478
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 2482
    new-array v3, v1, [I

    aput v4, v3, v4

    .line 2483
    const/16 v5, 0x3a

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parseDefaultOffsetFields(Ljava/lang/String;IC[I)I

    move-result v5

    .line 2484
    aget v6, v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v6, v7, :cond_4

    .line 2486
    mul-int/2addr v0, v5

    .line 2487
    aget v1, v3, v4

    add-int/2addr v1, v2

    .line 2501
    :goto_4
    sub-int/2addr v1, p2

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_2

    .line 2473
    :cond_3
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_6

    .line 2474
    const/4 v0, -0x1

    goto :goto_3

    .line 2490
    :cond_4
    new-array v1, v1, [I

    aput v4, v1, v4

    .line 2491
    invoke-direct {p0, p1, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAbuttingOffsetFields(Ljava/lang/String;I[I)I

    move-result v6

    .line 2493
    aget v7, v3, v4

    aget v8, v1, v4

    if-le v7, v8, :cond_5

    .line 2494
    mul-int/2addr v0, v5

    .line 2495
    aget v1, v3, v4

    add-int/2addr v1, v2

    goto :goto_4

    .line 2497
    :cond_5
    mul-int/2addr v0, v6

    .line 2498
    aget v1, v1, v4

    add-int/2addr v1, v2

    goto :goto_4

    :cond_6
    move v0, v4

    move v1, v4

    goto :goto_2

    :cond_7
    move v5, v4

    goto :goto_1
.end method

.method private parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2647
    aput v2, p7, v2

    .line 2652
    const/4 v0, 0x1

    new-array v5, v0, [I

    aput v2, v5, v2

    move v0, p2

    move v1, v2

    move v3, v2

    .line 2653
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    if-ge v1, p4, :cond_0

    .line 2654
    invoke-direct {p0, p1, v0, v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v4

    .line 2655
    if-gez v4, :cond_2

    .line 2668
    :cond_0
    if-lt v1, p3, :cond_1

    if-ge v3, p5, :cond_3

    .line 2669
    :cond_1
    const/4 v3, -0x1

    .line 2676
    :goto_1
    return v3

    .line 2658
    :cond_2
    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v4, v6

    .line 2659
    if-gt v4, p6, :cond_0

    .line 2663
    add-int/lit8 v1, v1, 0x1

    .line 2664
    aget v3, v5, v2

    add-int/2addr v0, v3

    move v3, v4

    .line 2665
    goto :goto_0

    .line 2672
    :cond_3
    sub-int/2addr v0, p2

    aput v0, p7, v2

    goto :goto_1
.end method

.method private parseOffsetFields(Ljava/lang/String;IZ[I)I
    .locals 18

    .prologue
    .line 2313
    const/4 v12, 0x0

    .line 2314
    const/4 v7, 0x0

    .line 2315
    const/4 v11, 0x1

    .line 2317
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2318
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p4, v1

    .line 2322
    :cond_0
    const/4 v8, 0x0

    .line 2324
    const/4 v1, 0x3

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    .line 2325
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v13, v10

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v13, :cond_b

    aget-object v14, v10, v9

    .line 2326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v4, v1, v2

    .line 2327
    sget-boolean v1, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2329
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v12

    .line 2330
    if-lez v12, :cond_3

    .line 2331
    invoke-static {v14}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$300(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 2332
    :goto_1
    const/4 v2, 0x0

    aget v10, v6, v2

    .line 2333
    const/4 v2, 0x1

    aget v9, v6, v2

    .line 2334
    const/4 v2, 0x2

    aget v8, v6, v2

    move v11, v1

    .line 2338
    :goto_2
    if-lez v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    if-eqz v1, :cond_9

    .line 2343
    const/4 v5, 0x0

    .line 2344
    const/4 v13, 0x1

    .line 2345
    sget-object v15, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v14, v1

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_a

    aget-object v17, v15, v14

    .line 2346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v4, v1, v2

    .line 2347
    sget-boolean v1, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-nez v4, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2331
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 2325
    :cond_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    .line 2350
    :cond_4
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v5

    .line 2351
    if-lez v5, :cond_7

    .line 2352
    invoke-static/range {v17 .. v17}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$300(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_4
    move v4, v1

    .line 2356
    :goto_5
    if-le v5, v12, :cond_9

    .line 2360
    const/4 v1, 0x0

    aget v3, v6, v1

    .line 2361
    const/4 v1, 0x1

    aget v2, v6, v1

    .line 2362
    const/4 v1, 0x2

    aget v1, v6, v1

    .line 2366
    :goto_6
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    array-length v6, v0

    const/4 v8, 0x1

    if-lt v6, v8, :cond_5

    .line 2367
    const/4 v6, 0x0

    aput v5, p4, v6

    .line 2370
    :cond_5
    if-lez v5, :cond_8

    .line 2371
    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/2addr v1, v4

    .line 2374
    :goto_7
    return v1

    .line 2352
    :cond_6
    const/4 v1, -0x1

    goto :goto_4

    .line 2345
    :cond_7
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_3

    :cond_8
    move v1, v7

    goto :goto_7

    :cond_9
    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    goto :goto_6

    :cond_a
    move v4, v13

    goto :goto_5

    :cond_b
    move v9, v8

    move v10, v8

    goto :goto_2

    .line 2324
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I
    .locals 14

    .prologue
    .line 2388
    sget-boolean v1, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2389
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, p5, v3

    aput v4, p5, v2

    aput v4, p5, v1

    .line 2391
    const/4 v13, 0x0

    .line 2393
    const/4 v2, 0x0

    .line 2395
    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v8, v1

    .line 2396
    const/4 v1, 0x0

    move v9, v1

    move/from16 v3, p2

    move v10, v2

    move v11, v2

    move v12, v2

    :goto_0
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v9, v1, :cond_b

    .line 2397
    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2398
    aget-object v4, p3, v9

    check-cast v4, Ljava/lang/String;

    .line 2399
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 2400
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2401
    const/4 v1, 0x1

    .line 2426
    :goto_1
    if-eqz v1, :cond_a

    .line 2427
    const/4 v1, 0x0

    .line 2434
    :goto_2
    return v1

    .line 2404
    :cond_2
    add-int/2addr v3, v6

    move v2, v10

    move v4, v11

    move v5, v12

    .line 2396
    :goto_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v10, v2

    move v11, v4

    move v12, v5

    goto :goto_0

    .line 2406
    :cond_3
    sget-boolean v1, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    aget-object v1, p3, v9

    instance-of v1, v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2407
    :cond_4
    aget-object v1, p3, v9

    check-cast v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 2408
    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v1

    .line 2409
    const/16 v2, 0x48

    if-ne v1, v2, :cond_7

    .line 2410
    if-eqz p4, :cond_6

    const/4 v5, 0x1

    .line 2411
    :goto_4
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x17

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v12

    .line 2418
    :cond_5
    :goto_5
    const/4 v1, 0x0

    aget v1, v8, v1

    if-nez v1, :cond_9

    .line 2419
    const/4 v1, 0x1

    .line 2420
    goto :goto_1

    .line 2410
    :cond_6
    const/4 v5, 0x2

    goto :goto_4

    .line 2412
    :cond_7
    const/16 v2, 0x6d

    if-ne v1, v2, :cond_8

    .line 2413
    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x3b

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v11

    goto :goto_5

    .line 2414
    :cond_8
    const/16 v2, 0x73

    if-ne v1, v2, :cond_5

    .line 2415
    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x3b

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v10

    goto :goto_5

    .line 2422
    :cond_9
    const/4 v1, 0x0

    aget v1, v8, v1

    add-int/2addr v3, v1

    move v2, v10

    move v4, v11

    move v5, v12

    goto :goto_3

    .line 2430
    :cond_a
    const/4 v1, 0x0

    aput v12, p5, v1

    .line 2431
    const/4 v1, 0x1

    aput v11, p5, v1

    .line 2432
    const/4 v1, 0x2

    aput v10, p5, v1

    .line 2434
    sub-int v1, v3, p2

    goto :goto_2

    :cond_b
    move v1, v13

    goto :goto_1
.end method

.method private static parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 2751
    if-eqz p3, :cond_0

    .line 2752
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2754
    :cond_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 2755
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 2756
    invoke-virtual {p1, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move v0, v5

    .line 2800
    :goto_0
    return v0

    .line 2760
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2761
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const-string/jumbo v4, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2763
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    move v0, v5

    .line 2764
    goto :goto_0

    .line 2768
    :cond_2
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 2777
    :goto_1
    new-instance v7, Ljava/text/ParsePosition;

    add-int/lit8 v3, v6, 0x1

    invoke-direct {v7, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2778
    const/16 v3, 0x3a

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, v7, v3, v4, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;)I

    move-result v4

    .line 2779
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ne v3, v2, :cond_7

    if-nez p2, :cond_7

    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int/2addr v3, v6

    const/4 v8, 0x3

    if-gt v3, v8, :cond_7

    .line 2783
    new-instance v8, Ljava/text/ParsePosition;

    add-int/lit8 v3, v6, 0x1

    invoke-direct {v8, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2784
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, v8, v3, v9, v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Z)I

    move-result v3

    .line 2785
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    if-ne v9, v2, :cond_7

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-le v9, v10, :cond_7

    .line 2787
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2791
    :goto_2
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 2792
    invoke-virtual {p1, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move v0, v5

    .line 2793
    goto :goto_0

    .line 2770
    :cond_3
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_4

    move v0, v2

    .line 2771
    goto :goto_1

    .line 2774
    :cond_4
    invoke-virtual {p1, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move v0, v5

    .line 2775
    goto :goto_0

    .line 2796
    :cond_5
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2797
    if-eqz p3, :cond_6

    .line 2798
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2800
    :cond_6
    mul-int/2addr v0, v3

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto :goto_2
.end method

.method private parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2202
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 2204
    new-array v3, v1, [I

    aput v4, v3, v4

    .line 2206
    if-eqz p4, :cond_0

    .line 2207
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2210
    :cond_0
    invoke-direct {p0, p1, v2, p3, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I

    move-result v0

    .line 2220
    aget v5, v3, v4

    if-lez v5, :cond_2

    .line 2221
    if-eqz p4, :cond_1

    .line 2222
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2224
    :cond_1
    aget v1, v3, v4

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move v4, v0

    .line 2254
    :goto_0
    return v4

    .line 2229
    :cond_2
    invoke-direct {p0, p1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I

    move-result v0

    .line 2230
    aget v5, v3, v4

    if-lez v5, :cond_4

    .line 2231
    if-eqz p4, :cond_3

    .line 2232
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2234
    :cond_3
    aget v1, v3, v4

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move v4, v0

    .line 2235
    goto :goto_0

    .line 2239
    :cond_4
    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2240
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 2245
    :cond_5
    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length v8, v7

    move v6, v4

    :goto_1
    if-ge v6, v8, :cond_7

    aget-object v3, v7, v6

    .line 2246
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2247
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 2245
    :cond_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 2253
    :cond_7
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_0
.end method

.method private parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2267
    .line 2273
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2274
    if-lez v5, :cond_0

    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v4

    move v2, v4

    move v0, p2

    .line 2299
    :goto_0
    if-eqz v1, :cond_3

    sub-int/2addr v0, p2

    :goto_1
    aput v0, p4, v4

    .line 2300
    return v2

    .line 2278
    :cond_0
    add-int v2, p2, v5

    .line 2281
    new-array v0, v1, [I

    .line 2282
    invoke-direct {p0, p1, v2, v4, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFields(Ljava/lang/String;IZ[I)I

    move-result v6

    .line 2283
    aget v3, v0, v4

    if-nez v3, :cond_1

    move v1, v4

    move v0, v2

    move v2, v6

    .line 2285
    goto :goto_0

    .line 2287
    :cond_1
    aget v0, v0, v4

    add-int/2addr v2, v0

    .line 2290
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2291
    if-lez v5, :cond_2

    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v4

    move v0, v2

    move v2, v6

    .line 2293
    goto :goto_0

    .line 2295
    :cond_2
    add-int/2addr v2, v5

    move v0, v2

    move v2, v6

    .line 2296
    goto :goto_0

    :cond_3
    move v0, v4

    .line 2299
    goto :goto_1
.end method

.method private static parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 13

    .prologue
    const/16 v12, 0x27

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2015
    .line 2017
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2022
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2023
    new-instance v10, Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    move v2, v3

    move v4, v1

    move v5, v1

    move v6, v1

    .line 2025
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_12

    .line 2026
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2027
    if-ne v7, v12, :cond_5

    .line 2028
    if-eqz v6, :cond_0

    .line 2029
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v4

    move v7, v1

    .line 2043
    :goto_1
    if-nez v5, :cond_4

    move v4, v3

    :goto_2
    move v5, v4

    move v4, v6

    move v6, v7

    .line 2025
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2033
    :cond_0
    if-eqz v4, :cond_11

    .line 2034
    invoke-static {v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2035
    new-instance v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v1

    move v7, v3

    .line 2040
    goto :goto_1

    :cond_1
    move v0, v3

    .line 2089
    :goto_4
    if-nez v0, :cond_10

    .line 2090
    if-nez v4, :cond_e

    .line 2091
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 2092
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2093
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v0

    .line 2104
    :cond_2
    :goto_5
    if-nez v3, :cond_3

    invoke-virtual {v10}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_f

    .line 2105
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad localized GMT offset pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v4, v1

    .line 2043
    goto :goto_2

    .line 2046
    :cond_5
    if-eqz v5, :cond_6

    .line 2047
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v1

    goto :goto_3

    .line 2049
    :cond_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 2050
    if-ltz v6, :cond_b

    .line 2052
    if-ne v7, v4, :cond_7

    .line 2053
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    goto :goto_3

    .line 2055
    :cond_7
    if-nez v4, :cond_9

    .line 2056
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 2057
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2058
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2070
    :cond_8
    :goto_6
    invoke-virtual {v10, v6}, Ljava/util/BitSet;->set(I)V

    move v2, v3

    move v4, v7

    move v6, v1

    goto :goto_3

    .line 2061
    :cond_9
    invoke-static {v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2062
    new-instance v11, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move v0, v3

    .line 2065
    goto :goto_4

    .line 2074
    :cond_b
    if-eqz v4, :cond_c

    .line 2075
    invoke-static {v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2076
    new-instance v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v1

    .line 2083
    :cond_c
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v1

    goto/16 :goto_3

    :cond_d
    move v0, v3

    .line 2079
    goto/16 :goto_4

    .line 2096
    :cond_e
    invoke-static {v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2097
    new-instance v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v1, v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v0

    goto/16 :goto_5

    .line 2108
    :cond_f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_10
    move v3, v0

    goto/16 :goto_5

    :cond_11
    move v6, v4

    move v7, v3

    goto/16 :goto_1

    :cond_12
    move v0, v1

    goto/16 :goto_4
.end method

.method private static parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 3037
    .line 3038
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v0, :cond_3

    .line 3039
    const-class v2, Lcom/ibm/icu/text/TimeZoneFormat;

    monitor-enter v2

    .line 3040
    :try_start_0
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v0, :cond_2

    .line 3042
    new-instance v3, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 3043
    sget-object v0, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 3044
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3045
    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getShortID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3046
    if-eqz v5, :cond_0

    .line 3047
    invoke-virtual {v3, v5, v0}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_0

    .line 3054
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3051
    :cond_1
    :try_start_1
    const-string/jumbo v0, "unk"

    const-string/jumbo v4, "Etc/Unknown"

    invoke-virtual {v3, v0, v4}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    .line 3052
    sput-object v3, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    .line 3054
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3057
    :cond_3
    new-array v2, v7, [I

    aput v6, v2, v6

    .line 3058
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v0, p0, v3, v2}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object v0

    .line 3059
    if-eqz v0, :cond_4

    .line 3060
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3061
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    aget v2, v2, v6

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3066
    :goto_1
    return-object v0

    .line 3063
    :cond_4
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v0, v1

    goto :goto_1
.end method

.method private parseSingleLocalizedDigit(Ljava/lang/String;I[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2689
    const/4 v2, -0x1

    .line 2690
    aput v1, p3, v1

    .line 2691
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 2692
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    move v0, v1

    .line 2695
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 2696
    iget-object v4, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2702
    :goto_1
    if-gez v0, :cond_0

    .line 2703
    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v0

    .line 2706
    :cond_0
    if-ltz v0, :cond_1

    .line 2707
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    aput v2, p3, v1

    .line 2710
    :cond_1
    :goto_2
    return v0

    .line 2695
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private static parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2999
    const/4 v0, 0x0

    .line 3000
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v1, :cond_2

    .line 3001
    const-class v3, Lcom/ibm/icu/text/TimeZoneFormat;

    monitor-enter v3

    .line 3002
    :try_start_0
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v1, :cond_1

    .line 3004
    new-instance v4, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 3005
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v5

    .line 3006
    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v5, v1

    .line 3007
    invoke-virtual {v4, v7, v7}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    .line 3006
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3009
    :cond_0
    sput-object v4, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    .line 3011
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3014
    :cond_2
    new-array v1, v8, [I

    aput v2, v1, v2

    .line 3015
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v3, p0, v4, v1}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object v3

    .line 3016
    if-eqz v3, :cond_3

    .line 3017
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3018
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    aget v1, v1, v2

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3027
    :goto_1
    return-object v0

    .line 3011
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3025
    :cond_3
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_1
.end method

.method private static toCodePoints(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2722
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 2723
    new-array v3, v2, [Ljava/lang/String;

    move v1, v0

    .line 2725
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2726
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 2727
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 2728
    add-int v5, v0, v4

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 2729
    add-int/2addr v0, v4

    .line 2725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2731
    :cond_0
    return-object v3
.end method

.method private static truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2139
    const-string/jumbo v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2140
    if-gez v0, :cond_0

    .line 2141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Bad time zone hour pattern data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2143
    :cond_0
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2144
    if-ltz v1, :cond_1

    .line 2145
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2149
    :goto_0
    return-object v0

    .line 2147
    :cond_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2148
    if-ltz v0, :cond_2

    .line 2149
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2151
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Bad time zone hour pattern data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x27

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1908
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1929
    :goto_0
    return-object p0

    .line 1913
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    .line 1914
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 1915
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1916
    if-ne v6, v7, :cond_3

    .line 1917
    if-eqz v3, :cond_1

    .line 1918
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v1

    .line 1923
    :goto_2
    if-nez v2, :cond_2

    move v2, v4

    .line 1914
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 1921
    goto :goto_2

    :cond_2
    move v2, v1

    .line 1923
    goto :goto_3

    .line 1926
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v1

    goto :goto_3

    .line 1929
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public cloneAsThawed()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 2

    .prologue
    .line 3280
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat;

    .line 3281
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    .line 3282
    return-object v0
.end method

.method public final format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 860
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Lcom/ibm/icu/util/TimeZone;",
            "J",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 881
    const/4 v0, 0x0

    .line 883
    if-eqz p5, :cond_0

    .line 884
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    iput-object v1, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 889
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move v1, v7

    .line 927
    :goto_0
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 928
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 929
    invoke-virtual {p2, p3, p4, v7, v2}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 930
    aget v1, v2, v7

    aget v3, v2, v8

    add-int/2addr v1, v3

    .line 932
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 989
    :pswitch_0
    sget-boolean v1, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 891
    :pswitch_1
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    invoke-static {p2}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v7

    .line 892
    goto :goto_0

    .line 894
    :pswitch_2
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getDisplayName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    move v1, v7

    .line 895
    goto :goto_0

    .line 897
    :pswitch_3
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getDisplayName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    move v1, v7

    .line 898
    goto :goto_0

    .line 900
    :pswitch_4
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-object v0, p0

    move-object v1, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/TimeZoneFormat;->formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    move v1, v7

    .line 901
    goto :goto_0

    .line 903
    :pswitch_5
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-object v0, p0

    move-object v1, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/TimeZoneFormat;->formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    move v1, v7

    .line 904
    goto :goto_0

    .line 907
    :pswitch_6
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    move v1, v8

    .line 909
    goto :goto_0

    .line 911
    :pswitch_7
    invoke-static {p2}, Lcom/ibm/icu/impl/ZoneMeta;->getShortID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 912
    if-nez v0, :cond_1

    .line 913
    const-string/jumbo v0, "unk"

    :cond_1
    move v1, v8

    .line 916
    goto :goto_0

    .line 918
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatExemplarLocation(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    move v1, v8

    .line 920
    goto :goto_0

    .line 937
    :pswitch_9
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v1

    .line 993
    :goto_1
    if-eqz p5, :cond_2

    .line 994
    aget v0, v2, v8

    if-eqz v0, :cond_4

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    :goto_2
    iput-object v0, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_2
    move-object v0, v1

    .line 998
    :cond_3
    sget-boolean v1, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 943
    :pswitch_a
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 947
    :pswitch_b
    invoke-virtual {p0, v1, v8, v8, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 951
    :pswitch_c
    invoke-virtual {p0, v1, v7, v8, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 955
    :pswitch_d
    invoke-virtual {p0, v1, v8, v7, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 959
    :pswitch_e
    invoke-virtual {p0, v1, v7, v7, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 963
    :pswitch_f
    invoke-virtual {p0, v1, v8, v7, v7}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 967
    :pswitch_10
    invoke-virtual {p0, v1, v7, v7, v7}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 971
    :pswitch_11
    invoke-virtual {p0, v1, v8, v7, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 975
    :pswitch_12
    invoke-virtual {p0, v1, v7, v7, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 979
    :pswitch_13
    invoke-virtual {p0, v1, v8, v7, v7}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 983
    :pswitch_14
    invoke-virtual {p0, v1, v7, v7, v7}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 994
    :cond_4
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_2

    .line 1000
    :cond_5
    return-object v0

    :cond_6
    move-object v1, v0

    goto :goto_1

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 928
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 932
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 1577
    .line 1578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1580
    instance-of v2, p1, Lcom/ibm/icu/util/TimeZone;

    if-eqz v2, :cond_0

    .line 1581
    check-cast p1, Lcom/ibm/icu/util/TimeZone;

    .line 1589
    :goto_0
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1582
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1583
    check-cast v0, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 1584
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    move-object p1, v2

    goto :goto_0

    .line 1586
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot format given Object ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") as a time zone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1590
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    .line 1591
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1593
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    if-eq v1, v2, :cond_3

    .line 1594
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_4

    .line 1595
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1596
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1598
    :cond_4
    return-object p2
.end method

.method public final formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 771
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 790
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatOffsetLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatOffsetShortLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 3

    .prologue
    .line 1608
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1609
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1610
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1613
    new-instance v1, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1614
    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    invoke-virtual {v1, v0, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 1616
    invoke-virtual {v1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    .prologue
    .line 3270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    .line 3271
    return-object p0
.end method

.method public getDefaultParseOptions()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 752
    :goto_0
    return-object v0

    .line 747
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_1

    .line 748
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_1
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_2

    .line 750
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 752
    :cond_2
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getGMTOffsetDigits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 656
    iget-object v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 657
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    .prologue
    .line 3261
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    return v0
.end method

.method public parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Lcom/ibm/icu/util/TimeZone;"
        }
    .end annotation

    .prologue
    .line 1530
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;",
            ">;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Lcom/ibm/icu/util/TimeZone;"
        }
    .end annotation

    .prologue
    .line 1072
    if-nez p5, :cond_4

    .line 1073
    new-instance p5, Lcom/ibm/icu/util/Output;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, p5

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1078
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    .line 1079
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 1083
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 1085
    :goto_1
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_6

    :cond_1
    const/4 v3, 0x1

    .line 1088
    :goto_2
    const/4 v7, 0x0

    .line 1089
    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v10}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1091
    const v5, 0x7fffffff

    .line 1092
    const/4 v4, -0x1

    .line 1095
    if-nez v2, :cond_2

    if-eqz v3, :cond_36

    .line 1096
    :cond_2
    new-instance v2, Lcom/ibm/icu/util/Output;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1097
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v3, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v3

    .line 1098
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_35

    .line 1103
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-eq v4, v11, :cond_3

    iget-object v2, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1104
    :cond_3
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1105
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 1507
    :goto_3
    return-object v2

    .line 1075
    :cond_4
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, p5

    iput-object v2, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1083
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1085
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 1108
    :cond_7
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 1113
    :goto_4
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v4, v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v5, v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v4, v5

    or-int/2addr v7, v4

    move v6, v2

    move v8, v3

    .line 1116
    :goto_5
    if-nez p4, :cond_9

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v3, v2

    .line 1121
    :goto_6
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :cond_8
    move v2, v7

    .line 1304
    :goto_7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    or-int v13, v2, v4

    .line 1306
    if-le v6, v10, :cond_16

    .line 1313
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_15

    const v2, 0x7fffffff

    if-ne v8, v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1117
    :cond_9
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    .line 1118
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v3, v2

    goto :goto_6

    .line 1124
    :pswitch_0
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1125
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1127
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v2

    .line 1128
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 1129
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1130
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto :goto_3

    .line 1134
    :cond_a
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v2, v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v2, v7

    .line 1135
    goto :goto_7

    .line 1139
    :pswitch_1
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1140
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1142
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v2

    .line 1143
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 1144
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1145
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1149
    :cond_b
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v2, v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v2, v7

    .line 1150
    goto :goto_7

    .line 1159
    :pswitch_2
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1160
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1162
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v2

    .line 1163
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 1164
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1165
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1176
    :pswitch_3
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1177
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1180
    new-instance v2, Lcom/ibm/icu/util/Output;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1181
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v4

    .line 1182
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_8

    iget-object v2, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1183
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1184
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1194
    :pswitch_4
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 1195
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    move-object v4, v2

    .line 1200
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v10, v4}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v2

    .line 1201
    if-eqz v2, :cond_f

    .line 1202
    const/4 v5, 0x0

    .line 1203
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1204
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v13

    add-int/2addr v13, v10

    if-le v13, v6, :cond_34

    .line 1206
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    add-int/2addr v5, v10

    :goto_a
    move v6, v5

    move-object v5, v2

    .line 1208
    goto :goto_9

    .line 1197
    :cond_c
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1198
    :cond_d
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    move-object v4, v2

    goto :goto_8

    .line 1209
    :cond_e
    if-eqz v5, :cond_f

    .line 1210
    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v2

    move-object/from16 v0, p5

    iput-object v2, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1211
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1212
    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    :cond_f
    move v5, v6

    .line 1216
    if-eqz v3, :cond_33

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_33

    .line 1217
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_10

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v4, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1218
    :cond_10
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_11

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v4, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1221
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v10, v4}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v2

    .line 1222
    if-eqz v2, :cond_13

    .line 1223
    const/4 v4, 0x0

    .line 1224
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1225
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v9

    add-int/2addr v9, v10

    if-le v9, v5, :cond_32

    .line 1227
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int/2addr v4, v10

    :goto_c
    move v5, v4

    move-object v4, v2

    .line 1229
    goto :goto_b

    .line 1230
    :cond_12
    if-eqz v4, :cond_13

    .line 1231
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v2

    move-object/from16 v0, p5

    iput-object v2, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1232
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1233
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    :cond_13
    move v6, v5

    move v2, v7

    .line 1236
    goto/16 :goto_7

    .line 1243
    :pswitch_5
    const/4 v2, 0x0

    .line 1244
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 1256
    sget-boolean v4, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v4, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1246
    :pswitch_6
    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 1259
    :cond_14
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v2

    .line 1260
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v4

    add-int/2addr v4, v10

    if-le v4, v6, :cond_8

    .line 1261
    invoke-virtual {v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v3

    move-object/from16 v0, p5

    iput-object v3, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1262
    invoke-virtual {v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v3

    add-int/2addr v3, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1263
    invoke-virtual {v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1249
    :pswitch_7
    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    goto :goto_d

    .line 1252
    :pswitch_8
    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    goto :goto_d

    .line 1269
    :pswitch_9
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1270
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1272
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 1273
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 1274
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1275
    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1281
    :pswitch_a
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1282
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1284
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 1286
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1287
    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1293
    :pswitch_b
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1294
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1296
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 1297
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 1298
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1299
    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1314
    :cond_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1315
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1321
    :cond_16
    const/4 v7, 0x0

    .line 1322
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1323
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_17

    if-ltz v6, :cond_17

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1324
    :cond_17
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_18

    const v2, 0x7fffffff

    if-eq v8, v2, :cond_18

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1327
    :cond_18
    if-ge v6, v11, :cond_1c

    and-int/lit16 v2, v13, 0x80

    if-eqz v2, :cond_19

    and-int/lit16 v2, v13, 0x100

    if-nez v2, :cond_1c

    .line 1329
    :cond_19
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1330
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1332
    new-instance v2, Lcom/ibm/icu/util/Output;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1333
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v5, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v5

    .line 1334
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    const/4 v14, -0x1

    if-ne v9, v14, :cond_1c

    .line 1335
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    if-eq v9, v11, :cond_1a

    iget-object v2, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1336
    :cond_1a
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1337
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1342
    :cond_1b
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ge v6, v2, :cond_1c

    .line 1344
    const/4 v7, 0x0

    .line 1345
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1346
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 1347
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    add-int/lit8 v2, v10, 0x1

    if-eq v8, v2, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1c
    move v5, v8

    move v8, v6

    move-object v6, v4

    .line 1354
    :cond_1d
    if-ge v8, v11, :cond_31

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v2, v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v2, v13

    if-nez v2, :cond_31

    .line 1356
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1357
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1359
    new-instance v2, Lcom/ibm/icu/util/Output;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1360
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v4, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v4

    .line 1361
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    const/4 v14, -0x1

    if-ne v9, v14, :cond_31

    .line 1362
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    if-eq v9, v11, :cond_1e

    iget-object v2, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1363
    :cond_1e
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1364
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1367
    :cond_1f
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ge v8, v2, :cond_31

    .line 1369
    const/4 v7, 0x0

    .line 1370
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1371
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 1376
    :goto_e
    if-ge v8, v11, :cond_30

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v2, v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v2, v13

    if-nez v2, :cond_30

    .line 1378
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1379
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1381
    new-instance v2, Lcom/ibm/icu/util/Output;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1382
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v5, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v9

    .line 1383
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    const/4 v14, -0x1

    if-ne v5, v14, :cond_30

    .line 1384
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-eq v5, v11, :cond_20

    iget-object v2, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1385
    :cond_20
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1386
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto/16 :goto_3

    .line 1389
    :cond_21
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ge v8, v2, :cond_30

    .line 1391
    const/4 v7, 0x0

    .line 1392
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1393
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 1407
    :goto_f
    if-nez p4, :cond_22

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v2, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1411
    :goto_10
    if-eqz v2, :cond_2f

    .line 1413
    if-ge v8, v11, :cond_2d

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v10, v4}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v2

    .line 1415
    const/4 v5, 0x0

    .line 1416
    const/4 v4, -0x1

    .line 1417
    if-eqz v2, :cond_23

    .line 1418
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1419
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v15

    add-int/2addr v15, v10

    if-le v15, v4, :cond_2e

    .line 1421
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int/2addr v4, v10

    move/from16 v16, v4

    move-object v4, v2

    move/from16 v2, v16

    :goto_12
    move-object v5, v4

    move v4, v2

    .line 1423
    goto :goto_11

    .line 1408
    :cond_22
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    .line 1409
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_10

    :cond_23
    move v2, v4

    .line 1425
    if-ge v8, v2, :cond_2d

    .line 1427
    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1428
    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v6

    .line 1429
    const v9, 0x7fffffff

    move-object v5, v6

    move v8, v9

    move-object v6, v7

    move v7, v2

    .line 1432
    :goto_13
    if-eqz v3, :cond_2b

    if-ge v7, v11, :cond_2b

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v2, v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v2, v13

    if-nez v2, :cond_2b

    .line 1434
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v10, v3}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v2

    .line 1435
    const/4 v4, 0x0

    .line 1436
    const/4 v3, -0x1

    .line 1437
    if-eqz v2, :cond_2b

    .line 1438
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1439
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v14

    add-int/2addr v14, v10

    if-le v14, v3, :cond_2c

    .line 1441
    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v3

    add-int/2addr v3, v10

    move/from16 v16, v3

    move-object v3, v2

    move/from16 v2, v16

    :goto_15
    move-object v4, v3

    move v3, v2

    .line 1443
    goto :goto_14

    .line 1444
    :cond_24
    if-ge v7, v3, :cond_2b

    .line 1446
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1447
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v2

    .line 1448
    const v6, 0x7fffffff

    move-object/from16 v16, v5

    move v5, v3

    move-object/from16 v3, v16

    .line 1454
    :goto_16
    if-ge v5, v11, :cond_25

    .line 1455
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v4

    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v7}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v4

    .line 1456
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v7

    add-int/2addr v7, v10

    if-ge v5, v7, :cond_25

    .line 1457
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v2

    add-int v5, v10, v2

    .line 1458
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v3

    .line 1459
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v2

    .line 1460
    const v6, 0x7fffffff

    .line 1465
    :cond_25
    if-ge v5, v11, :cond_2a

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v4, v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v4, v13

    if-nez v4, :cond_2a

    .line 1466
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1467
    const/4 v4, -0x1

    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1469
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v4

    .line 1470
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2a

    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-ge v5, v7, :cond_2a

    .line 1471
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 1473
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1474
    const v6, 0x7fffffff

    .line 1478
    :goto_17
    if-ge v5, v11, :cond_29

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v3, v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v3, v13

    if-nez v3, :cond_29

    .line 1479
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1480
    const/4 v3, -0x1

    invoke-virtual {v12, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1482
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    .line 1483
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_29

    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-ge v5, v7, :cond_29

    .line 1484
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 1486
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1487
    const v5, 0x7fffffff

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 1492
    :goto_18
    if-le v4, v10, :cond_28

    .line 1495
    if-eqz v2, :cond_26

    .line 1496
    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 1501
    :goto_19
    move-object/from16 v0, p5

    iput-object v3, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1502
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    goto/16 :goto_3

    .line 1498
    :cond_26
    sget-boolean v2, Lcom/ibm/icu/text/TimeZoneFormat;->$assertionsDisabled:Z

    if-nez v2, :cond_27

    const v2, 0x7fffffff

    if-ne v5, v2, :cond_27

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1499
    :cond_27
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    goto :goto_19

    .line 1506
    :cond_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1507
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_29
    move-object v3, v2

    move-object v2, v4

    move v4, v5

    move v5, v6

    goto :goto_18

    :cond_2a
    move-object v4, v3

    goto :goto_17

    :cond_2b
    move-object v2, v5

    move-object v3, v6

    move v5, v7

    move v6, v8

    goto/16 :goto_16

    :cond_2c
    move v2, v3

    move-object v3, v4

    goto/16 :goto_15

    :cond_2d
    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_13

    :cond_2e
    move v2, v4

    move-object v4, v5

    goto/16 :goto_12

    :cond_2f
    move-object v3, v6

    move-object v2, v7

    move v4, v8

    move v5, v9

    goto :goto_18

    :cond_30
    move v9, v4

    goto/16 :goto_f

    :cond_31
    move v4, v5

    goto/16 :goto_e

    :cond_32
    move-object v2, v4

    move v4, v5

    goto/16 :goto_c

    :cond_33
    move v6, v5

    move v2, v7

    goto/16 :goto_7

    :cond_34
    move-object v2, v5

    move v5, v6

    goto/16 :goto_a

    :cond_35
    move v2, v4

    move v3, v5

    goto/16 :goto_4

    :cond_36
    move v6, v4

    move v8, v5

    goto/16 :goto_5

    .line 1121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1244
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeZone;
    .locals 6

    .prologue
    .line 1547
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1626
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    .prologue
    .line 1019
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    .prologue
    .line 1036
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    .prologue
    .line 1053
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public setGMTOffsetDigits(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 3

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    if-nez p1, :cond_1

    .line 677
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null GMT offset digits"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 680
    array-length v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Length of digits must be 10"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_2
    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 684
    return-object p0
.end method
