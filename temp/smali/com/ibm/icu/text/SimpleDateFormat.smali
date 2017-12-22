.class public Lcom/ibm/icu/text/SimpleDateFormat;
.super Lcom/ibm/icu/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CALENDAR_FIELD_TO_LEVEL:[I

.field static final DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

.field static DelayedHebrewMonthCheck:Z

.field private static PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_CHAR_IS_SYNTAX:[Z

.field private static final PATTERN_CHAR_TO_INDEX:[I

.field private static final PATTERN_CHAR_TO_LEVEL:[I

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

.field private static cachedDefaultPattern:Ljava/lang/String;


# instance fields
.field private transient capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

.field private transient decDigits:[C

.field private transient decimalBuf:[C

.field private transient defaultCenturyBase:J

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Lcom/ibm/icu/text/DateFormatSymbols;

.field private transient hasMinute:Z

.field private transient hasSecond:Z

.field private transient locale:Lcom/ibm/icu/util/ULocale;

.field private numberFormatters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private override:Ljava/lang/String;

.field private overrideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private transient patternItems:[Ljava/lang/Object;

.field private serialVersionOnStream:I

.field private volatile tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

.field private transient useFastFormat:Z

.field private transient useLocalZeroPaddingNumberFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x25

    const/16 v4, 0x18

    const/4 v1, 0x1

    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 722
    const-class v0, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/SimpleDateFormat;->$assertionsDisabled:Z

    .line 734
    sput-boolean v2, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 744
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    .line 763
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    .line 789
    new-array v0, v3, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    .line 1182
    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    .line 1183
    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    .line 1391
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    .line 1415
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    .line 1439
    const/16 v0, 0x26

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    .line 1462
    const/16 v0, 0x26

    new-array v0, v0, [Lcom/ibm/icu/text/DateFormat$Field;

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->ERA:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v0, v2

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->HOUR1:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->HOUR0:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->YEAR_WOY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DOW_LOCAL:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->EXTENDED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->JULIAN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v1, v0, v4

    const/16 v1, 0x19

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->RELATED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ibm/icu/text/DateFormat$Field;->TIME_SEPARATOR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    .line 2101
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 2843
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[GyYuUQqMLlwWd]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

    return-void

    :cond_0
    move v0, v2

    .line 722
    goto/16 :goto_0

    .line 744
    :array_0
    .array-data 4
        0x0
        0xa
        0x14
        0x14
        0x1e
        0x1e
        0x14
        0x1e
        0x1e
        0x28
        0x32
        0x32
        0x3c
        0x46
        0x50
        0x0
        0x0
        0xa
        0x1e
        0xa
        0x0
        0x28
        0x0
        0x0
    .end array-data

    .line 763
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        0x14
        0x1e
        0x1e
        0x0
        0x32
        -0x1
        -0x1
        0x32
        0x14
        0x14
        -0x1
        0x0
        -0x1
        0x14
        -0x1
        0x50
        -0x1
        0xa
        0x0
        0x1e
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        0x1e
        0x1e
        0x1e
        -0x1
        0x0
        0x32
        -0x1
        -0x1
        0x32
        -0x1
        0x3c
        -0x1
        -0x1
        -0x1
        0x14
        0xa
        0x46
        -0x1
        0xa
        0x0
        0x14
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 789
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 1391
    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        0x24
        -0x1
        0xa
        0x9
        0xb
        0x0
        0x5
        -0x1
        -0x1
        0x10
        0x1a
        0x2
        -0x1
        0x1f
        -0x1
        0x1b
        -0x1
        0x8
        -0x1
        0x1e
        0x1d
        0xd
        0x20
        0x12
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        0x23
        0x19
        0x3
        0x13
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x4
        -0x1
        0x6
        -0x1
        -0x1
        -0x1
        0x1c
        0x22
        0x7
        -0x1
        0x14
        0x18
        0xc
        0x21
        0x1
        0x11
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 1415
    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0x11
        0x12
        0x13
        0x14
        0x15
        0xf
        0xf
        0x12
        0x2
        0x2
        0x2
        0xf
        0x1
        0xf
        0xf
        0xf
        0x13
        -0x1
        -0x2
    .end array-data

    .line 1439
    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 979
    invoke-static {}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    .line 980
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 991
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    .line 992
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/ibm/icu/text/DateFormat;-><init>()V

    .line 852
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 1071
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1072
    iput-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1073
    iput-object p3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 1074
    iput-object p4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 1075
    iput-object p5, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 1076
    iput-boolean p6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z

    .line 1077
    iput-object p7, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    .line 1078
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initialize()V

    .line 1079
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1013
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    .line 1014
    return-void
.end method

.method static synthetic access$000(CI)Z
    .locals 1

    .prologue
    .line 722
    invoke-static {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->isNumeric(CI)Z

    move-result v0

    return v0
.end method

.method private allowNumericFallback(I)Z
    .locals 1

    .prologue
    .line 3721
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_1

    .line 3727
    :cond_0
    const/4 v0, 0x1

    .line 3729
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2271
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length v0, v0

    if-ge v0, p4, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length p4, v0

    .line 2272
    :cond_0
    add-int/lit8 v0, p4, -0x1

    .line 2274
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    rem-int/lit8 v3, p2, 0xa

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 2275
    div-int/lit8 p2, p2, 0xa

    .line 2276
    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    .line 2281
    :cond_1
    sub-int v1, p4, v0

    sub-int v1, p3, v1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 2282
    :goto_1
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 2283
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 2284
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2279
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2286
    :cond_3
    :goto_2
    if-lez v0, :cond_4

    .line 2289
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2290
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2292
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    sub-int v2, p4, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 2293
    return-void
.end method

.method private format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/DisplayContext;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 1347
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1348
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1354
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v12

    .line 1355
    const/4 v6, 0x0

    :goto_0
    array-length v1, v12

    if-ge v6, v1, :cond_3

    .line 1356
    aget-object v1, v12, v6

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1357
    aget-object v1, v12, v6

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1359
    :cond_1
    aget-object v1, v12, v6

    move-object v10, v1

    check-cast v10, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 1360
    const/4 v1, 0x0

    .line 1361
    if-eqz p5, :cond_4

    .line 1363
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    move v11, v1

    .line 1365
    :goto_2
    iget-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v1, :cond_2

    .line 1366
    iget-char v3, v10, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v10, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v7, p2

    move-object/from16 v8, p4

    move-object v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    .line 1372
    :goto_3
    if-eqz p5, :cond_0

    .line 1374
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1375
    sub-int v2, v1, v11

    if-lez v2, :cond_0

    .line 1377
    iget-char v2, v10, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;

    move-result-object v2

    .line 1378
    new-instance v3, Ljava/text/FieldPosition;

    invoke-direct {v3, v2}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1379
    invoke-virtual {v3, v11}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1380
    invoke-virtual {v3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1381
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1369
    :cond_2
    iget-char v3, v10, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v10, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object v2, p0

    move-object v7, p2

    move-object/from16 v8, p4

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1386
    :cond_3
    return-object p3

    :cond_4
    move v11, v1

    goto :goto_2
.end method

.method private getDefaultCenturyStart()Ljava/util/Date;
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1253
    iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-object v0
.end method

.method private getDefaultCenturyStartYear()I
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1262
    iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 1264
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return v0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1191
    const-class v2, Lcom/ibm/icu/text/SimpleDateFormat;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 1192
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1193
    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    .line 1194
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1198
    :try_start_1
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    sget-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calendar/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/DateTimePatterns"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1201
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 1203
    if-nez v1, :cond_0

    .line 1204
    const-string/jumbo v1, "calendar/gregorian/DateTimePatterns"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    move-object v1, v0

    .line 1206
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v0

    const/16 v3, 0x9

    if-ge v0, v3, :cond_3

    .line 1207
    :cond_1
    const-string/jumbo v0, "yy/MM/dd HH:mm"

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1223
    :cond_2
    :goto_0
    :try_start_2
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v0

    .line 1209
    :cond_3
    const/16 v0, 0x8

    .line 1210
    :try_start_3
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    const/16 v4, 0xd

    if-lt v3, v4, :cond_4

    .line 1211
    const/16 v0, 0xc

    .line 1213
    :cond_4
    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1215
    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 1217
    invoke-virtual {v1, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 1215
    invoke-static {v0, v3, v4, v5}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    :try_start_4
    const-string/jumbo v0, "yy/MM/dd HH:mm"

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static getIndexFromChar(C)I
    .locals 2

    .prologue
    .line 1411
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getInstance(Lcom/ibm/icu/util/Calendar$FormatConfiguration;)Lcom/ibm/icu/text/SimpleDateFormat;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    .line 1094
    :goto_0
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getPatternString()Ljava/lang/String;

    move-result-object v1

    .line 1095
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getDateFormatSymbols()Lcom/ibm/icu/text/DateFormatSymbols;

    move-result-object v2

    .line 1096
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object v3

    const/4 v4, 0x0

    .line 1098
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    .line 1100
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    .line 1094
    return-object v0

    .line 1092
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getPatternItems()[Ljava/lang/Object;
    .locals 11

    .prologue
    const/16 v10, 0x27

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2110
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 2187
    :goto_0
    return-object v0

    .line 2114
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 2115
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2116
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    goto :goto_0

    .line 2121
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v3

    move v4, v1

    move v5, v1

    move v6, v1

    .line 2127
    :goto_1
    iget-object v7, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_b

    .line 2128
    iget-object v7, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2129
    if-ne v7, v10, :cond_4

    .line 2130
    if-eqz v6, :cond_2

    .line 2131
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v4

    move v7, v1

    .line 2140
    :goto_2
    if-nez v5, :cond_3

    move v4, v3

    :goto_3
    move v5, v4

    move v4, v6

    move v6, v7

    .line 2127
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2135
    :cond_2
    if-eqz v4, :cond_e

    .line 2136
    new-instance v6, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v1

    move v7, v3

    .line 2137
    goto :goto_2

    :cond_3
    move v4, v1

    .line 2140
    goto :goto_3

    .line 2143
    :cond_4
    if-eqz v5, :cond_5

    .line 2144
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v1

    goto :goto_4

    .line 2146
    :cond_5
    invoke-static {v7}, Lcom/ibm/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2148
    if-ne v7, v4, :cond_6

    .line 2149
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    goto :goto_4

    .line 2151
    :cond_6
    if-nez v4, :cond_8

    .line 2152
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 2153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2154
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_7
    :goto_5
    move v2, v3

    move v4, v7

    move v6, v1

    .line 2160
    goto :goto_4

    .line 2157
    :cond_8
    new-instance v6, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2164
    :cond_9
    if-eqz v4, :cond_a

    .line 2165
    new-instance v6, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v1

    .line 2168
    :cond_a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v1

    goto :goto_4

    .line 2174
    :cond_b
    if-nez v4, :cond_d

    .line 2175
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 2176
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2177
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2183
    :cond_c
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 2185
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2187
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    goto/16 :goto_0

    .line 2180
    :cond_d
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    move v6, v4

    move v7, v3

    goto/16 :goto_2
.end method

.method private initLocalZeroPaddingNumberFormat()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2238
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_1

    .line 2239
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    .line 2240
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 2248
    :goto_0
    iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_0

    .line 2249
    const/16 v0, 0xa

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    .line 2251
    :cond_0
    return-void

    .line 2241
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_2

    .line 2242
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    .line 2243
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_0

    .line 2245
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_0
.end method

.method private initNumberFormatters(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .prologue
    .line 4452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 4453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 4454
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->processOverrideString(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    .line 4456
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_0

    .line 1108
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    if-nez v0, :cond_1

    .line 1111
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-nez v0, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_3

    .line 1117
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1119
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 1129
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 1131
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    sget-object v1, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    sget-object v2, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 1132
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 1134
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1135
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initNumberFormatters(Lcom/ibm/icu/util/ULocale;)V

    .line 1138
    :cond_4
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->parsePattern()V

    .line 1139
    return-void

    .line 1121
    :cond_5
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 1122
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1124
    new-instance v2, Lcom/ibm/icu/impl/DateNumberFormat;

    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v2, v3, v1, v0}, Lcom/ibm/icu/impl/DateNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    goto :goto_0
.end method

.method private initializeDefaultCenturyStart(J)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1239
    iput-wide p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 1242
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 1243
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1244
    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 1245
    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1246
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 1247
    return-void
.end method

.method private declared-synchronized initializeTimeZoneFormat(Z)V
    .locals 2

    .prologue
    .line 1148
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    if-nez v0, :cond_3

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    .line 1151
    const/4 v0, 0x0

    .line 1152
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v1, v1, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v1, :cond_4

    .line 1153
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 1154
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 1159
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1160
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1161
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->cloneAsThawed()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    .line 1164
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->setGMTOffsetDigits(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    :cond_3
    monitor-exit p0

    return-void

    .line 1155
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v1, v1, Lcom/ibm/icu/impl/DateNumberFormat;

    if-eqz v1, :cond_1

    .line 1156
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final isNumeric(CI)Z
    .locals 1

    .prologue
    .line 2322
    const-string/jumbo v0, "ADdFgHhKkmrSsuWwYy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    const-string/jumbo v0, "ceLMQq"

    .line 2323
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2322
    :goto_0
    return v0

    .line 2323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSyntaxChar(C)Z
    .locals 2

    .prologue
    .line 829
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    and-int/lit16 v1, p0, 0xff

    aget-boolean v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "I",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3012
    const/4 v0, -0x1

    move v3, v1

    .line 3014
    :goto_0
    if-ge v1, p4, :cond_0

    .line 3016
    aget-object v2, p3, v1

    if-eqz v2, :cond_2

    .line 3017
    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 3018
    if-le v2, v3, :cond_2

    aget-object v4, p3, v1

    .line 3019
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_2

    move v0, v1

    .line 3014
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 3026
    :cond_0
    if-ltz v0, :cond_1

    .line 3027
    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v1, v0

    iput-object v0, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 3028
    add-int v0, p2, v3

    .line 3031
    :goto_2
    return v0

    :cond_1
    neg-int v0, p2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I
    .locals 8

    .prologue
    .line 2772
    .line 2773
    aget-object v0, p3, p4

    check-cast v0, Ljava/lang/String;

    .line 2774
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2775
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2776
    const/4 v2, 0x0

    move v3, p2

    .line 2777
    :goto_0
    if-ge v2, v4, :cond_6

    if-ge v3, v5, :cond_6

    .line 2778
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2779
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2780
    invoke-static {v1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2781
    invoke-static {v6}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v2

    .line 2784
    :goto_1
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v4, :cond_b

    add-int/lit8 v2, v1, 0x1

    .line 2785
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2786
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2788
    :goto_2
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v5, :cond_5

    add-int/lit8 v3, v2, 0x1

    .line 2789
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2790
    add-int/lit8 v3, v2, 0x1

    move v2, v3

    goto :goto_2

    .line 2792
    :cond_0
    if-eq v1, v6, :cond_4

    .line 2793
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1

    if-ne v3, p2, :cond_1

    if-lez p4, :cond_1

    sget-object v6, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v6}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2794
    add-int/lit8 v1, p4, -0x1

    aget-object v1, p3, v1

    .line 2795
    instance-of v6, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v6, :cond_6

    .line 2796
    check-cast v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v1, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    .line 2797
    if-nez v1, :cond_6

    .line 2798
    add-int/lit8 v3, v3, 0x1

    .line 2799
    goto :goto_0

    .line 2802
    :cond_1
    const/16 v6, 0x20

    if-eq v1, v6, :cond_2

    const/16 v6, 0x2e

    if-ne v1, v6, :cond_3

    :cond_2
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2803
    add-int/lit8 v2, v2, 0x1

    .line 2804
    goto :goto_0

    .line 2805
    :cond_3
    if-eq v3, p2, :cond_6

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2806
    add-int/lit8 v2, v2, 0x1

    .line 2807
    goto/16 :goto_0

    :cond_4
    move v1, v2

    move v2, v3

    .line 2811
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 2812
    add-int/lit8 v3, v2, 0x1

    move v2, v1

    .line 2813
    goto/16 :goto_0

    .line 2814
    :cond_6
    const/4 v1, 0x0

    if-ne v2, v4, :cond_8

    const/4 v0, 0x1

    :goto_3
    aput-boolean v0, p5, v1

    .line 2815
    const/4 v0, 0x0

    aget-boolean v0, p5, v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-lez p4, :cond_7

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ge p4, v0, :cond_7

    .line 2819
    if-ge p2, v5, :cond_7

    .line 2820
    add-int/lit8 v0, p4, -0x1

    aget-object v0, p3, v0

    .line 2821
    add-int/lit8 v1, p4, 0x1

    aget-object v1, p3, v1

    .line 2822
    instance-of v2, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_7

    instance-of v2, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_7

    .line 2823
    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-char v2, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object v0, v1

    .line 2824
    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-char v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2825
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    sget-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eq v1, v0, :cond_7

    move v0, p2

    .line 2828
    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2829
    invoke-static {v1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2834
    const/4 v2, 0x0

    if-le v0, p2, :cond_a

    const/4 v1, 0x1

    :goto_5
    aput-boolean v1, p5, v2

    move v3, v0

    .line 2840
    :cond_7
    return v3

    .line 2814
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 2832
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 2833
    goto :goto_4

    .line 2834
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    move v2, v3

    goto/16 :goto_2
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2891
    const/4 v1, 0x0

    .line 2892
    move-object/from16 v0, p4

    array-length v6, v0

    .line 2894
    const/4 v2, 0x7

    if-ne p3, v2, :cond_0

    const/4 v1, 0x1

    .line 2900
    :cond_0
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2901
    const/4 v2, 0x0

    move v11, v3

    move v3, v1

    move v1, v11

    .line 2904
    :goto_0
    if-ge v3, v6, :cond_1

    .line 2906
    aget-object v5, p4, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2909
    if-le v5, v4, :cond_6

    aget-object v7, p4, v3

    .line 2910
    invoke-direct {p0, p1, p2, v7, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_6

    .line 2914
    const/4 v1, 0x0

    move v2, v3

    .line 2916
    :goto_1
    if-eqz p5, :cond_5

    .line 2917
    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aget-object v10, p4, v3

    aput-object v10, v8, v9

    move-object/from16 v0, p5

    invoke-static {v0, v4, v7, v8}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2919
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 2920
    if-le v7, v5, :cond_5

    .line 2921
    invoke-direct {p0, p1, p2, v4, v7}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 2925
    const/4 v1, 0x1

    move v2, v3

    .line 2904
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_0

    .line 2929
    :cond_1
    if-ltz v1, :cond_4

    .line 2931
    if-ltz p3, :cond_3

    .line 2932
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    .line 2933
    add-int/lit8 v1, v1, 0x1

    .line 2935
    :cond_2
    move-object/from16 v0, p6

    invoke-virtual {v0, p3, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2936
    if-eqz p5, :cond_3

    .line 2937
    const/16 v1, 0x16

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2940
    :cond_3
    add-int v1, p2, v4

    .line 2942
    :goto_3
    return v1

    :cond_4
    xor-int/lit8 v1, p2, -0x1

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_2

    :cond_6
    move v5, v4

    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_1
.end method

.method private parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 6

    .prologue
    .line 3752
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 3753
    if-eqz p4, :cond_1

    .line 3754
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 3773
    :cond_0
    :goto_0
    if-lez p2, :cond_5

    .line 3776
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int v2, v1, v3

    .line 3777
    if-le v2, p2, :cond_5

    .line 3778
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 3779
    sub-int/2addr v2, p2

    .line 3780
    :goto_1
    if-lez v2, :cond_4

    .line 3781
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v4

    .line 3782
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3757
    :cond_1
    instance-of v0, p5, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_2

    move-object v0, p5

    .line 3758
    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    move-object v0, p5

    .line 3759
    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    const-string/jumbo v2, "\uab00"

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 3761
    check-cast p5, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p5, v1}, Lcom/ibm/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 3763
    :cond_2
    instance-of v1, p5, Lcom/ibm/icu/impl/DateNumberFormat;

    .line 3764
    if-eqz v1, :cond_3

    move-object v0, p5

    .line 3765
    check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    .line 3767
    :cond_3
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 3768
    if-eqz v1, :cond_0

    .line 3769
    check-cast p5, Lcom/ibm/icu/impl/DateNumberFormat;

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Lcom/ibm/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    goto :goto_0

    .line 3784
    :cond_4
    add-int v2, v3, p2

    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3785
    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3788
    :cond_5
    return-object v0
.end method

.method private parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 6

    .prologue
    .line 3740
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method private parsePattern()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4512
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    .line 4513
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    move v0, v1

    move v2, v1

    .line 4516
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 4517
    iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4518
    const/16 v5, 0x27

    if-ne v4, v5, :cond_0

    .line 4519
    if-nez v2, :cond_3

    move v2, v3

    .line 4521
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    .line 4522
    const/16 v5, 0x6d

    if-ne v4, v5, :cond_1

    .line 4523
    iput-boolean v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    .line 4525
    :cond_1
    const/16 v5, 0x73

    if-ne v4, v5, :cond_2

    .line 4526
    iput-boolean v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    .line 4516
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 4519
    goto :goto_1

    .line 4530
    :cond_4
    return-void
.end method

.method private processOverrideString(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 4460
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4509
    :cond_0
    return-void

    :cond_1
    move v0, v4

    move v5, v1

    .line 4470
    :goto_0
    if-eqz v0, :cond_0

    .line 4471
    const-string/jumbo v2, ";"

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 4472
    if-ne v3, v9, :cond_3

    .line 4474
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 4479
    :goto_1
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4480
    const-string/jumbo v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 4481
    if-ne v5, v9, :cond_4

    move-object v5, v2

    move v2, v4

    .line 4491
    :goto_2
    new-instance v6, Lcom/ibm/icu/util/ULocale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@numbers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 4492
    invoke-static {v6, v1}, Lcom/ibm/icu/text/NumberFormat;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v6

    .line 4493
    invoke-virtual {v6, v1}, Lcom/ibm/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 4495
    if-eqz v2, :cond_5

    .line 4496
    invoke-virtual {p0, v6}, Lcom/ibm/icu/text/SimpleDateFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V

    .line 4503
    :goto_3
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4504
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4507
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v5, v2

    .line 4508
    goto :goto_0

    :cond_3
    move v2, v3

    .line 4476
    goto :goto_1

    .line 4485
    :cond_4
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4486
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 4487
    iget-object v6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .line 4488
    goto :goto_2

    .line 4500
    :cond_5
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_3
.end method

.method private regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2946
    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 2947
    if-eqz v0, :cond_0

    .line 2955
    :goto_0
    return p4

    .line 2950
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    .line 2951
    add-int/lit8 v5, p4, -0x1

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2952
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 2955
    :cond_1
    const/4 p4, -0x1

    goto :goto_0
.end method

.method private static safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 2070
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 2071
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2073
    :cond_0
    return-void
.end method

.method private static safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2076
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 2077
    if-nez p3, :cond_1

    .line 2078
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2084
    :cond_0
    :goto_0
    return-void

    .line 2080
    :cond_1
    new-array v0, v3, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v2, p0, p1

    aput-object v2, v0, v1

    invoke-static {p3, v3, v3, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2081
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/MessageFormat;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3068
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/MessageFormat;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3103
    const/4 v2, 0x0

    .line 3105
    const/4 v8, 0x0

    .line 3107
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3109
    invoke-static/range {p3 .. p3}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v9

    .line 3110
    const/4 v1, -0x1

    if-ne v9, v1, :cond_1

    .line 3111
    xor-int/lit8 v1, p2, -0x1

    .line 3712
    :cond_0
    :goto_0
    return v1

    .line 3114
    :cond_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v6

    .line 3116
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v10, v1, v9

    .line 3118
    if-eqz p9, :cond_2

    .line 3119
    const/4 v1, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v6}, Lcom/ibm/icu/text/MessageFormat;->setFormatByArgumentIndex(ILjava/text/Format;)V

    .line 3121
    :cond_2
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "chinese"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "dangi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    move v7, v1

    .line 3126
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move/from16 v0, p2

    if-lt v0, v1, :cond_5

    .line 3127
    xor-int/lit8 v1, p2, -0x1

    goto :goto_0

    .line 3121
    :cond_4
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    .line 3129
    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 3130
    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 3135
    :cond_6
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3141
    const/4 v1, 0x4

    if-eq v9, v1, :cond_9

    const/16 v1, 0xf

    if-eq v9, v1, :cond_9

    const/4 v1, 0x2

    if-ne v9, v1, :cond_7

    const/4 v1, 0x2

    move/from16 v0, p4

    if-le v0, v1, :cond_9

    :cond_7
    const/16 v1, 0x1a

    if-eq v9, v1, :cond_9

    const/16 v1, 0x13

    if-eq v9, v1, :cond_9

    const/16 v1, 0x19

    if-eq v9, v1, :cond_9

    const/4 v1, 0x1

    if-eq v9, v1, :cond_9

    const/16 v1, 0x12

    if-eq v9, v1, :cond_9

    const/16 v1, 0x1e

    if-eq v9, v1, :cond_9

    if-nez v9, :cond_8

    if-nez v7, :cond_9

    :cond_8
    const/16 v1, 0x1b

    if-eq v9, v1, :cond_9

    const/16 v1, 0x1c

    if-eq v9, v1, :cond_9

    const/16 v1, 0x8

    if-ne v9, v1, :cond_6c

    .line 3157
    :cond_9
    const/4 v1, 0x0

    .line 3158
    if-eqz p9, :cond_d

    const/4 v3, 0x2

    if-eq v9, v3, :cond_a

    const/16 v3, 0x1a

    if-ne v9, v3, :cond_d

    .line 3160
    :cond_a
    move-object/from16 v0, p9

    invoke-virtual {v0, p1, v4}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v3

    .line 3161
    if-eqz v3, :cond_c

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    move/from16 v0, p2

    if-le v5, v0, :cond_c

    const/4 v5, 0x0

    aget-object v5, v3, v5

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_c

    .line 3162
    const/4 v2, 0x1

    .line 3163
    const/4 v1, 0x0

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/Number;

    .line 3164
    const/16 v3, 0x16

    const/4 v5, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v5}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3171
    :goto_2
    if-nez v2, :cond_10

    .line 3172
    if-eqz p5, :cond_f

    .line 3173
    add-int v1, p2, p4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_e

    .line 3174
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3133
    :cond_b
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int p2, p2, v1

    .line 3134
    goto/16 :goto_1

    .line 3166
    :cond_c
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3167
    const/16 v3, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v5}, Lcom/ibm/icu/util/Calendar;->set(II)V

    :cond_d
    move v13, v1

    move-object v1, v2

    move v2, v13

    goto :goto_2

    :cond_e
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v5, p6

    .line 3176
    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v1

    .line 3180
    :goto_3
    if-nez v1, :cond_10

    invoke-direct {p0, v9}, Lcom/ibm/icu/text/SimpleDateFormat;->allowNumericFallback(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 3182
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3178
    :cond_f
    move/from16 v0, p6

    invoke-direct {p0, p1, v4, v0, v6}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v1

    goto :goto_3

    .line 3186
    :cond_10
    if-eqz v1, :cond_6b

    .line 3187
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object v3, v1

    .line 3191
    :goto_4
    packed-switch v9, :pswitch_data_0

    .line 3698
    :pswitch_0
    if-eqz p5, :cond_67

    .line 3699
    add-int v1, p2, p4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_66

    move/from16 v0, p2

    neg-int v1, v0

    goto/16 :goto_0

    .line 3194
    :pswitch_1
    if-eqz v7, :cond_11

    .line 3197
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3198
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3201
    :cond_11
    const/4 v1, 0x5

    move/from16 v0, p4

    if-ne v0, v1, :cond_12

    .line 3202
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    .line 3212
    :goto_5
    xor-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_0

    .line 3213
    const/16 v1, -0x7d00

    goto/16 :goto_0

    .line 3203
    :cond_12
    const/4 v1, 0x4

    move/from16 v0, p4

    if-ne v0, v1, :cond_13

    .line 3204
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto :goto_5

    .line 3206
    :cond_13
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto :goto_5

    .line 3227
    :pswitch_2
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v3, "hebr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v3, "y=hebr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_17

    :cond_14
    const/16 v1, 0x3e8

    if-ge v2, v1, :cond_17

    .line 3228
    add-int/lit16 v1, v2, 0x1388

    .line 3246
    :goto_6
    move-object/from16 v0, p8

    invoke-virtual {v0, v10, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3249
    sget-boolean v2, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    if-eqz v2, :cond_16

    .line 3250
    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3251
    const/4 v1, 0x2

    const/4 v2, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 3253
    :cond_15
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3255
    :cond_16
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3229
    :cond_17
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_6a

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int v1, v1, p2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6a

    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->haveDefaultCentury()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 3230
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    add-int/lit8 v1, p2, 0x1

    .line 3231
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 3241
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v1

    rem-int/lit8 v3, v1, 0x64

    .line 3242
    const/4 v5, 0x0

    if-ne v2, v3, :cond_18

    const/4 v1, 0x1

    :goto_7
    aput-boolean v1, p7, v5

    .line 3243
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v5, v1, 0x64

    if-ge v2, v3, :cond_19

    const/16 v1, 0x64

    :goto_8
    add-int/2addr v1, v5

    add-int/2addr v1, v2

    goto :goto_6

    .line 3242
    :cond_18
    const/4 v1, 0x0

    goto :goto_7

    .line 3243
    :cond_19
    const/4 v1, 0x0

    goto :goto_8

    .line 3257
    :pswitch_3
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 3258
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v9, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move/from16 v7, p2

    move-object/from16 v11, p8

    invoke-direct/range {v5 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    .line 3259
    if-gtz v1, :cond_0

    .line 3263
    :cond_1a
    if-eqz v3, :cond_1c

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v1, v1

    if-le v2, v1, :cond_1c

    .line 3264
    :cond_1b
    const/4 v1, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3265
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3267
    :cond_1c
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3270
    :pswitch_4
    const/4 v1, 0x2

    move/from16 v0, p4

    if-le v0, v1, :cond_1d

    if-eqz v3, :cond_20

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3275
    :cond_1d
    const/4 v1, 0x2

    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3280
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "hebrew"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x6

    if-lt v2, v1, :cond_1e

    .line 3281
    const/4 v1, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3282
    const/4 v1, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 3283
    const/4 v1, 0x2

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3289
    :cond_1e
    :goto_9
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3286
    :cond_1f
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    goto :goto_9

    .line 3293
    :cond_20
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_24

    const/4 v1, 0x1

    move v8, v1

    .line 3295
    :goto_a
    const/4 v1, 0x0

    .line 3296
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_22

    .line 3297
    :cond_21
    const/4 v1, 0x2

    if-ne v9, v1, :cond_26

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v8, :cond_25

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v6, v1, v2

    :goto_b
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    .line 3298
    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    .line 3302
    :goto_c
    if-gtz v1, :cond_0

    .line 3307
    :cond_22
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 3308
    :cond_23
    const/4 v1, 0x2

    if-ne v9, v1, :cond_29

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v8, :cond_28

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v6, v1, v2

    :goto_d
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    .line 3309
    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto/16 :goto_0

    .line 3293
    :cond_24
    const/4 v1, 0x0

    move v8, v1

    goto :goto_a

    .line 3297
    :cond_25
    const/4 v6, 0x0

    goto :goto_b

    .line 3298
    :cond_26
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v8, :cond_27

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v6, v1, v2

    :goto_e
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    .line 3300
    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto :goto_c

    .line 3298
    :cond_27
    const/4 v6, 0x0

    goto :goto_e

    .line 3308
    :cond_28
    const/4 v6, 0x0

    goto :goto_d

    .line 3309
    :cond_29
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v8, :cond_2a

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v6, v1, v2

    :goto_f
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    .line 3311
    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto/16 :goto_0

    .line 3309
    :cond_2a
    const/4 v6, 0x0

    goto :goto_f

    .line 3318
    :pswitch_5
    const/16 v1, 0xb

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v2, v1, :cond_2b

    .line 3319
    const/4 v2, 0x0

    .line 3321
    :cond_2b
    const/16 v1, 0xb

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3322
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3325
    :pswitch_6
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int v3, v1, p2

    .line 3326
    const/4 v1, 0x3

    if-ge v3, v1, :cond_2c

    move v1, v2

    .line 3327
    :goto_10
    const/4 v2, 0x3

    if-ge v3, v2, :cond_2e

    .line 3328
    mul-int/lit8 v1, v1, 0xa

    .line 3329
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3332
    :cond_2c
    const/4 v1, 0x1

    .line 3333
    :goto_11
    const/4 v5, 0x3

    if-le v3, v5, :cond_2d

    .line 3334
    mul-int/lit8 v1, v1, 0xa

    .line 3335
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 3337
    :cond_2d
    div-int v1, v2, v1

    .line 3339
    :cond_2e
    const/16 v2, 0xe

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3340
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3342
    :pswitch_7
    const/4 v1, 0x2

    move/from16 v0, p4

    if-le v0, v1, :cond_2f

    if-eqz v3, :cond_30

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3344
    :cond_2f
    move-object/from16 v0, p8

    invoke-virtual {v0, v10, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3345
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3351
    :cond_30
    :pswitch_8
    const/4 v1, 0x0

    .line 3352
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_31

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_32

    .line 3353
    :cond_31
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3357
    :cond_32
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_34

    .line 3358
    :cond_33
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3362
    :cond_34
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v2, 0x6

    move/from16 v0, p4

    if-ne v0, v2, :cond_36

    .line 3363
    :cond_35
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v2, :cond_36

    .line 3364
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3369
    :cond_36
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x5

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 3370
    :cond_37
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3371
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 3379
    :pswitch_9
    const/4 v1, 0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_38

    if-eqz v3, :cond_39

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3381
    :cond_38
    move-object/from16 v0, p8

    invoke-virtual {v0, v10, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3382
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3385
    :cond_39
    const/4 v1, 0x0

    .line 3386
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_3a

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_3b

    .line 3387
    :cond_3a
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3391
    :cond_3b
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_3d

    .line 3392
    :cond_3c
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3396
    :cond_3d
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_3e

    const/4 v2, 0x6

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 3397
    :cond_3e
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3398
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto/16 :goto_0

    .line 3409
    :pswitch_a
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v1, :cond_3f

    const/4 v1, 0x5

    move/from16 v0, p4

    if-lt v0, v1, :cond_3f

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3410
    :cond_3f
    const/16 v4, 0x9

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3415
    :cond_40
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v1, :cond_42

    const/4 v1, 0x5

    move/from16 v0, p4

    if-ge v0, v1, :cond_41

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3416
    :cond_41
    const/16 v4, 0x9

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3421
    :cond_42
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3425
    :pswitch_b
    const/16 v1, 0xa

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v2, v1, :cond_43

    .line 3426
    const/4 v2, 0x0

    .line 3428
    :cond_43
    const/16 v1, 0xa

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3429
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3432
    :pswitch_c
    const/4 v1, 0x4

    move/from16 v0, p4

    if-ge v0, v1, :cond_44

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3433
    :goto_12
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 3434
    if-eqz v1, :cond_45

    .line 3435
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3436
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3432
    :cond_44
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_12

    .line 3438
    :cond_45
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3442
    :pswitch_d
    const/4 v1, 0x4

    move/from16 v0, p4

    if-ge v0, v1, :cond_46

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3443
    :goto_13
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 3444
    if-eqz v1, :cond_48

    .line 3445
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3446
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3442
    :cond_46
    const/4 v1, 0x5

    move/from16 v0, p4

    if-ne v0, v1, :cond_47

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_13

    :cond_47
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_13

    .line 3448
    :cond_48
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3453
    :pswitch_e
    const/4 v1, 0x4

    move/from16 v0, p4

    if-ge v0, v1, :cond_49

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3454
    :goto_14
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 3455
    if-eqz v1, :cond_4a

    .line 3456
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3457
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3453
    :cond_49
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_14

    .line 3459
    :cond_4a
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3464
    :pswitch_f
    packed-switch p4, :pswitch_data_1

    .line 3475
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3478
    :goto_15
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 3479
    if-eqz v1, :cond_4b

    .line 3480
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3481
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3466
    :pswitch_10
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_15

    .line 3469
    :pswitch_11
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_15

    .line 3472
    :pswitch_12
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_15

    .line 3483
    :cond_4b
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3487
    :pswitch_13
    const/4 v1, 0x4

    move/from16 v0, p4

    if-ge v0, v1, :cond_4c

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3488
    :goto_16
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 3489
    if-eqz v1, :cond_4d

    .line 3490
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3491
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3487
    :cond_4c
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_16

    .line 3493
    :cond_4d
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3498
    :pswitch_14
    packed-switch p4, :pswitch_data_2

    .line 3512
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3515
    :goto_17
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 3516
    if-eqz v1, :cond_4e

    .line 3517
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3518
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3500
    :pswitch_15
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_17

    .line 3503
    :pswitch_16
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_17

    .line 3506
    :pswitch_17
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_17

    .line 3509
    :pswitch_18
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_17

    .line 3520
    :cond_4e
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3525
    :pswitch_19
    packed-switch p4, :pswitch_data_3

    .line 3539
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3542
    :goto_18
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 3543
    if-eqz v1, :cond_4f

    .line 3544
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3545
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3527
    :pswitch_1a
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_18

    .line 3530
    :pswitch_1b
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_18

    .line 3533
    :pswitch_1c
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_18

    .line 3536
    :pswitch_1d
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_18

    .line 3547
    :cond_4f
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    .line 3550
    :pswitch_1e
    const/4 v1, 0x2

    move/from16 v0, p4

    if-le v0, v1, :cond_50

    if-eqz v3, :cond_51

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 3555
    :cond_50
    const/4 v1, 0x2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3556
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3561
    :cond_51
    const/4 v1, 0x0

    .line 3562
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_52

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_53

    .line 3563
    :cond_52
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3568
    :cond_53
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_54

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 3569
    :cond_54
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto/16 :goto_0

    .line 3576
    :pswitch_1f
    const/4 v1, 0x2

    move/from16 v0, p4

    if-le v0, v1, :cond_55

    if-eqz v3, :cond_56

    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 3581
    :cond_55
    const/4 v1, 0x2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3582
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3587
    :cond_56
    const/4 v1, 0x0

    .line 3588
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_57

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_58

    .line 3589
    :cond_57
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3594
    :cond_58
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_59

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 3595
    :cond_59
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto/16 :goto_0

    .line 3605
    :pswitch_20
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3606
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v2}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3609
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v2}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 3610
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3614
    :cond_5a
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3615
    invoke-virtual {v2}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 3616
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3619
    :cond_5b
    const/4 v4, -0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v1

    goto/16 :goto_0

    .line 3624
    :pswitch_21
    const/16 v4, 0x61

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v1

    .line 3627
    if-gtz v1, :cond_0

    .line 3630
    const/4 v1, 0x0

    .line 3631
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_5c

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_5d

    .line 3632
    :cond_5c
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p11

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3637
    :cond_5d
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_5e

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_5f

    .line 3638
    :cond_5e
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p11

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3643
    :cond_5f
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_60

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 3644
    :cond_60
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p11

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v1

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 3656
    :pswitch_22
    const/4 v1, 0x0

    .line 3657
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_61

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_62

    .line 3658
    :cond_61
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    array-length v5, v1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p11

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3664
    :cond_62
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_63

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_64

    .line 3665
    :cond_63
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    array-length v5, v1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p11

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3671
    :cond_64
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_65

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 3672
    :cond_65
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    array-length v5, v1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p11

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v1

    if-lez v1, :cond_0

    goto/16 :goto_0

    :cond_66
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v5, p6

    .line 3700
    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v1

    .line 3704
    :goto_19
    if-eqz v1, :cond_69

    .line 3705
    const/16 v2, 0x22

    if-eq v9, v2, :cond_68

    .line 3706
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object/from16 v0, p8

    invoke-virtual {v0, v10, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3710
    :goto_1a
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    goto/16 :goto_0

    .line 3702
    :cond_67
    move/from16 v0, p6

    invoke-direct {p0, p1, v4, v0, v6}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v1

    goto :goto_19

    .line 3708
    :cond_68
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setRelatedYear(I)V

    goto :goto_1a

    .line 3712
    :cond_69
    xor-int/lit8 v1, p2, -0x1

    goto/16 :goto_0

    :cond_6a
    move v1, v2

    goto/16 :goto_6

    :cond_6b
    move v2, v8

    move-object v3, v1

    goto/16 :goto_4

    :cond_6c
    move-object v3, v2

    move v2, v8

    goto/16 :goto_4

    .line 3191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_9
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_f
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_19
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_20
    .end packed-switch

    .line 3464
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 3498
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 3525
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    if-nez v0, :cond_0

    .line 1176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    return-object v0
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3855
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 3856
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->parsePattern()V

    .line 3858
    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 3860
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 3861
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3937
    invoke-super {p0}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat;

    .line 3938
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormatSymbols;

    iput-object v1, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3941
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    if-eqz v1, :cond_0

    .line 3942
    const/16 v1, 0xa

    new-array v1, v1, [C

    iput-object v1, v0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    .line 3944
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3966
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3968
    :cond_0
    :goto_0
    return v0

    .line 3967
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/SimpleDateFormat;

    .line 3968
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, p1, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3969
    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1324
    .line 1325
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1330
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 1331
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1332
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    move-object v6, v0

    move-object v1, p1

    .line 1334
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1335
    if-eqz v6, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1, v6}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1339
    :cond_0
    return-object v0

    :cond_1
    move-object v6, v5

    move-object v1, p1

    goto :goto_0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4046
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 4047
    instance-of v0, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_0

    .line 4048
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    move-object v1, p1

    .line 4056
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 4057
    new-instance v4, Ljava/text/FieldPosition;

    invoke-direct {v4, v6}, Ljava/text/FieldPosition;-><init>(I)V

    .line 4058
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4059
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 4061
    new-instance v2, Ljava/text/AttributedString;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    move v1, v6

    .line 4064
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 4065
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/FieldPosition;

    .line 4066
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    .line 4067
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    invoke-virtual {v2, v3, v3, v4, v0}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 4064
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 4049
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 4050
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 4051
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 4052
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 4054
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4070
    :cond_3
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 4081
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .prologue
    .line 4440
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 4441
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4442
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4443
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat;

    .line 4446
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 3955
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2977
    .line 2978
    array-length v4, p4

    .line 2984
    const/4 v0, -0x1

    move v1, v3

    .line 2986
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2987
    aget-object v2, p4, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2990
    if-le v2, v3, :cond_2

    aget-object v5, p4, v1

    .line 2991
    invoke-direct {p0, p1, p2, v5, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_2

    move v0, v1

    .line 2986
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 2998
    :cond_0
    if-ltz v0, :cond_1

    .line 2999
    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p5, p3, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3000
    add-int v0, p2, v3

    .line 3003
    :goto_2
    return v0

    :cond_1
    neg-int v0, p2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method protected matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 7

    .prologue
    .line 2865
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 22

    .prologue
    .line 2334
    const/4 v3, 0x0

    .line 2335
    const/4 v2, 0x0

    .line 2336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_32

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v5}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 2341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 2342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    move-object v14, v2

    .line 2347
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v18

    .line 2348
    if-gez v18, :cond_1

    .line 2349
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2760
    :cond_0
    :goto_1
    return-void

    .line 2357
    :cond_1
    new-instance v13, Lcom/ibm/icu/util/Output;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 2359
    new-instance v12, Lcom/ibm/icu/util/Output;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v12, v2}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 2360
    const/4 v2, 0x1

    new-array v9, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v9, v2

    .line 2363
    const/16 v16, -0x1

    .line 2365
    const/4 v4, 0x0

    .line 2367
    const/4 v3, 0x0

    .line 2369
    const/4 v11, 0x0

    .line 2370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v5, 0x7

    if-lt v2, v5, :cond_2

    .line 2371
    new-instance v11, Lcom/ibm/icu/text/MessageFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v11, v2, v5}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 2374
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v20

    .line 2375
    const/4 v2, 0x0

    move v15, v2

    move v8, v3

    move/from16 v5, v16

    move/from16 v16, v4

    move/from16 v4, v18

    .line 2376
    :goto_2
    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v15, v2, :cond_b

    .line 2377
    aget-object v2, v20, v15

    instance-of v2, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_a

    .line 2379
    aget-object v2, v20, v15

    check-cast v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 2380
    iget-boolean v3, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v3, :cond_31

    .line 2388
    const/4 v3, -0x1

    if-ne v5, v3, :cond_31

    .line 2390
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, v20

    array-length v6, v0

    if-ge v3, v6, :cond_31

    add-int/lit8 v3, v15, 0x1

    aget-object v3, v20, v3

    instance-of v3, v3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v3, :cond_31

    add-int/lit8 v3, v15, 0x1

    aget-object v3, v20, v3

    check-cast v3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v3, v3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v3, :cond_31

    .line 2395
    iget v0, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    move/from16 v16, v0

    move/from16 v17, v4

    move/from16 v19, v16

    move/from16 v16, v15

    .line 2400
    :goto_3
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_5

    .line 2402
    iget v6, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    .line 2403
    move/from16 v0, v16

    if-ne v0, v15, :cond_3

    move/from16 v6, v19

    .line 2408
    :cond_3
    iget-char v5, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;)I

    move-result v4

    .line 2411
    if-gez v4, :cond_8

    .line 2415
    add-int/lit8 v2, v19, -0x1

    .line 2416
    if-nez v2, :cond_4

    .line 2418
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2419
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2420
    if-eqz v14, :cond_0

    .line 2421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    goto/16 :goto_1

    :cond_4
    move/from16 v15, v16

    move/from16 v8, v17

    move/from16 v5, v16

    move/from16 v4, v17

    move/from16 v16, v2

    .line 2427
    goto :goto_2

    .line 2430
    :cond_5
    iget-char v3, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v5, 0x6c

    if-eq v3, v5, :cond_8

    .line 2432
    const/16 v16, -0x1

    .line 2435
    iget-char v5, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v6, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v2

    .line 2438
    if-gez v2, :cond_30

    .line 2439
    const/16 v3, -0x7d00

    if-ne v2, v3, :cond_9

    .line 2443
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v20

    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 2448
    add-int/lit8 v2, v15, 0x1

    :try_start_0
    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2459
    if-nez v2, :cond_6

    .line 2460
    add-int/lit8 v2, v15, 0x1

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/String;

    .line 2461
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 2462
    const/4 v3, 0x0

    .line 2466
    :goto_4
    if-ge v3, v5, :cond_7

    .line 2468
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2469
    invoke-static {v6}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2470
    add-int/lit8 v3, v3, 0x1

    .line 2473
    goto :goto_4

    .line 2449
    :catch_0
    move-exception v2

    .line 2450
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2451
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2452
    if-eqz v14, :cond_0

    .line 2453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    goto/16 :goto_1

    .line 2476
    :cond_7
    if-ne v3, v5, :cond_8

    .line 2477
    add-int/lit8 v15, v15, 0x1

    :cond_8
    :goto_5
    move/from16 v3, v17

    move/from16 v17, v4

    move/from16 v4, v19

    .line 2507
    :goto_6
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    move v8, v3

    move/from16 v5, v16

    move/from16 v16, v4

    move/from16 v4, v17

    goto/16 :goto_2

    .line 2482
    :cond_9
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2483
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2484
    if-eqz v14, :cond_0

    .line 2485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    goto/16 :goto_1

    .line 2494
    :cond_a
    const/16 v17, -0x1

    .line 2495
    const/4 v2, 0x1

    new-array v7, v2, [Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, v20

    move v6, v15

    .line 2496
    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I

    move-result v4

    .line 2497
    const/4 v2, 0x0

    aget-boolean v2, v7, v2

    if-nez v2, :cond_2f

    .line 2499
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2500
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2501
    if-eqz v14, :cond_0

    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    goto/16 :goto_1

    .line 2511
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_2e

    .line 2512
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2513
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2e

    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, v20

    array-length v2, v0

    if-eqz v2, :cond_2e

    .line 2515
    move-object/from16 v0, v20

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v20, v2

    .line 2516
    instance-of v3, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v3, :cond_2e

    check-cast v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v2, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v2, :cond_2e

    .line 2517
    add-int/lit8 v4, v4, 0x1

    move v11, v4

    .line 2523
    :goto_7
    iget-object v2, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    if-eqz v2, :cond_c

    .line 2524
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/DayPeriodRules;

    move-result-object v3

    .line 2526
    const/16 v2, 0xa

    invoke-virtual {v10, v2}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2529
    iget-object v2, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v2

    .line 2533
    double-to-int v4, v2

    .line 2534
    int-to-double v6, v4

    sub-double/2addr v2, v6

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_14

    const/16 v2, 0x1e

    .line 2537
    :goto_8
    const/16 v3, 0xb

    invoke-virtual {v10, v3, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2538
    const/16 v3, 0xc

    invoke-virtual {v10, v3, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2590
    :cond_c
    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2615
    :try_start_1
    iget-object v2, v12, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 2616
    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    if-nez v3, :cond_d

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v2, v3, :cond_12

    .line 2622
    :cond_d
    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    if-eqz v3, :cond_e

    .line 2623
    invoke-virtual {v10}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/Calendar;

    .line 2624
    invoke-virtual {v3}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 2625
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2627
    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v10, v3, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2630
    :cond_e
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v2, v3, :cond_12

    .line 2631
    invoke-virtual {v10}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    move-object v4, v0

    .line 2632
    invoke-virtual {v4}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v9

    .line 2633
    const/4 v3, 0x0

    .line 2634
    instance-of v5, v9, Lcom/ibm/icu/util/BasicTimeZone;

    if-eqz v5, :cond_f

    .line 2635
    move-object v0, v9

    check-cast v0, Lcom/ibm/icu/util/BasicTimeZone;

    move-object v3, v0

    .line 2639
    :cond_f
    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2640
    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2641
    invoke-virtual {v4}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 2645
    const/4 v6, 0x2

    new-array v8, v6, [I

    .line 2646
    if-eqz v3, :cond_1f

    .line 2647
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v6, :cond_1e

    .line 2648
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    .line 2672
    :cond_10
    :goto_a
    const/4 v6, 0x1

    aget v6, v8, v6

    .line 2673
    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v7, :cond_22

    .line 2674
    const/4 v2, 0x1

    aget v2, v8, v2

    if-eqz v2, :cond_2d

    .line 2676
    const/4 v2, 0x0

    .line 2735
    :cond_11
    :goto_b
    const/16 v3, 0xf

    const/4 v4, 0x0

    aget v4, v8, v4

    invoke-virtual {v10, v3, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2736
    const/16 v3, 0x10

    invoke-virtual {v10, v3, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2752
    :cond_12
    if-eqz p2, :cond_13

    .line 2753
    invoke-virtual {v10}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 2754
    invoke-virtual {v10}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 2757
    :cond_13
    if-eqz v14, :cond_0

    .line 2758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    goto/16 :goto_1

    .line 2534
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 2542
    :cond_15
    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2543
    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 2550
    :cond_16
    :goto_c
    sget-boolean v4, Lcom/ibm/icu/text/SimpleDateFormat;->$assertionsDisabled:Z

    if-nez v4, :cond_19

    if-ltz v2, :cond_17

    const/16 v4, 0x17

    if-le v2, v4, :cond_19

    :cond_17
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2545
    :cond_18
    const/16 v2, 0xa

    invoke-virtual {v10, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 2548
    if-nez v2, :cond_16

    const/16 v2, 0xc

    goto :goto_c

    .line 2554
    :cond_19
    if-eqz v2, :cond_1a

    const/16 v4, 0xd

    if-gt v4, v2, :cond_1b

    const/16 v4, 0x17

    if-gt v2, v4, :cond_1b

    .line 2556
    :cond_1a
    const/16 v3, 0xb

    invoke-virtual {v10, v3, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto/16 :goto_9

    .line 2569
    :cond_1b
    const/16 v4, 0xc

    if-ne v2, v4, :cond_1c

    const/4 v2, 0x0

    .line 2570
    :cond_1c
    int-to-double v4, v2

    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    int-to-double v6, v2

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    div-double v6, v6, v16

    add-double/2addr v4, v6

    .line 2571
    iget-object v2, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v2

    .line 2573
    sub-double v2, v4, v2

    .line 2576
    const-wide/high16 v4, -0x3fe8000000000000L    # -6.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_1d

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1d

    .line 2578
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto/16 :goto_9

    .line 2580
    :cond_1d
    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto/16 :goto_9

    .line 2651
    :cond_1e
    const/4 v6, 0x3

    const/4 v7, 0x3

    :try_start_2
    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_a

    .line 2742
    :catch_1
    move-exception v2

    .line 2743
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2744
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2745
    if-eqz v14, :cond_0

    .line 2746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    goto/16 :goto_1

    .line 2657
    :cond_1f
    const/4 v6, 0x1

    :try_start_3
    invoke-virtual {v9, v4, v5, v6, v8}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 2659
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v6, :cond_20

    const/4 v6, 0x1

    aget v6, v8, v6

    if-nez v6, :cond_21

    :cond_20
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v6, :cond_10

    const/4 v6, 0x1

    aget v6, v8, v6

    if-nez v6, :cond_10

    .line 2666
    :cond_21
    const-wide/32 v6, 0x5265c00

    sub-long v6, v4, v6

    const/4 v12, 0x1

    invoke-virtual {v9, v6, v7, v12, v8}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    goto/16 :goto_a

    .line 2679
    :cond_22
    const/4 v2, 0x1

    aget v2, v8, v2

    if-nez v2, :cond_2d

    .line 2680
    if-eqz v3, :cond_2c

    .line 2681
    const/4 v2, 0x0

    aget v2, v8, v2

    int-to-long v6, v2

    add-long v12, v4, v6

    .line 2685
    const/4 v4, 0x0

    const/4 v2, 0x0

    move-wide v6, v12

    .line 2689
    :cond_23
    const/4 v5, 0x1

    invoke-virtual {v3, v6, v7, v5}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v5

    .line 2690
    if-nez v5, :cond_26

    move-wide/from16 v16, v6

    move-wide v6, v12

    .line 2702
    :cond_24
    :goto_d
    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v9}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v9

    .line 2703
    if-nez v9, :cond_27

    .line 2713
    :goto_e
    if-eqz v5, :cond_29

    if-eqz v9, :cond_29

    .line 2714
    sub-long v16, v12, v16

    sub-long/2addr v6, v12

    cmp-long v3, v16, v6

    if-lez v3, :cond_28

    .line 2729
    :cond_25
    :goto_f
    if-nez v2, :cond_11

    .line 2731
    const v2, 0x36ee80

    goto/16 :goto_b

    .line 2693
    :cond_26
    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v6

    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    .line 2694
    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    .line 2695
    if-eqz v4, :cond_23

    move-wide/from16 v16, v6

    move-wide v6, v12

    .line 2696
    goto :goto_d

    .line 2706
    :cond_27
    invoke-virtual {v9}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v6

    .line 2707
    invoke-virtual {v9}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    .line 2708
    if-eqz v2, :cond_24

    goto :goto_e

    :cond_28
    move v2, v4

    .line 2717
    goto :goto_f

    .line 2719
    :cond_29
    if-eqz v5, :cond_2a

    if-eqz v4, :cond_2a

    move v2, v4

    .line 2720
    goto :goto_f

    .line 2721
    :cond_2a
    if-eqz v9, :cond_2b

    if-nez v2, :cond_25

    .line 2724
    :cond_2b
    invoke-virtual {v3}, Lcom/ibm/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v2

    goto :goto_f

    .line 2727
    :cond_2c
    invoke-virtual {v9}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    goto :goto_f

    :cond_2d
    move v2, v6

    goto/16 :goto_b

    :cond_2e
    move v11, v4

    goto/16 :goto_7

    :cond_2f
    move v3, v8

    move/from16 v21, v16

    move/from16 v16, v17

    move/from16 v17, v4

    move/from16 v4, v21

    goto/16 :goto_6

    :cond_30
    move v4, v2

    goto/16 :goto_5

    :cond_31
    move/from16 v17, v8

    move/from16 v19, v16

    move/from16 v16, v5

    goto/16 :goto_3

    :cond_32
    move-object v14, v3

    move-object/from16 v10, p2

    move-object/from16 p2, v2

    goto/16 :goto_0
.end method

.method protected patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;
    .locals 2

    .prologue
    .line 1494
    invoke-static {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v0

    .line 1495
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1496
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v0, v1, v0

    .line 1498
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Lcom/ibm/icu/text/DisplayContext;)V
    .locals 1

    .prologue
    .line 1300
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    .line 1301
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 1306
    :cond_1
    return-void
.end method

.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2221
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V

    .line 2222
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 2223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 2225
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2226
    iput-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 2229
    iput-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 2231
    :cond_1
    return-void
.end method

.method protected subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1535
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 1536
    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    .line 1537
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1560
    .line 1561
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    .line 1562
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v6

    .line 1563
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1564
    const/4 v4, 0x0

    .line 1566
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v13

    .line 1567
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    .line 1568
    const/16 v2, 0x6c

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal pattern character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1577
    :cond_2
    sget-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v2, v2, v13

    .line 1578
    const/4 v5, 0x0

    .line 1580
    if-ltz v2, :cond_3

    .line 1581
    const/16 v3, 0x22

    if-eq v13, v3, :cond_8

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    :goto_1
    move v5, v2

    .line 1584
    :cond_3
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    .line 1585
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->OTHER:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 1587
    packed-switch v13, :pswitch_data_0

    .line 2023
    :pswitch_0
    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 2027
    :cond_4
    :goto_2
    if-nez p5, :cond_7

    if-eqz p6, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2028
    const/4 v2, 0x0

    .line 2029
    sget-object v3, Lcom/ibm/icu/text/SimpleDateFormat$1;->$SwitchMap$com$ibm$icu$text$DisplayContext:[I

    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/text/DisplayContext;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 2044
    :cond_5
    :goto_3
    if-eqz v2, :cond_7

    .line 2045
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v2, :cond_6

    .line 2047
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v2

    iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 2049
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2050
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    const/16 v5, 0x300

    invoke-static {v3, v2, v4, v5}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v2

    .line 2052
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2057
    :cond_7
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2058
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    sget-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v3, v3, v13

    if-ne v2, v3, :cond_5f

    .line 2059
    move-object/from16 v0, p7

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2060
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int v2, v2, p4

    sub-int/2addr v2, v12

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_0

    .line 1581
    :cond_8
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getRelatedYear()I

    move-result v2

    goto/16 :goto_1

    .line 1589
    :pswitch_1
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "chinese"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "dangi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1591
    :cond_9
    const/4 v6, 0x1

    const/16 v7, 0x9

    move-object v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1593
    :cond_a
    const/4 v2, 0x5

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 1594
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1595
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1596
    :cond_b
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_c

    .line 1597
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1598
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1600
    :cond_c
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1601
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1606
    :pswitch_2
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v5, v2, :cond_d

    .line 1607
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    add-int/lit8 v3, v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1613
    :cond_d
    :pswitch_3
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v4, "hebr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v4, "y=hebr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_f

    :cond_e
    const/16 v2, 0x1388

    if-le v5, v2, :cond_f

    const/16 v2, 0x1770

    if-ge v5, v2, :cond_f

    .line 1615
    add-int/lit16 v5, v5, -0x1388

    .line 1623
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_10

    .line 1624
    const/4 v6, 0x2

    const/4 v7, 0x2

    move-object v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1626
    :cond_10
    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1631
    :pswitch_4
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "hebrew"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1632
    const/4 v2, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v2

    .line 1633
    if-eqz v2, :cond_11

    const/4 v4, 0x6

    if-ne v5, v4, :cond_11

    const/4 v4, 0x3

    move/from16 v0, p3

    if-lt v0, v4, :cond_11

    .line 1634
    const/16 v5, 0xd

    .line 1636
    :cond_11
    if-nez v2, :cond_12

    const/4 v2, 0x6

    if-lt v5, v2, :cond_12

    const/4 v2, 0x3

    move/from16 v0, p3

    if-ge v0, v2, :cond_12

    .line 1637
    add-int/lit8 v5, v5, -0x1

    .line 1640
    :cond_12
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v4, 0x7

    if-lt v2, v4, :cond_13

    const/16 v2, 0x16

    .line 1641
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    move v8, v2

    .line 1643
    :goto_4
    const/4 v2, 0x5

    move/from16 v0, p3

    if-ne v0, v2, :cond_17

    .line 1644
    const/4 v2, 0x2

    if-ne v13, v2, :cond_15

    .line 1645
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v2, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    if-eqz v8, :cond_14

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    :goto_5
    move-object/from16 v0, p1

    invoke-static {v3, v5, v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1649
    :goto_6
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1641
    :cond_13
    const/4 v2, 0x0

    move v8, v2

    goto :goto_4

    .line 1645
    :cond_14
    const/4 v2, 0x0

    goto :goto_5

    .line 1647
    :cond_15
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v2, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    if-eqz v8, :cond_16

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    :goto_7
    move-object/from16 v0, p1

    invoke-static {v3, v5, v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    const/4 v2, 0x0

    goto :goto_7

    .line 1650
    :cond_17
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_1b

    .line 1651
    const/4 v2, 0x2

    if-ne v13, v2, :cond_19

    .line 1652
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v2, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v8, :cond_18

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    :goto_8
    move-object/from16 v0, p1

    invoke-static {v3, v5, v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1653
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1652
    :cond_18
    const/4 v2, 0x0

    goto :goto_8

    .line 1655
    :cond_19
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v2, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v8, :cond_1a

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    :goto_9
    move-object/from16 v0, p1

    invoke-static {v3, v5, v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1656
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1655
    :cond_1a
    const/4 v2, 0x0

    goto :goto_9

    .line 1658
    :cond_1b
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_1f

    .line 1659
    const/4 v2, 0x2

    if-ne v13, v2, :cond_1d

    .line 1660
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v8, :cond_1c

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    :goto_a
    move-object/from16 v0, p1

    invoke-static {v3, v5, v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1661
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1660
    :cond_1c
    const/4 v2, 0x0

    goto :goto_a

    .line 1663
    :cond_1d
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v2, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v8, :cond_1e

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    :goto_b
    move-object/from16 v0, p1

    invoke-static {v3, v5, v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1664
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1663
    :cond_1e
    const/4 v2, 0x0

    goto :goto_b

    .line 1667
    :cond_1f
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1668
    add-int/lit8 v5, v5, 0x1

    const v7, 0x7fffffff

    move-object v2, p0

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    .line 1669
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 1670
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1671
    const/4 v4, 0x0

    if-eqz v8, :cond_20

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v2, v2, v5

    :goto_c
    move-object/from16 v0, p1

    invoke-static {v3, v4, v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_20
    const/4 v2, 0x0

    goto :goto_c

    .line 1675
    :pswitch_5
    if-nez v5, :cond_21

    .line 1676
    const/16 v2, 0xb

    .line 1677
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    .line 1676
    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1680
    :cond_21
    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1686
    :pswitch_6
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const/4 v3, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1687
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1688
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_23

    .line 1689
    div-int/lit8 v5, v5, 0x64

    .line 1693
    :cond_22
    :goto_d
    new-instance v2, Ljava/text/FieldPosition;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1694
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    int-to-long v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1695
    const/4 v3, 0x3

    move/from16 v0, p3

    if-le v0, v3, :cond_4

    .line 1696
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    add-int/lit8 v4, p3, -0x3

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1697
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1690
    :cond_23
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_22

    .line 1691
    div-int/lit8 v5, v5, 0xa

    goto :goto_d

    .line 1702
    :pswitch_7
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ge v0, v2, :cond_24

    .line 1703
    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1708
    :cond_24
    const/4 v2, 0x7

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v5

    .line 1711
    :pswitch_8
    const/4 v2, 0x5

    move/from16 v0, p3

    if-ne v0, v2, :cond_25

    .line 1712
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1713
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1714
    :cond_25
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_26

    .line 1715
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1716
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1717
    :cond_26
    const/4 v2, 0x6

    move/from16 v0, p3

    if-ne v0, v2, :cond_27

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 1718
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1719
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1721
    :cond_27
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1722
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1727
    :pswitch_9
    const/4 v2, 0x5

    move/from16 v0, p3

    if-lt v0, v2, :cond_28

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-nez v2, :cond_29

    .line 1728
    :cond_28
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1730
    :cond_29
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1734
    :pswitch_a
    if-nez v5, :cond_2a

    .line 1735
    const/16 v2, 0xa

    .line 1736
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    .line 1735
    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1739
    :cond_2a
    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1744
    :pswitch_b
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ge v0, v2, :cond_2b

    .line 1746
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v3

    .line 1747
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 1752
    :goto_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v11, v2

    .line 1753
    goto/16 :goto_2

    .line 1749
    :cond_2b
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v3

    .line 1750
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_e

    .line 1755
    :pswitch_c
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ge v0, v2, :cond_2c

    .line 1757
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v2

    .line 1765
    :goto_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1758
    :cond_2c
    const/4 v2, 0x5

    move/from16 v0, p3

    if-ne v0, v2, :cond_2d

    .line 1760
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 1763
    :cond_2d
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 1768
    :pswitch_d
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2e

    .line 1770
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v3

    .line 1771
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 1777
    :goto_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v11, v2

    .line 1778
    goto/16 :goto_2

    .line 1772
    :cond_2e
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_61

    .line 1774
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v3

    .line 1775
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_10

    .line 1780
    :pswitch_e
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_30

    .line 1782
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    .line 1794
    :cond_2f
    :goto_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1783
    :cond_30
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_31

    .line 1785
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 1786
    :cond_31
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_32

    .line 1788
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 1789
    :cond_32
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_2f

    .line 1791
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    .line 1792
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_11

    .line 1797
    :pswitch_f
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_34

    .line 1799
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    .line 1804
    :cond_33
    :goto_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1800
    :cond_34
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_33

    .line 1802
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 1807
    :pswitch_10
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_36

    .line 1809
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    .line 1823
    :cond_35
    :goto_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1810
    :cond_36
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_37

    .line 1812
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1813
    :cond_37
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_38

    .line 1815
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1816
    :cond_38
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_39

    .line 1818
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1819
    :cond_39
    const/4 v2, 0x5

    move/from16 v0, p3

    if-ne v0, v2, :cond_35

    .line 1821
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 1826
    :pswitch_11
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_3b

    .line 1828
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    .line 1842
    :cond_3a
    :goto_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1829
    :cond_3b
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_3c

    .line 1831
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 1832
    :cond_3c
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_3d

    .line 1834
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 1835
    :cond_3d
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_3e

    .line 1837
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 1838
    :cond_3e
    const/4 v2, 0x5

    move/from16 v0, p3

    if-ne v0, v2, :cond_3a

    .line 1840
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v2, v3, v6, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 1846
    :pswitch_12
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ge v0, v2, :cond_3f

    .line 1847
    const/4 v6, 0x1

    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1852
    :cond_3f
    const/4 v2, 0x7

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 1853
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_40

    .line 1854
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v3, v2, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1855
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1856
    :cond_40
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_41

    .line 1857
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v3, v2, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1858
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1859
    :cond_41
    const/4 v3, 0x6

    move/from16 v0, p3

    if-ne v0, v3, :cond_42

    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v3, :cond_42

    .line 1860
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v3, v2, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1861
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1863
    :cond_42
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v3, v2, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1864
    sget-object v11, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_2

    .line 1868
    :pswitch_13
    const/4 v2, 0x4

    move/from16 v0, p3

    if-lt v0, v2, :cond_43

    .line 1869
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    div-int/lit8 v3, v5, 0x3

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1870
    :cond_43
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_44

    .line 1871
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    div-int/lit8 v3, v5, 0x3

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1873
    :cond_44
    div-int/lit8 v2, v5, 0x3

    add-int/lit8 v5, v2, 0x1

    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1877
    :pswitch_14
    const/4 v2, 0x4

    move/from16 v0, p3

    if-lt v0, v2, :cond_45

    .line 1878
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    div-int/lit8 v3, v5, 0x3

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1879
    :cond_45
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_46

    .line 1880
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    div-int/lit8 v3, v5, 0x3

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1882
    :cond_46
    div-int/lit8 v2, v5, 0x3

    add-int/lit8 v5, v2, 0x1

    const v7, 0x7fffffff

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    .line 1890
    :pswitch_15
    const/16 v2, 0xb

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    .line 1891
    const/4 v2, 0x0

    .line 1896
    const/16 v4, 0xc

    if-ne v3, v4, :cond_49

    iget-boolean v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v3, :cond_47

    const/16 v3, 0xc

    .line 1897
    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_49

    :cond_47
    iget-boolean v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v3, :cond_48

    const/16 v3, 0xd

    .line 1898
    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_49

    .line 1902
    :cond_48
    const/16 v2, 0x9

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 1904
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4a

    .line 1905
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v2, v3, v2

    .line 1913
    :cond_49
    :goto_15
    if-nez v2, :cond_4d

    .line 1916
    const/16 v4, 0x61

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    goto/16 :goto_2

    .line 1906
    :cond_4a
    const/4 v3, 0x4

    move/from16 v0, p3

    if-eq v0, v3, :cond_4b

    const/4 v3, 0x5

    move/from16 v0, p3

    if-le v0, v3, :cond_4c

    .line 1907
    :cond_4b
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v2, v3, v2

    goto :goto_15

    .line 1909
    :cond_4c
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v2, v3, v2

    goto :goto_15

    .line 1918
    :cond_4d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1927
    :pswitch_16
    invoke-virtual {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/DayPeriodRules;

    move-result-object v4

    .line 1928
    if-nez v4, :cond_4e

    .line 1931
    const/16 v4, 0x61

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    goto/16 :goto_2

    .line 1936
    :cond_4e
    const/16 v2, 0xb

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v5

    .line 1937
    const/4 v2, 0x0

    .line 1938
    const/4 v3, 0x0

    .line 1939
    iget-boolean v6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v6, :cond_4f

    const/16 v2, 0xc

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 1940
    :cond_4f
    iget-boolean v6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v6, :cond_50

    const/16 v3, 0xd

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    .line 1944
    :cond_50
    if-nez v5, :cond_51

    if-nez v2, :cond_51

    if-nez v3, :cond_51

    invoke-virtual {v4}, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1945
    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 1957
    :goto_16
    sget-boolean v3, Lcom/ibm/icu/text/SimpleDateFormat;->$assertionsDisabled:Z

    if-nez v3, :cond_53

    if-nez v2, :cond_53

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1946
    :cond_51
    const/16 v6, 0xc

    if-ne v5, v6, :cond_52

    if-nez v2, :cond_52

    if-nez v3, :cond_52

    invoke-virtual {v4}, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1947
    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_16

    .line 1949
    :cond_52
    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v2

    goto :goto_16

    .line 1958
    :cond_53
    const/4 v3, 0x0

    .line 1961
    sget-object v6, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v2, v6, :cond_54

    sget-object v6, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v2, v6, :cond_54

    sget-object v6, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v2, v6, :cond_54

    .line 1963
    invoke-virtual {v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v3

    .line 1964
    const/4 v6, 0x3

    move/from16 v0, p3

    if-gt v0, v6, :cond_57

    .line 1965
    iget-object v6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v6, v6, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v3, v6, v3

    .line 1978
    :cond_54
    :goto_17
    if-nez v3, :cond_60

    sget-object v6, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v2, v6, :cond_55

    sget-object v6, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v2, v6, :cond_60

    .line 1981
    :cond_55
    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v3

    .line 1982
    invoke-virtual {v3}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v2

    .line 1984
    const/4 v4, 0x3

    move/from16 v0, p3

    if-gt v0, v4, :cond_5a

    .line 1985
    iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v4, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v2, v4, v2

    .line 1994
    :goto_18
    sget-object v4, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v3, v4, :cond_56

    sget-object v4, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v3, v4, :cond_56

    if-nez v2, :cond_5d

    .line 1997
    :cond_56
    const/16 v4, 0x61

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V

    goto/16 :goto_2

    .line 1966
    :cond_57
    const/4 v6, 0x4

    move/from16 v0, p3

    if-eq v0, v6, :cond_58

    const/4 v6, 0x5

    move/from16 v0, p3

    if-le v0, v6, :cond_59

    .line 1967
    :cond_58
    iget-object v6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v6, v6, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v3, v6, v3

    goto :goto_17

    .line 1969
    :cond_59
    iget-object v6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v6, v6, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v3, v6, v3

    goto :goto_17

    .line 1986
    :cond_5a
    const/4 v4, 0x4

    move/from16 v0, p3

    if-eq v0, v4, :cond_5b

    const/4 v4, 0x5

    move/from16 v0, p3

    if-le v0, v4, :cond_5c

    .line 1987
    :cond_5b
    iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v4, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v2, v4, v2

    goto :goto_18

    .line 1989
    :cond_5c
    iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v4, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v2, v4, v2

    goto :goto_18

    .line 2000
    :cond_5d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 2007
    :pswitch_17
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v2}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 2031
    :pswitch_18
    const/4 v2, 0x1

    .line 2032
    goto/16 :goto_3

    .line 2035
    :pswitch_19
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v3, v3, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 2036
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 2037
    sget-object v3, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    move-object/from16 v0, p6

    if-ne v0, v3, :cond_5e

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    goto/16 :goto_3

    :cond_5e
    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    goto/16 :goto_3

    .line 2061
    :cond_5f
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v3, v3, v13

    if-ne v2, v3, :cond_0

    .line 2063
    move-object/from16 v0, p7

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2064
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int v2, v2, p4

    sub-int/2addr v2, v12

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_0

    :cond_60
    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_18

    :cond_61
    move-object v2, v11

    move-object v3, v4

    goto/16 :goto_10

    .line 1587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_e
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 2029
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2202
    iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    .line 2203
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ibm/icu/text/SimpleDateFormat;->fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V

    .line 2209
    :goto_0
    return-void

    .line 2205
    :cond_0
    invoke-virtual {p1, p4}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2206
    invoke-virtual {p1, p5}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 2207
    int-to-long v0, p3

    new-instance v2, Ljava/text/FieldPosition;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
