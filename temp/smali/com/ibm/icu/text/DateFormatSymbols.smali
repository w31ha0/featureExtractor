.class public Lcom/ibm/icu/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CALENDAR_CLASSES:[[Ljava/lang/String;

.field private static final DAY_PERIOD_KEYS:[Ljava/lang/String;

.field private static DFSCACHE:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateFormatSymbols;",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field abbreviatedDayPeriods:[Ljava/lang/String;

.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field ampms:[Ljava/lang/String;

.field ampmsNarrow:[Ljava/lang/String;

.field capitalization:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            "[Z>;"
        }
    .end annotation
.end field

.field eraNames:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field leapMonthPatterns:[Ljava/lang/String;

.field localPatternChars:Ljava/lang/String;

.field months:[Ljava/lang/String;

.field narrowDayPeriods:[Ljava/lang/String;

.field narrowEras:[Ljava/lang/String;

.field narrowMonths:[Ljava/lang/String;

.field narrowWeekdays:[Ljava/lang/String;

.field quarters:[Ljava/lang/String;

.field private requestedLocale:Lcom/ibm/icu/util/ULocale;

.field shortMonths:[Ljava/lang/String;

.field shortQuarters:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field shortYearNames:[Ljava/lang/String;

.field shortZodiacNames:[Ljava/lang/String;

.field shorterWeekdays:[Ljava/lang/String;

.field standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

.field standaloneMonths:[Ljava/lang/String;

.field standaloneNarrowDayPeriods:[Ljava/lang/String;

.field standaloneNarrowMonths:[Ljava/lang/String;

.field standaloneNarrowWeekdays:[Ljava/lang/String;

.field standaloneQuarters:[Ljava/lang/String;

.field standaloneShortMonths:[Ljava/lang/String;

.field standaloneShortQuarters:[Ljava/lang/String;

.field standaloneShortWeekdays:[Ljava/lang/String;

.field standaloneShorterWeekdays:[Ljava/lang/String;

.field standaloneWeekdays:[Ljava/lang/String;

.field standaloneWideDayPeriods:[Ljava/lang/String;

.field private timeSeparator:Ljava/lang/String;

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field weekdays:[Ljava/lang/String;

.field wideDayPeriods:[Ljava/lang/String;

.field private zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 658
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "GregorianCalendar"

    aput-object v2, v1, v4

    const-string/jumbo v2, "gregorian"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "JapaneseCalendar"

    aput-object v2, v1, v4

    const-string/jumbo v2, "japanese"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "BuddhistCalendar"

    aput-object v2, v1, v4

    const-string/jumbo v2, "buddhist"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "TaiwanCalendar"

    aput-object v2, v1, v4

    const-string/jumbo v2, "roc"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "PersianCalendar"

    aput-object v2, v1, v4

    const-string/jumbo v2, "persian"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "IslamicCalendar"

    aput-object v3, v2, v4

    const-string/jumbo v3, "islamic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "HebrewCalendar"

    aput-object v3, v2, v4

    const-string/jumbo v3, "hebrew"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ChineseCalendar"

    aput-object v3, v2, v4

    const-string/jumbo v3, "chinese"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "IndianCalendar"

    aput-object v3, v2, v4

    const-string/jumbo v3, "indian"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "CopticCalendar"

    aput-object v3, v2, v4

    const-string/jumbo v3, "coptic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "EthiopicCalendar"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ethiopic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    .line 698
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    .line 699
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "month-format-except-narrow"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "month-standalone-except-narrow"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "month-narrow"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "day-format-except-narrow"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "day-standalone-except-narrow"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "day-narrow"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "era-name"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "era-abbr"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "era-narrow"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "zone-long"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "zone-short"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "metazone-long"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "metazone-short"

    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateFormatSymbols$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DFSCACHE:Lcom/ibm/icu/impl/CacheBase;

    .line 2055
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    .line 2057
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const-string/jumbo v1, "monthPatterns/format/wide"

    aput-object v1, v0, v4

    .line 2058
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const-string/jumbo v1, "monthPatterns/format/abbreviated"

    aput-object v1, v0, v5

    .line 2059
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const-string/jumbo v1, "monthPatterns/format/narrow"

    aput-object v1, v0, v6

    .line 2060
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const-string/jumbo v1, "monthPatterns/stand-alone/wide"

    aput-object v1, v0, v7

    .line 2061
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const-string/jumbo v1, "monthPatterns/stand-alone/abbreviated"

    aput-object v1, v0, v8

    .line 2062
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string/jumbo v2, "monthPatterns/stand-alone/narrow"

    aput-object v2, v0, v1

    .line 2063
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string/jumbo v2, "monthPatterns/numeric/all"

    aput-object v2, v0, v1

    .line 2089
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "midnight"

    aput-object v1, v0, v4

    const-string/jumbo v1, "noon"

    aput-object v1, v0, v5

    const-string/jumbo v1, "morning1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "afternoon1"

    aput-object v1, v0, v7

    const-string/jumbo v1, "evening1"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string/jumbo v2, "night1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "morning2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "afternoon2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "evening2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "night2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 353
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 360
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 368
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 386
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 394
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 403
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 412
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 421
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 441
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 450
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 459
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 469
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 488
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 496
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 504
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 510
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 517
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 524
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 531
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 538
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 545
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 554
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 563
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    move-object v0, v1

    .line 599
    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 617
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 623
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 629
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 635
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 641
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 647
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 653
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 720
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2171
    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    .line 2172
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 353
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 360
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 368
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 386
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 394
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 403
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 412
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 421
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 441
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 450
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 459
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 469
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 488
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 496
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 504
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 510
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 517
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 524
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 531
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 538
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 545
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 554
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 563
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    move-object v0, v1

    .line 599
    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 617
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 623
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 629
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 635
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 641
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 647
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 653
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 720
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 256
    invoke-static {p1}, Lcom/ibm/icu/impl/CalendarUtil;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 353
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 360
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 368
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 386
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 394
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 403
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 412
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 421
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 441
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 450
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 459
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 469
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 488
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 496
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 504
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 510
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 517
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 524
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 531
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 538
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 545
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 554
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 563
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    move-object v0, v1

    .line 599
    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 617
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 623
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 629
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 635
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 641
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 647
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 653
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 720
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 1837
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 1838
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols$1;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method private static final arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2067
    if-ne p0, p1, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return v1

    .line 2070
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v0

    .line 2071
    goto :goto_0

    .line 2073
    :cond_3
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_5

    move v1, v0

    .line 2074
    goto :goto_0

    .line 2077
    :cond_4
    add-int/lit8 v0, v0, 0x1

    :cond_5
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2078
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 2079
    if-nez v1, :cond_4

    goto :goto_0
.end method

.method private loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2098
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    .line 2099
    if-eqz p1, :cond_0

    .line 2100
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 2101
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 2100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2104
    :cond_0
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1429
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    return-object v0

    .line 1431
    :catch_0
    move-exception v0

    .line 1433
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1456
    if-ne p0, p1, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return v0

    .line 1457
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1458
    :cond_3
    check-cast p1, Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1459
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1460
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1461
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1462
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1463
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1464
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1465
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1466
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1467
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1468
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1469
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1470
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1471
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1472
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1473
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1474
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1475
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1476
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1477
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1478
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1479
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1480
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1481
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 1482
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1483
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1484
    invoke-static {v2, v3}, Lcom/ibm/icu/text/DateFormatSymbols;->arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    .line 1488
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1489
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public getTimeSeparatorString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method initializeData(Lcom/ibm/icu/text/DateFormatSymbols;)V
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 1545
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1546
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 1547
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1548
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1549
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1550
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1551
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1552
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1553
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1554
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1555
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1556
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1557
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1558
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1559
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1560
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1561
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1562
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1563
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1564
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 1565
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 1566
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 1567
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 1568
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 1569
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 1570
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 1571
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1572
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1573
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1574
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1575
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1576
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 1578
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1579
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1581
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 1583
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    .line 1584
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 1585
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    .line 1586
    return-void
.end method

.method protected initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/4 v9, 0x2

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1853
    new-instance v1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;

    invoke-direct {v1}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;-><init>()V

    .line 1854
    if-nez p2, :cond_0

    .line 1855
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    .line 1856
    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    move-object p2, v0

    .line 1860
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calendar/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 1864
    if-nez v0, :cond_2

    .line 1865
    const-string/jumbo v0, "gregorian"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1866
    const-string/jumbo p3, "gregorian"

    .line 1867
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->visitAllResources()V

    goto :goto_0

    .line 1870
    :cond_1
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The \'gregorian\' calendar type wasn\'t found for the locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1871
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gregorian"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1873
    :cond_2
    invoke-virtual {v1, p3}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->preEnumerate(Ljava/lang/String;)V

    .line 1874
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 1877
    const-string/jumbo v0, "gregorian"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1891
    :cond_3
    iget-object v2, v1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    .line 1892
    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    .line 1894
    const-string/jumbo v0, "eras/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 1895
    const-string/jumbo v0, "eras/wide"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1896
    const-string/jumbo v0, "eras/narrow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 1898
    const-string/jumbo v0, "monthNames/format/wide"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1899
    const-string/jumbo v0, "monthNames/format/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1900
    const-string/jumbo v0, "monthNames/format/narrow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1902
    const-string/jumbo v0, "monthNames/stand-alone/wide"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1903
    const-string/jumbo v0, "monthNames/stand-alone/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1904
    const-string/jumbo v0, "monthNames/stand-alone/narrow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1906
    const-string/jumbo v0, "dayNames/format/wide"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1907
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1908
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v1, v4

    .line 1909
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1911
    const-string/jumbo v0, "dayNames/format/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1912
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1913
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v1, v4

    .line 1914
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1916
    const-string/jumbo v0, "dayNames/format/short"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1917
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1918
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v1, v4

    .line 1919
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1921
    const-string/jumbo v0, "dayNames/format/narrow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1922
    if-nez v0, :cond_6

    .line 1923
    const-string/jumbo v0, "dayNames/stand-alone/narrow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1925
    if-nez v0, :cond_6

    .line 1926
    const-string/jumbo v0, "dayNames/format/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1928
    if-nez v0, :cond_6

    .line 1929
    new-instance v0, Ljava/util/MissingResourceException;

    const-string/jumbo v1, "Resource not found"

    .line 1930
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dayNames/format/abbreviated"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_4
    iget-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1885
    if-nez v0, :cond_5

    .line 1886
    const-string/jumbo v0, "gregorian"

    .line 1887
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->visitAllResources()V

    :cond_5
    move-object p3, v0

    .line 1889
    goto/16 :goto_0

    .line 1934
    :cond_6
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1935
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v1, v4

    .line 1936
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1939
    const-string/jumbo v0, "dayNames/stand-alone/wide"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1940
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1941
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v1, v4

    .line 1942
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1945
    const-string/jumbo v0, "dayNames/stand-alone/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1946
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1947
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v1, v4

    .line 1948
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1951
    const-string/jumbo v0, "dayNames/stand-alone/short"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1952
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1953
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v1, v4

    .line 1954
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1957
    const-string/jumbo v0, "dayNames/stand-alone/narrow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1958
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1959
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v1, v4

    .line 1960
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1962
    const-string/jumbo v0, "AmPmMarkers"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1963
    const-string/jumbo v0, "AmPmMarkersNarrow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1965
    const-string/jumbo v0, "quarters/format/wide"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 1966
    const-string/jumbo v0, "quarters/format/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 1968
    const-string/jumbo v0, "quarters/stand-alone/wide"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 1969
    const-string/jumbo v0, "quarters/stand-alone/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 1971
    const-string/jumbo v0, "dayPeriod/format/abbreviated"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1972
    const-string/jumbo v0, "dayPeriod/format/wide"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1973
    const-string/jumbo v0, "dayPeriod/format/narrow"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1974
    const-string/jumbo v0, "dayPeriod/stand-alone/abbreviated"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1975
    const-string/jumbo v0, "dayPeriod/stand-alone/wide"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1976
    const-string/jumbo v0, "dayPeriod/stand-alone/narrow"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    move v1, v4

    .line 1978
    :goto_1
    if-ge v1, v8, :cond_9

    .line 1979
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 1980
    if-eqz v0, :cond_8

    .line 1981
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1982
    if-eqz v0, :cond_8

    .line 1983
    const-string/jumbo v6, "leap"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1984
    if-eqz v0, :cond_8

    .line 1985
    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-nez v6, :cond_7

    .line 1986
    new-array v6, v8, [Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 1988
    :cond_7
    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aput-object v0, v6, v1

    .line 1978
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1994
    :cond_9
    const-string/jumbo v0, "cyclicNameSets/years/format/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 1995
    const-string/jumbo v0, "cyclicNameSets/zodiacs/format/abbreviated"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 1997
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    .line 1999
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    .line 2000
    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 2003
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 2006
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 2007
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/text/DateFormatSymbols;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 2009
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2010
    new-array v2, v9, [Z

    .line 2011
    aput-boolean v4, v2, v4

    .line 2012
    aput-boolean v4, v2, v3

    .line 2013
    invoke-static {}, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->values()[Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-result-object v5

    .line 2014
    array-length v6, v5

    move v1, v4

    :goto_2
    if-ge v1, v6, :cond_a

    aget-object v7, v5, v1

    .line 2015
    iget-object v8, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2019
    :cond_a
    :try_start_0
    const-string/jumbo v1, "contextTransforms"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2024
    :goto_3
    if-eqz v1, :cond_e

    .line 2025
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v5

    .line 2026
    :cond_b
    :goto_4
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2027
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 2028
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v6

    .line 2029
    array-length v2, v6

    if-lt v2, v9, :cond_b

    .line 2030
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2031
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 2032
    if-eqz v1, :cond_b

    .line 2033
    new-array v7, v9, [Z

    .line 2034
    aget v2, v6, v4

    if-eqz v2, :cond_c

    move v2, v3

    :goto_5
    aput-boolean v2, v7, v4

    .line 2035
    aget v2, v6, v3

    if-eqz v2, :cond_d

    move v2, v3

    :goto_6
    aput-boolean v2, v7, v3

    .line 2036
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2021
    :catch_0
    move-exception v1

    .line 2022
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    move v2, v4

    .line 2034
    goto :goto_5

    :cond_d
    move v2, v4

    .line 2035
    goto :goto_6

    .line 2042
    :cond_e
    invoke-static {p1}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v1

    .line 2043
    if-nez v1, :cond_f

    const-string/jumbo v1, "latn"

    .line 2044
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NumberElements/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/symbols/timeSeparator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2046
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2050
    :goto_8
    return-void

    .line 2043
    :cond_f
    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 2047
    :catch_1
    move-exception v0

    .line 2048
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x2b

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1530
    const-string/jumbo v1, "numbers"

    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1531
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1534
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols;->DFSCACHE:Lcom/ibm/icu/impl/CacheBase;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1535
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/text/DateFormatSymbols;)V

    .line 1536
    return-void
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2355
    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 2357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    .line 2355
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2362
    :cond_2
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 2363
    iput-object p2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    .line 2364
    return-void
.end method

.method public setTimeSeparatorString(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1322
    return-void
.end method
