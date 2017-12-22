.class public abstract Lcom/ibm/icu/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ibm/icu/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DATE_PRECEDENCE:[[[I

.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field static final DOW_PRECEDENCE:[[[I

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FIND_ZONE_TRANSITION_TIME_UNITS:[I

.field private static final GREGORIAN_MONTH_COUNT:[[I

.field private static final LIMITS:[[I

.field protected static final MAX_DATE:Ljava/util/Date;

.field protected static final MIN_DATE:Ljava/util/Date;

.field private static final PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Calendar$PatternData;",
            ">;"
        }
    .end annotation
.end field

.field private static STAMP_MAX:I

.field private static final WEEK_DATA_CACHE:Lcom/ibm/icu/util/Calendar$WeekDataCache;


# instance fields
.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private transient areAllFieldsSet:Z

.field private transient areFieldsSet:Z

.field private transient areFieldsVirtuallySet:Z

.field private transient fields:[I

.field private firstDayOfWeek:I

.field private transient gregorianDayOfMonth:I

.field private transient gregorianDayOfYear:I

.field private transient gregorianMonth:I

.field private transient gregorianYear:I

.field private transient internalSetMask:I

.field private transient isTimeSet:Z

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field private transient nextStamp:I

.field private repeatedWallTime:I

.field private skippedWallTime:I

.field private transient stamp:[I

.field private time:J

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field private weekendCease:I

.field private weekendCeaseMillis:I

.field private weekendOnset:I

.field private weekendOnsetMillis:I

.field private zone:Lcom/ibm/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x1

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x4

    .line 642
    const-class v0, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/util/Calendar;->$assertionsDisabled:Z

    .line 1280
    new-instance v0, Ljava/util/Date;

    const-wide v4, -0x28ec76c40e65000L

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/ibm/icu/util/Calendar;->MIN_DATE:Ljava/util/Date;

    .line 1302
    new-instance v0, Ljava/util/Date;

    const-wide v4, 0x28d47dbbf19b000L

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/ibm/icu/util/Calendar;->MAX_DATE:Ljava/util/Date;

    .line 1481
    const/16 v0, 0x2710

    sput v0, Lcom/ibm/icu/util/Calendar;->STAMP_MAX:I

    .line 3523
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/Calendar;->PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 3526
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "HH:mm:ss z"

    aput-object v3, v0, v2

    const-string/jumbo v3, "HH:mm:ss z"

    aput-object v3, v0, v1

    const-string/jumbo v3, "HH:mm:ss"

    aput-object v3, v0, v8

    const-string/jumbo v3, "HH:mm"

    aput-object v3, v0, v9

    const-string/jumbo v3, "EEEE, yyyy MMMM dd"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "yyyy MMMM d"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "yyyy MMM d"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "yy/MM/dd"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "{1} {0}"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "{1} {0}"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "{1} {0}"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "{1} {0}"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "{1} {0}"

    aput-object v4, v0, v3

    sput-object v0, Lcom/ibm/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    .line 4308
    const/16 v0, 0x17

    new-array v0, v0, [[I

    new-array v3, v2, [I

    aput-object v3, v0, v2

    new-array v3, v2, [I

    aput-object v3, v0, v1

    new-array v3, v2, [I

    aput-object v3, v0, v8

    new-array v3, v2, [I

    aput-object v3, v0, v9

    new-array v3, v2, [I

    aput-object v3, v0, v7

    const/4 v3, 0x5

    new-array v4, v2, [I

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v2, [I

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-array v4, v2, [I

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-array v4, v7, [I

    fill-array-data v4, :array_2

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-array v4, v7, [I

    fill-array-data v4, :array_3

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-array v4, v7, [I

    fill-array-data v4, :array_4

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-array v4, v7, [I

    fill-array-data v4, :array_5

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-array v4, v7, [I

    fill-array-data v4, :array_6

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-array v4, v7, [I

    fill-array-data v4, :array_7

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-array v4, v7, [I

    fill-array-data v4, :array_8

    aput-object v4, v0, v3

    const/16 v3, 0x11

    new-array v4, v2, [I

    aput-object v4, v0, v3

    const/16 v3, 0x12

    new-array v4, v7, [I

    fill-array-data v4, :array_9

    aput-object v4, v0, v3

    const/16 v3, 0x13

    new-array v4, v2, [I

    aput-object v4, v0, v3

    const/16 v3, 0x14

    new-array v4, v7, [I

    fill-array-data v4, :array_a

    aput-object v4, v0, v3

    const/16 v3, 0x15

    new-array v4, v7, [I

    fill-array-data v4, :array_b

    aput-object v4, v0, v3

    const/16 v3, 0x16

    new-array v4, v7, [I

    fill-array-data v4, :array_c

    aput-object v4, v0, v3

    sput-object v0, Lcom/ibm/icu/util/Calendar;->LIMITS:[[I

    .line 4889
    new-instance v0, Lcom/ibm/icu/util/Calendar$WeekDataCache;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/ibm/icu/util/Calendar$WeekDataCache;-><init>(Lcom/ibm/icu/util/Calendar$1;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar;->WEEK_DATA_CACHE:Lcom/ibm/icu/util/Calendar$WeekDataCache;

    .line 5190
    new-array v0, v8, [[[I

    const/16 v3, 0xa

    new-array v3, v3, [[I

    new-array v4, v1, [I

    const/4 v5, 0x5

    aput v5, v4, v2

    aput-object v4, v3, v2

    new-array v4, v8, [I

    fill-array-data v4, :array_d

    aput-object v4, v3, v1

    new-array v4, v8, [I

    fill-array-data v4, :array_e

    aput-object v4, v3, v8

    new-array v4, v8, [I

    fill-array-data v4, :array_f

    aput-object v4, v3, v9

    new-array v4, v8, [I

    fill-array-data v4, :array_10

    aput-object v4, v3, v7

    const/4 v4, 0x5

    new-array v5, v8, [I

    fill-array-data v5, :array_11

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v8, [I

    fill-array-data v5, :array_12

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v1, [I

    const/4 v6, 0x6

    aput v6, v5, v2

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v8, [I

    fill-array-data v5, :array_13

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-array v5, v8, [I

    fill-array-data v5, :array_14

    aput-object v5, v3, v4

    aput-object v3, v0, v2

    const/4 v3, 0x5

    new-array v3, v3, [[I

    new-array v4, v1, [I

    aput v9, v4, v2

    aput-object v4, v3, v2

    new-array v4, v1, [I

    aput v7, v4, v2

    aput-object v4, v3, v1

    new-array v4, v1, [I

    const/16 v5, 0x8

    aput v5, v4, v2

    aput-object v4, v3, v8

    new-array v4, v8, [I

    fill-array-data v4, :array_15

    aput-object v4, v3, v9

    new-array v4, v8, [I

    fill-array-data v4, :array_16

    aput-object v4, v3, v7

    aput-object v3, v0, v1

    sput-object v0, Lcom/ibm/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    .line 5212
    new-array v0, v1, [[[I

    new-array v3, v8, [[I

    new-array v4, v1, [I

    const/4 v5, 0x7

    aput v5, v4, v2

    aput-object v4, v3, v2

    new-array v4, v1, [I

    const/16 v5, 0x12

    aput v5, v4, v2

    aput-object v4, v3, v1

    aput-object v3, v0, v2

    sput-object v0, Lcom/ibm/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    .line 5534
    new-array v0, v7, [I

    fill-array-data v0, :array_17

    sput-object v0, Lcom/ibm/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    .line 6114
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v3, v7, [I

    fill-array-data v3, :array_18

    aput-object v3, v0, v2

    new-array v3, v7, [I

    fill-array-data v3, :array_19

    aput-object v3, v0, v1

    new-array v3, v7, [I

    fill-array-data v3, :array_1a

    aput-object v3, v0, v8

    new-array v3, v7, [I

    fill-array-data v3, :array_1b

    aput-object v3, v0, v9

    new-array v3, v7, [I

    fill-array-data v3, :array_1c

    aput-object v3, v0, v7

    const/4 v3, 0x5

    new-array v4, v7, [I

    fill-array-data v4, :array_1d

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v7, [I

    fill-array-data v4, :array_1e

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-array v4, v7, [I

    fill-array-data v4, :array_1f

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-array v4, v7, [I

    fill-array-data v4, :array_20

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-array v4, v7, [I

    fill-array-data v4, :array_21

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-array v4, v7, [I

    fill-array-data v4, :array_22

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-array v4, v7, [I

    fill-array-data v4, :array_23

    aput-object v4, v0, v3

    sput-object v0, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    .line 6255
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "ERA"

    aput-object v3, v0, v2

    const-string/jumbo v2, "YEAR"

    aput-object v2, v0, v1

    const-string/jumbo v1, "MONTH"

    aput-object v1, v0, v8

    const-string/jumbo v1, "WEEK_OF_YEAR"

    aput-object v1, v0, v9

    const-string/jumbo v1, "WEEK_OF_MONTH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "DAY_OF_MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "DAY_OF_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "DAY_OF_WEEK"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "DAY_OF_WEEK_IN_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "HOUR_OF_DAY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "MILLISECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "ZONE_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "DST_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "YEAR_WOY"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "DOW_LOCAL"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "EXTENDED_YEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "JULIAN_DAY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "MILLISECONDS_IN_DAY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 642
    goto/16 :goto_0

    .line 4308
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x7
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x17
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3b
        0x3b
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x3b
        0x3b
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x3e7
        0x3e7
    .end array-data

    :array_7
    .array-data 4
        -0x2932e00
        -0x2932e00
        0x2932e00
        0x2932e00
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x36ee80
        0x36ee80
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x7
        0x7
    .end array-data

    :array_a
    .array-data 4
        -0x7f000000
        -0x7f000000
        0x7f000000
        0x7f000000
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x5265bff
        0x5265bff
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 5190
    :array_d
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x23
        0x11
    .end array-data

    :array_15
    .array-data 4
        0x28
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x28
        0x12
    .end array-data

    .line 5534
    :array_17
    .array-data 4
        0x36ee80
        0x1b7740
        0xea60
        0x3e8
    .end array-data

    .line 6114
    :array_18
    .array-data 4
        0x1f
        0x1f
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x1c
        0x1d
        0x1f
        0x1f
    .end array-data

    :array_1a
    .array-data 4
        0x1f
        0x1f
        0x3b
        0x3c
    .end array-data

    :array_1b
    .array-data 4
        0x1e
        0x1e
        0x5a
        0x5b
    .end array-data

    :array_1c
    .array-data 4
        0x1f
        0x1f
        0x78
        0x79
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x1e
        0x97
        0x98
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x1f
        0xb5
        0xb6
    .end array-data

    :array_1f
    .array-data 4
        0x1f
        0x1f
        0xd4
        0xd5
    .end array-data

    :array_20
    .array-data 4
        0x1e
        0x1e
        0xf3
        0xf4
    .end array-data

    :array_21
    .array-data 4
        0x1f
        0x1f
        0x111
        0x112
    .end array-data

    :array_22
    .array-data 4
        0x1e
        0x1e
        0x130
        0x131
    .end array-data

    :array_23
    .array-data 4
        0x1f
        0x1f
        0x14e
        0x14f
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1563
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 1564
    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    .line 1439
    iput v1, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    .line 1444
    iput v1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    .line 1478
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    .line 1585
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    .line 1588
    invoke-static {p2}, Lcom/ibm/icu/util/Calendar;->getRegionForCalendar(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/Calendar;->setWeekData(Ljava/lang/String;)V

    .line 1591
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/Calendar;->setCalendarLocale(Lcom/ibm/icu/util/ULocale;)V

    .line 1593
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->initInternal()V

    .line 1594
    return-void
.end method

.method static synthetic access$1000()Lcom/ibm/icu/impl/ICUCache;
    .locals 1

    .prologue
    .line 642
    sget-object v0, Lcom/ibm/icu/util/Calendar;->PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$PatternData;
    .locals 1

    .prologue
    .line 642
    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar;->getPatternData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$PatternData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    sget-object v0, Lcom/ibm/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;
    .locals 1

    .prologue
    .line 642
    invoke-static {p0}, Lcom/ibm/icu/util/Calendar;->getWeekDataForRegionInternal(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;

    move-result-object v0

    return-object v0
.end method

.method private final computeGregorianAndDOWFields(I)V
    .locals 3

    .prologue
    .line 5032
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->computeGregorianFields(I)V

    .line 5035
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v1, 0x7

    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result v2

    aput v2, v0, v1

    .line 5038
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 5039
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 5040
    add-int/lit8 v0, v0, 0x7

    .line 5042
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v2, 0x12

    aput v0, v1, v2

    .line 5043
    return-void
.end method

.method private final computeWeekFields()V
    .locals 8

    .prologue
    .line 5116
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v1, 0x13

    aget v2, v0, v1

    .line 5117
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v1, 0x7

    aget v3, v0, v1

    .line 5118
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v1, 0x6

    aget v4, v0, v1

    .line 5130
    add-int/lit8 v0, v3, 0x7

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    rem-int/lit8 v5, v0, 0x7

    .line 5131
    sub-int v0, v3, v4

    add-int/lit16 v0, v0, 0x1b59

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    .line 5132
    add-int/lit8 v1, v4, -0x1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    .line 5133
    rsub-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 5134
    add-int/lit8 v1, v1, 0x1

    .line 5139
    :cond_0
    if-nez v1, :cond_1

    .line 5145
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 5146
    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/Calendar;->weekNumber(II)I

    move-result v0

    .line 5147
    add-int/lit8 v1, v2, -0x1

    .line 5168
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v4, 0x3

    aput v0, v2, v4

    .line 5169
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v2, 0x11

    aput v1, v0, v2

    .line 5172
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    .line 5173
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/Calendar;->weekNumber(II)I

    move-result v3

    aput v3, v1, v2

    .line 5174
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v2, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    aput v0, v1, v2

    .line 5175
    return-void

    .line 5149
    :cond_1
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v6

    .line 5156
    add-int/lit8 v0, v6, -0x5

    if-lt v4, v0, :cond_3

    .line 5157
    add-int v0, v5, v6

    sub-int/2addr v0, v4

    rem-int/lit8 v0, v0, 0x7

    .line 5158
    if-gez v0, :cond_2

    .line 5159
    add-int/lit8 v0, v0, 0x7

    .line 5161
    :cond_2
    rsub-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v0, v7, :cond_3

    add-int/lit8 v0, v4, 0x7

    sub-int/2addr v0, v5

    if-le v0, v6, :cond_3

    .line 5163
    const/4 v0, 0x1

    .line 5164
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private static createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 3

    .prologue
    .line 1822
    .line 1823
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 1824
    invoke-static {p0}, Lcom/ibm/icu/util/Calendar;->getCalendarTypeForLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$CalType;

    move-result-object v0

    .line 1825
    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->UNKNOWN:Lcom/ibm/icu/util/Calendar$CalType;

    if-ne v0, v1, :cond_0

    .line 1827
    sget-object v0, Lcom/ibm/icu/util/Calendar$CalType;->GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1830
    :cond_0
    sget-object v1, Lcom/ibm/icu/util/Calendar$1;->$SwitchMap$com$ibm$icu$util$Calendar$CalType:[I

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar$CalType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1886
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown calendar type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1832
    :pswitch_0
    new-instance v1, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 1889
    :goto_0
    return-object v1

    .line 1836
    :pswitch_1
    new-instance v1, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 1837
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1838
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    goto :goto_0

    .line 1842
    :pswitch_2
    new-instance v1, Lcom/ibm/icu/util/BuddhistCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/BuddhistCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1845
    :pswitch_3
    new-instance v1, Lcom/ibm/icu/util/ChineseCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1848
    :pswitch_4
    new-instance v1, Lcom/ibm/icu/util/CopticCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/CopticCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1851
    :pswitch_5
    new-instance v1, Lcom/ibm/icu/util/DangiCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/DangiCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1854
    :pswitch_6
    new-instance v1, Lcom/ibm/icu/util/EthiopicCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/EthiopicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1857
    :pswitch_7
    new-instance v1, Lcom/ibm/icu/util/EthiopicCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/EthiopicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    move-object v0, v1

    .line 1858
    check-cast v0, Lcom/ibm/icu/util/EthiopicCalendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_0

    .line 1861
    :pswitch_8
    new-instance v1, Lcom/ibm/icu/util/HebrewCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1864
    :pswitch_9
    new-instance v1, Lcom/ibm/icu/util/IndianCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/IndianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1871
    :pswitch_a
    new-instance v1, Lcom/ibm/icu/util/IslamicCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/IslamicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1874
    :pswitch_b
    new-instance v1, Lcom/ibm/icu/util/JapaneseCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/JapaneseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1877
    :pswitch_c
    new-instance v1, Lcom/ibm/icu/util/PersianCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/PersianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1880
    :pswitch_d
    new-instance v1, Lcom/ibm/icu/util/TaiwanCalendar;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/util/TaiwanCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3694
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3719
    :goto_0
    return-object p1

    .line 3698
    :cond_0
    const/16 v0, 0x20

    .line 3699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3701
    new-instance v5, Ljava/text/StringCharacterIterator;

    invoke-direct {v5, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 3703
    invoke-virtual {v5}, Ljava/text/StringCharacterIterator;->first()C

    move-result v2

    move v3, v0

    move v0, v1

    :goto_1
    const v6, 0xffff

    if-eq v2, v6, :cond_5

    .line 3704
    const/16 v6, 0x27

    if-ne v2, v6, :cond_2

    .line 3705
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    move v7, v2

    move v2, v0

    move v0, v7

    .line 3703
    :goto_3
    invoke-virtual {v5}, Ljava/text/StringCharacterIterator;->next()C

    move-result v3

    move v7, v3

    move v3, v0

    move v0, v2

    move v2, v7

    goto :goto_1

    :cond_1
    move v0, v1

    .line 3705
    goto :goto_2

    .line 3709
    :cond_2
    if-nez v0, :cond_4

    if-eq v2, v3, :cond_4

    .line 3710
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 3711
    const-string/jumbo v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3713
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3714
    const-string/jumbo v3, "="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3715
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v7, v2

    move v2, v0

    move v0, v7

    .line 3717
    goto :goto_3

    .line 3719
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;
    .locals 12

    .prologue
    .line 5550
    const/4 v0, 0x0

    .line 5551
    const-wide/16 v4, 0x0

    .line 5553
    sget-object v2, Lcom/ibm/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v6, v2, v1

    .line 5554
    int-to-long v8, v6

    div-long v8, p4, v8

    .line 5555
    int-to-long v10, v6

    div-long v10, p2, v10

    .line 5556
    cmp-long v7, v10, v8

    if-lez v7, :cond_2

    .line 5557
    add-long v0, v8, v10

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const/4 v2, 0x1

    ushr-long/2addr v0, v2

    int-to-long v2, v6

    mul-long v4, v0, v2

    .line 5558
    const/4 v0, 0x1

    .line 5564
    :cond_0
    if-nez v0, :cond_1

    .line 5565
    add-long v2, p2, p4

    const/4 v1, 0x1

    ushr-long v4, v2, v1

    .line 5568
    :cond_1
    if-eqz v0, :cond_5

    .line 5569
    cmp-long v1, v4, p2

    if-eqz v1, :cond_4

    .line 5570
    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 5571
    if-eq v1, p1, :cond_3

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 5572
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/Calendar;->findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    .line 5592
    :goto_1
    return-object v0

    .line 5553
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-wide p2, v4

    .line 5577
    :cond_4
    const-wide/16 v2, 0x1

    sub-long/2addr v4, v2

    move-wide v2, p2

    .line 5582
    :goto_2
    cmp-long v1, v4, p4

    if-nez v1, :cond_6

    .line 5583
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 5579
    :cond_5
    add-long v2, p2, p4

    const/4 v1, 0x1

    ushr-long v4, v2, v1

    move-wide v2, p2

    goto :goto_2

    .line 5585
    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 5586
    if-eq v1, p1, :cond_8

    .line 5587
    if-eqz v0, :cond_7

    .line 5588
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, p0

    move v1, p1

    .line 5590
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/Calendar;->findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v2, p0

    move v3, p1

    move-wide/from16 v6, p4

    .line 5592
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/util/Calendar;->findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method private static firstIslamicStartYearFromGrego(I)I
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2241
    .line 2242
    const/16 v2, 0x7b9

    if-lt p0, v2, :cond_1

    .line 2243
    add-int/lit16 v2, p0, -0x7b9

    div-int/lit8 v2, v2, 0x41

    .line 2244
    add-int/lit16 v3, p0, -0x7b9

    rem-int/lit8 v3, v3, 0x41

    .line 2245
    mul-int/lit8 v2, v2, 0x2

    if-lt v3, v4, :cond_0

    :goto_0
    add-int/2addr v0, v2

    .line 2251
    :goto_1
    add-int/lit16 v1, p0, -0x243

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    .line 2245
    goto :goto_0

    .line 2247
    :cond_1
    add-int/lit16 v2, p0, -0x7b8

    div-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0x1

    .line 2248
    add-int/lit16 v3, p0, -0x7b8

    neg-int v3, v3

    rem-int/lit8 v3, v3, 0x41

    .line 2249
    mul-int/lit8 v2, v2, 0x2

    if-gt v3, v4, :cond_2

    :goto_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected static final floorDivide(II)I
    .locals 1

    .prologue
    .line 6200
    if-ltz p0, :cond_0

    div-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected static final floorDivide(II[I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6221
    if-ltz p0, :cond_0

    .line 6222
    rem-int v0, p0, p1

    aput v0, p2, v2

    .line 6223
    div-int v0, p0, p1

    .line 6227
    :goto_0
    return v0

    .line 6225
    :cond_0
    add-int/lit8 v0, p0, 0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 6226
    mul-int v1, v0, p1

    sub-int v1, p0, v1

    aput v1, p2, v2

    goto :goto_0
.end method

.method protected static final floorDivide(JI[I)I
    .locals 8

    .prologue
    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    .line 6246
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 6247
    int-to-long v0, p2

    rem-long v0, p0, v0

    long-to-int v0, v0

    aput v0, p3, v6

    .line 6248
    int-to-long v0, p2

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 6252
    :goto_0
    return v0

    .line 6250
    :cond_0
    add-long v0, p0, v4

    int-to-long v2, p2

    div-long/2addr v0, v2

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 6251
    int-to-long v2, v0

    int-to-long v4, p2

    mul-long/2addr v2, v4

    sub-long v2, p0, v2

    long-to-int v1, v2

    aput v1, p3, v6

    goto :goto_0
.end method

.method protected static final floorDivide(JJ)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 6181
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    div-long v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private static formatHelper(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/DateFormat;
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v0, -0x1

    const/4 v7, 0x2

    .line 3544
    if-lt p3, v0, :cond_0

    if-le p3, v1, :cond_1

    .line 3545
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal time style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3547
    :cond_1
    if-lt p2, v0, :cond_2

    if-le p2, v1, :cond_3

    .line 3548
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal date style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3551
    :cond_3
    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar$PatternData;->access$600(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;

    move-result-object v2

    .line 3552
    const/4 v1, 0x0

    .line 3556
    if-ltz p3, :cond_5

    if-ltz p2, :cond_5

    .line 3558
    invoke-static {v2, p2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$700(Lcom/ibm/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 3559
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p3

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 3560
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p2, 0x4

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3557
    invoke-static {v0, v7, v7, v3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3564
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3565
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, p2, 0x4

    aget-object v1, v1, v3

    .line 3566
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    .line 3568
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p2, 0x4

    aget-object v4, v4, v5

    .line 3569
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    .line 3567
    invoke-static {v4, v2, v1, v3}, Lcom/ibm/icu/util/Calendar;->mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3585
    :cond_4
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    .line 3586
    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/DateFormat;->setCalendar(Lcom/ibm/icu/util/Calendar;)V

    .line 3587
    return-object v0

    .line 3572
    :cond_5
    if-ltz p3, :cond_6

    .line 3573
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    .line 3574
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3575
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    goto :goto_0

    .line 3577
    :cond_6
    if-ltz p2, :cond_7

    .line 3578
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, p2, 0x4

    aget-object v0, v0, v3

    .line 3579
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3580
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x4

    aget-object v1, v1, v2

    goto :goto_0

    .line 3583
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No date or time style specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getActualHelper(III)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2653
    if-ne p2, p3, :cond_1

    .line 2695
    :cond_0
    :goto_0
    return p2

    .line 2658
    :cond_1
    if-le p3, p2, :cond_3

    move v1, v2

    .line 2662
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 2666
    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->complete()V

    .line 2668
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 2669
    if-gez v1, :cond_4

    :goto_2
    invoke-virtual {v0, p1, v2}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2675
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2681
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    if-eq v2, p2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    if-gtz v1, :cond_0

    :cond_2
    move v2, p2

    .line 2687
    :goto_3
    add-int/2addr v2, v1

    .line 2688
    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 2689
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 2693
    if-ne v2, p3, :cond_5

    move p2, v2

    goto :goto_0

    .line 2658
    :cond_3
    const/4 v0, -0x1

    move v1, v0

    goto :goto_1

    .line 2669
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    move p2, v2

    goto :goto_3
.end method

.method private static getCalendarTypeForLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$CalType;
    .locals 6

    .prologue
    .line 1809
    invoke-static {p0}, Lcom/ibm/icu/impl/CalendarUtil;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    if-eqz v0, :cond_1

    .line 1811
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1812
    invoke-static {}, Lcom/ibm/icu/util/Calendar$CalType;->values()[Lcom/ibm/icu/util/Calendar$CalType;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 1813
    iget-object v5, v0, Lcom/ibm/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1818
    :goto_1
    return-object v0

    .line 1812
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1818
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/Calendar$CalType;->UNKNOWN:Lcom/ibm/icu/util/Calendar$CalType;

    goto :goto_1
.end method

.method private getImmediatePreviousZoneTransition(J)Ljava/lang/Long;
    .locals 5

    .prologue
    .line 5491
    const/4 v1, 0x0

    .line 5493
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    instance-of v0, v0, Lcom/ibm/icu/util/BasicTimeZone;

    if-eqz v0, :cond_1

    .line 5494
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    check-cast v0, Lcom/ibm/icu/util/BasicTimeZone;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    .line 5495
    if-eqz v0, :cond_2

    .line 5496
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5506
    :cond_0
    :goto_0
    return-object v0

    .line 5501
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    const-wide/32 v2, 0x6ddd00

    invoke-static {v0, p1, p2, v2, v3}, Lcom/ibm/icu/util/Calendar;->getPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object v0

    .line 5502
    if-nez v0, :cond_0

    .line 5503
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    const-wide/32 v2, 0x66ff300

    invoke-static {v0, p1, p2, v2, v3}, Lcom/ibm/icu/util/Calendar;->getPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 1

    .prologue
    .line 1749
    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 1

    .prologue
    .line 1727
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 4

    .prologue
    .line 1757
    if-nez p1, :cond_0

    .line 1758
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 1760
    :cond_0
    if-nez p0, :cond_1

    .line 1761
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    .line 1764
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    .line 1765
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1767
    return-object v0
.end method

.method private static getPatternData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$PatternData;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 3632
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    .line 3633
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 3634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calendar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/DateTimePatterns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 3635
    if-nez v1, :cond_0

    .line 3636
    const-string/jumbo v1, "calendar/gregorian/DateTimePatterns"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    move-object v1, v0

    .line 3639
    :cond_0
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v4

    .line 3640
    new-array v5, v4, [Ljava/lang/String;

    .line 3641
    new-array v6, v4, [Ljava/lang/String;

    move v2, v3

    .line 3642
    :goto_0
    if-ge v2, v4, :cond_1

    .line 3643
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 3644
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 3642
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 3646
    :sswitch_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    goto :goto_1

    .line 3649
    :sswitch_1
    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 3650
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    goto :goto_1

    .line 3654
    :cond_1
    new-instance v0, Lcom/ibm/icu/util/Calendar$PatternData;

    invoke-direct {v0, v5, v6}, Lcom/ibm/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 3644
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;JJ)Ljava/lang/Long;
    .locals 7

    .prologue
    .line 5518
    sget-boolean v0, Lcom/ibm/icu/util/Calendar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5521
    :cond_0
    sub-long v0, p1, p3

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    .line 5522
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 5523
    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 5524
    if-ne v1, v0, :cond_1

    .line 5525
    const/4 v0, 0x0

    .line 5527
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/Calendar;->findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRegionForCalendar(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1771
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 1772
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1773
    const-string/jumbo v0, "001"

    .line 1775
    :cond_0
    return-object v0
.end method

.method private static getWeekDataForRegionInternal(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;
    .locals 8

    .prologue
    .line 4849
    if-nez p0, :cond_0

    .line 4850
    const-string/jumbo p0, "001"

    .line 4853
    :cond_0
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v1, "supplementalData"

    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 4857
    const-string/jumbo v1, "weekData"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 4861
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4871
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v6

    .line 4872
    new-instance v0, Lcom/ibm/icu/util/Calendar$WeekData;

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    const/4 v3, 0x2

    aget v3, v6, v3

    const/4 v4, 0x3

    aget v4, v6, v4

    const/4 v5, 0x4

    aget v5, v6, v5

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v0

    .line 4862
    :catch_0
    move-exception v1

    .line 4863
    const-string/jumbo v2, "001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4865
    const-string/jumbo v1, "001"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    goto :goto_0

    .line 4867
    :cond_1
    throw v1
.end method

.method private static gregoYearFromIslamicStart(I)I
    .locals 5

    .prologue
    const/16 v4, 0x21

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2166
    .line 2167
    const/16 v2, 0x575

    if-lt p0, v2, :cond_1

    .line 2168
    add-int/lit16 v2, p0, -0x575

    div-int/lit8 v2, v2, 0x43

    .line 2169
    add-int/lit16 v3, p0, -0x575

    rem-int/lit8 v3, v3, 0x43

    .line 2170
    mul-int/lit8 v2, v2, 0x2

    if-lt v3, v4, :cond_0

    :goto_0
    add-int/2addr v0, v2

    .line 2176
    :goto_1
    add-int/lit16 v1, p0, 0x243

    sub-int v0, v1, v0

    return v0

    :cond_0
    move v0, v1

    .line 2170
    goto :goto_0

    .line 2172
    :cond_1
    add-int/lit16 v2, p0, -0x574

    div-int/lit8 v2, v2, 0x43

    add-int/lit8 v2, v2, -0x1

    .line 2173
    add-int/lit16 v3, p0, -0x574

    neg-int v3, v3

    rem-int/lit8 v3, v3, 0x43

    .line 2174
    mul-int/lit8 v2, v2, 0x2

    if-gt v3, v4, :cond_2

    :goto_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private initInternal()V
    .locals 3

    .prologue
    const/16 v0, 0x17

    .line 1665
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleCreateFields()[I

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    .line 1668
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 1670
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid fields[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1673
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    .line 1674
    const v1, 0x480067

    .line 1681
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1682
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 1681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1684
    :cond_2
    iput v1, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I

    .line 1685
    return-void
.end method

.method protected static final julianDayToDayOfWeek(I)I
    .locals 2

    .prologue
    .line 6303
    add-int/lit8 v0, p0, 0x2

    rem-int/lit8 v0, v0, 0x7

    .line 6304
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 6305
    add-int/lit8 v0, v0, 0x7

    .line 6307
    :cond_0
    return v0
.end method

.method protected static final julianDayToMillis(I)J
    .locals 4

    .prologue
    .line 6293
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3670
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 3671
    const/4 p2, 0x0

    .line 3686
    :cond_0
    :goto_0
    return-object p2

    .line 3674
    :cond_1
    if-nez p2, :cond_2

    .line 3675
    invoke-static {p1, p3}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3678
    :cond_2
    if-nez p3, :cond_3

    .line 3679
    invoke-static {p0, p2}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3682
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3687
    invoke-static {p1, p3}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private recalculateStamp()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1639
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    move v0, v1

    .line 1641
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1642
    sget v2, Lcom/ibm/icu/util/Calendar;->STAMP_MAX:I

    .line 1643
    const/4 v3, -0x1

    move v4, v3

    move v3, v2

    move v2, v1

    .line 1645
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 1646
    iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v5, v5, v2

    iget v6, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    if-le v5, v6, :cond_0

    iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v5, v5, v2

    if-ge v5, v3, :cond_0

    .line 1647
    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v3, v3, v2

    move v4, v2

    .line 1645
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1652
    :cond_1
    if-ltz v4, :cond_2

    .line 1653
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    iget v3, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    aput v3, v2, v4

    .line 1641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1658
    :cond_2
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    .line 1659
    return-void
.end method

.method private setCalendarLocale(Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    .prologue
    .line 1605
    .line 1607
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1609
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1611
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1614
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1615
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1619
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1620
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    :cond_2
    const-string/jumbo v1, "calendar"

    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1624
    if-eqz v1, :cond_3

    .line 1625
    const-string/jumbo v2, "@calendar="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    :cond_3
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 1631
    :cond_4
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/util/Calendar;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 1632
    return-void
.end method

.method private setWeekData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4895
    if-nez p1, :cond_0

    .line 4896
    const-string/jumbo p1, "001"

    .line 4898
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/Calendar;->WEEK_DATA_CACHE:Lcom/ibm/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v0, p1, p1}, Lcom/ibm/icu/util/Calendar$WeekDataCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar$WeekData;

    .line 4899
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->setWeekData(Lcom/ibm/icu/util/Calendar$WeekData;)Lcom/ibm/icu/util/Calendar;

    .line 4900
    return-void
.end method

.method private updateTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4908
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeTime()V

    .line 4912
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    .line 4913
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    .line 4914
    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    .line 4915
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 13

    .prologue
    const/16 v8, 0xf

    const/4 v1, 0x1

    const/16 v12, 0x15

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 3210
    if-nez p2, :cond_1

    .line 3380
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    int-to-long v2, p2

    .line 3238
    packed-switch p1, :pswitch_data_0

    .line 3317
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calendar.add("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3240
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3241
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    goto :goto_0

    .line 3254
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 3255
    if-nez v0, :cond_3

    .line 3256
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    .line 3257
    const-string/jumbo v2, "gregorian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "roc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "coptic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3258
    :cond_2
    neg-int p2, p2

    .line 3266
    :cond_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    .line 3267
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 3268
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3269
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    .line 3270
    if-nez v0, :cond_0

    .line 3271
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->complete()V

    .line 3272
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    goto :goto_0

    .line 3280
    :pswitch_4
    const-wide/32 v4, 0x240c8400

    mul-long/2addr v2, v4

    move-wide v4, v2

    move v2, v1

    .line 3327
    :goto_1
    if-eqz v2, :cond_7

    .line 3328
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 3329
    invoke-virtual {p0, v12}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 3332
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3334
    if-eqz v2, :cond_0

    .line 3335
    invoke-virtual {p0, v12}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    .line 3336
    if-eq v4, v0, :cond_0

    .line 3340
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v2

    .line 3341
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 3342
    if-eq v5, v1, :cond_0

    .line 3347
    sub-int/2addr v1, v5

    int-to-long v6, v1

    const-wide/32 v8, 0x5265c00

    rem-long/2addr v6, v8

    .line 3348
    cmp-long v1, v6, v10

    if-eqz v1, :cond_6

    .line 3349
    add-long v4, v2, v6

    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3350
    invoke-virtual {p0, v12}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    .line 3352
    :goto_3
    if-eq v1, v0, :cond_0

    .line 3355
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 3362
    :pswitch_5
    cmp-long v0, v6, v10

    if-gez v0, :cond_0

    .line 3363
    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    .line 3284
    :pswitch_6
    const-wide/32 v4, 0x2932e00

    mul-long/2addr v2, v4

    move-wide v4, v2

    move v2, v1

    .line 3285
    goto :goto_1

    .line 3292
    :pswitch_7
    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    move-wide v4, v2

    move v2, v1

    .line 3293
    goto :goto_1

    .line 3297
    :pswitch_8
    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    move-wide v4, v2

    move v2, v0

    .line 3299
    goto :goto_1

    .line 3302
    :pswitch_9
    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    move-wide v4, v2

    move v2, v0

    .line 3304
    goto :goto_1

    .line 3307
    :pswitch_a
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-wide v4, v2

    move v2, v0

    .line 3309
    goto :goto_1

    :pswitch_b
    move-wide v4, v2

    move v2, v0

    .line 3314
    goto :goto_1

    .line 3357
    :pswitch_c
    cmp-long v0, v6, v10

    if-lez v0, :cond_0

    .line 3358
    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    .line 3367
    :pswitch_d
    cmp-long v0, v6, v10

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v0

    .line 3368
    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object v2

    .line 3369
    if-eqz v2, :cond_5

    .line 3370
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    :cond_4
    move-wide v0, v2

    .line 3367
    goto :goto_4

    .line 3372
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not locate a time zone transition before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    move v1, v0

    goto/16 :goto_2

    .line 3238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_b
    .end packed-switch

    .line 3355
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2309
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2310
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v1, v3, v0

    aput v1, v2, v0

    .line 2309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2312
    :cond_0
    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    .line 2313
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 4637
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 4639
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ibm/icu/util/Calendar;->fields:[I

    .line 4640
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    .line 4641
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4642
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4644
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeZone;

    iput-object v1, v0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4645
    return-object v0

    .line 4647
    :catch_0
    move-exception v0

    .line 4649
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public compareTo(Lcom/ibm/icu/util/Calendar;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 3419
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3420
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 642
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->compareTo(Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method protected complete()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2346
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->updateTime()V

    .line 2347
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    .line 2348
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeFields()V

    .line 2349
    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    .line 2350
    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    .line 2352
    :cond_1
    return-void
.end method

.method protected computeFields()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x5265c00

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 4967
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 4968
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    iget-wide v4, p0, Lcom/ibm/icu/util/Calendar;->time:J

    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 4969
    iget-wide v4, p0, Lcom/ibm/icu/util/Calendar;->time:J

    aget v0, v3, v1

    int-to-long v6, v0

    add-long/2addr v4, v6

    aget v0, v3, v9

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 4972
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I

    move v2, v0

    move v0, v1

    .line 4973
    :goto_0
    iget-object v6, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 4974
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_0

    .line 4975
    iget-object v6, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v9, v6, v0

    .line 4979
    :goto_1
    shr-int/lit8 v2, v2, 0x1

    .line 4973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4977
    :cond_0
    iget-object v6, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v1, v6, v0

    goto :goto_1

    .line 4991
    :cond_1
    invoke-static {v4, v5, v12, v13}, Lcom/ibm/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide v6

    .line 4993
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    long-to-int v2, v6

    const v8, 0x253d8c    # 3.419992E-39f

    add-int/2addr v2, v8

    aput v2, v0, v10

    .line 4995
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v0, v0, v10

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/Calendar;->computeGregorianAndDOWFields(I)V

    .line 5001
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v0, v0, v10

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleComputeFields(I)V

    .line 5005
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->computeWeekFields()V

    .line 5010
    mul-long/2addr v6, v12

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 5011
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v4, 0x15

    aput v0, v2, v4

    .line 5012
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v4, 0xe

    rem-int/lit16 v5, v0, 0x3e8

    aput v5, v2, v4

    .line 5013
    div-int/lit16 v0, v0, 0x3e8

    .line 5014
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v4, 0xd

    rem-int/lit8 v5, v0, 0x3c

    aput v5, v2, v4

    .line 5015
    div-int/lit8 v0, v0, 0x3c

    .line 5016
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v4, 0xc

    rem-int/lit8 v5, v0, 0x3c

    aput v5, v2, v4

    .line 5017
    div-int/lit8 v0, v0, 0x3c

    .line 5018
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v4, 0xb

    aput v0, v2, v4

    .line 5019
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v4, 0x9

    div-int/lit8 v5, v0, 0xc

    aput v5, v2, v4

    .line 5020
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v4, 0xa

    rem-int/lit8 v0, v0, 0xc

    aput v0, v2, v4

    .line 5021
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v2, 0xf

    aget v1, v3, v1

    aput v1, v0, v2

    .line 5022
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v1, 0x10

    aget v2, v3, v9

    aput v2, v0, v1

    .line 5023
    return-void
.end method

.method protected final computeGregorianFields(I)V
    .locals 11

    .prologue
    const/16 v4, 0x16d

    const/4 v10, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 5060
    const v3, 0x1a4452

    sub-int v3, p1, v3

    int-to-long v6, v3

    .line 5066
    new-array v3, v0, [I

    .line 5067
    const v5, 0x23ab1

    invoke-static {v6, v7, v5, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(JI[I)I

    move-result v5

    .line 5068
    aget v6, v3, v2

    const v7, 0x8eac

    invoke-static {v6, v7, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I

    move-result v6

    .line 5069
    aget v7, v3, v2

    const/16 v8, 0x5b5

    invoke-static {v7, v8, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I

    move-result v7

    .line 5070
    aget v8, v3, v2

    invoke-static {v8, v4, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I

    move-result v8

    .line 5071
    mul-int/lit16 v5, v5, 0x190

    mul-int/lit8 v9, v6, 0x64

    add-int/2addr v5, v9

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    add-int/2addr v5, v8

    .line 5072
    aget v3, v3, v2

    .line 5073
    if-eq v6, v10, :cond_0

    if-ne v8, v10, :cond_3

    :cond_0
    move v6, v5

    move v5, v4

    .line 5079
    :goto_0
    and-int/lit8 v3, v6, 0x3

    if-nez v3, :cond_4

    rem-int/lit8 v3, v6, 0x64

    if-nez v3, :cond_1

    rem-int/lit16 v3, v6, 0x190

    if-nez v3, :cond_4

    :cond_1
    move v4, v0

    .line 5083
    :goto_1
    if-eqz v4, :cond_5

    const/16 v3, 0x3c

    .line 5084
    :goto_2
    if-lt v5, v3, :cond_7

    if-eqz v4, :cond_6

    .line 5085
    :goto_3
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x6

    div-int/lit16 v0, v0, 0x16f

    .line 5086
    sget-object v2, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v2, v2, v0

    if-eqz v4, :cond_2

    const/4 v1, 0x3

    :cond_2
    aget v1, v2, v1

    sub-int v1, v5, v1

    add-int/lit8 v1, v1, 0x1

    .line 5089
    iput v6, p0, Lcom/ibm/icu/util/Calendar;->gregorianYear:I

    .line 5090
    iput v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianMonth:I

    .line 5091
    iput v1, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfMonth:I

    .line 5092
    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfYear:I

    .line 5093
    return-void

    .line 5076
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v3

    move v6, v4

    goto :goto_0

    :cond_4
    move v4, v2

    .line 5079
    goto :goto_1

    .line 5083
    :cond_5
    const/16 v3, 0x3b

    goto :goto_2

    :cond_6
    move v0, v1

    .line 5084
    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method protected computeGregorianMonthStart(II)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5969
    if-ltz p2, :cond_0

    const/16 v2, 0xb

    if-le p2, v2, :cond_1

    .line 5970
    :cond_0
    new-array v2, v0, [I

    .line 5971
    const/16 v3, 0xc

    invoke-static {p2, v3, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I

    move-result v3

    add-int/2addr p1, v3

    .line 5972
    aget p2, v2, v1

    .line 5975
    :cond_1
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_3

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_2

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_3

    .line 5976
    :cond_2
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .line 5980
    mul-int/lit16 v2, v1, 0x16d

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x64

    invoke-static {v1, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x190

    .line 5981
    invoke-static {v1, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I

    move-result v1

    add-int/2addr v1, v2

    const v2, 0x1a4452

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 5985
    if-eqz p2, :cond_5

    .line 5986
    sget-object v2, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v2, v2, p2

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    :goto_1
    aget v0, v2, v0

    add-int/2addr v0, v1

    .line 5989
    :goto_2
    return v0

    :cond_3
    move v0, v1

    .line 5975
    goto :goto_0

    .line 5986
    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method protected computeJulianDay()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x14

    .line 5706
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v0, v0, v3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 5707
    const/16 v0, 0x8

    invoke-virtual {p0, v2, v0, v2}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    .line 5708
    const/16 v1, 0x11

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2, v0}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    .line 5709
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, v3

    if-gt v0, v1, :cond_0

    .line 5710
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    .line 5719
    :goto_0
    return v0

    .line 5714
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFieldResolutionTable()[[[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->resolveFields([[[I)I

    move-result v0

    .line 5715
    if-gez v0, :cond_1

    .line 5716
    const/4 v0, 0x5

    .line 5719
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v0

    goto :goto_0
.end method

.method protected computeMillisInDay()I
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    .line 5605
    const/4 v0, 0x0

    .line 5610
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v2, v1, v6

    .line 5611
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, v5

    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v3, v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5612
    if-le v1, v2, :cond_1

    .line 5615
    :goto_0
    if-eqz v1, :cond_0

    .line 5616
    if-ne v1, v2, :cond_2

    .line 5619
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5630
    :cond_0
    :goto_1
    mul-int/lit8 v0, v0, 0x3c

    .line 5631
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5632
    mul-int/lit8 v0, v0, 0x3c

    .line 5633
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5634
    mul-int/lit16 v0, v0, 0x3e8

    .line 5635
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5637
    return v0

    :cond_1
    move v1, v2

    .line 5612
    goto :goto_0

    .line 5623
    :cond_2
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5624
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method protected computeTime()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0xf

    const/16 v5, 0x15

    const/4 v6, 0x2

    .line 5392
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5393
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->validateFields()V

    .line 5397
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeJulianDay()I

    move-result v0

    .line 5399
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar;->julianDayToMillis(I)J

    move-result-wide v2

    .line 5408
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v0, v0, v5

    if-lt v0, v6, :cond_2

    const/16 v0, 0x9

    const/16 v1, 0xe

    const/4 v4, 0x0

    .line 5409
    invoke-virtual {p0, v0, v1, v4}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_2

    .line 5410
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    .line 5415
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, v7

    if-ge v1, v6, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, v8

    if-lt v1, v6, :cond_3

    .line 5417
    :cond_1
    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    .line 5482
    :goto_1
    return-void

    .line 5412
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeMillisInDay()I

    move-result v0

    goto :goto_0

    .line 5450
    :cond_3
    iget-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-ne v1, v6, :cond_9

    .line 5454
    :cond_4
    invoke-virtual {p0, v2, v3, v0}, Lcom/ibm/icu/util/Calendar;->computeZoneOffset(JI)I

    move-result v1

    .line 5455
    int-to-long v4, v0

    add-long/2addr v2, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 5457
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 5461
    if-eq v1, v0, :cond_8

    .line 5462
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    if-nez v0, :cond_5

    .line 5463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The specified wall time does not exist due to time zone offset transition."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5466
    :cond_5
    sget-boolean v0, Lcom/ibm/icu/util/Calendar;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-eq v0, v6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 5470
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object v0

    .line 5471
    if-nez v0, :cond_7

    .line 5472
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not locate a time zone transition before "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5474
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    goto :goto_1

    .line 5476
    :cond_8
    iput-wide v2, p0, Lcom/ibm/icu/util/Calendar;->time:J

    goto :goto_1

    .line 5479
    :cond_9
    int-to-long v4, v0

    add-long/2addr v4, v2

    invoke-virtual {p0, v2, v3, v0}, Lcom/ibm/icu/util/Calendar;->computeZoneOffset(JI)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    goto :goto_1
.end method

.method protected computeZoneOffset(JI)I
    .locals 15

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 5649
    const/4 v4, 0x2

    new-array v8, v4, [I

    .line 5650
    move/from16 v0, p3

    int-to-long v4, v0

    add-long v4, v4, p1

    .line 5651
    iget-object v6, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    instance-of v6, v6, Lcom/ibm/icu/util/BasicTimeZone;

    if-eqz v6, :cond_3

    .line 5652
    iget v6, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    if-ne v6, v9, :cond_1

    move v7, v2

    .line 5653
    :goto_0
    iget v6, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-ne v6, v9, :cond_2

    move v6, v3

    .line 5654
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    check-cast v3, Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    .line 5689
    :cond_0
    :goto_2
    aget v2, v8, v10

    aget v3, v8, v9

    add-int/2addr v2, v3

    return v2

    :cond_1
    move v7, v3

    .line 5652
    goto :goto_0

    :cond_2
    move v6, v2

    .line 5653
    goto :goto_1

    .line 5657
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v2, v4, v5, v9, v8}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5660
    iget v2, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    if-ne v2, v9, :cond_5

    .line 5662
    aget v2, v8, v10

    aget v3, v8, v9

    add-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v2, v4, v2

    .line 5667
    iget-object v6, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    const-wide/32 v12, 0x1499700

    sub-long/2addr v2, v12

    invoke-virtual {v6, v2, v3}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 5668
    aget v3, v8, v10

    aget v6, v8, v9

    add-int/2addr v3, v6

    sub-int v2, v3, v2

    .line 5670
    sget-boolean v3, Lcom/ibm/icu/util/Calendar;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    const v3, -0x1499700

    if-gt v2, v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v3

    .line 5671
    :cond_4
    if-gez v2, :cond_5

    .line 5676
    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    int-to-long v6, v2

    add-long/2addr v6, v4

    invoke-virtual {v3, v6, v7, v9, v8}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    move v2, v9

    .line 5679
    :goto_3
    if-nez v2, :cond_0

    iget v2, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-ne v2, v9, :cond_0

    .line 5685
    aget v2, v8, v10

    aget v3, v8, v9

    add-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v2, v4, v2

    .line 5686
    iget-object v4, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v4, v2, v3, v10, v8}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    goto :goto_2

    :cond_5
    move v2, v10

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2366
    if-nez p1, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return v1

    .line 2369
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 2370
    goto :goto_0

    .line 2372
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2376
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    .line 2378
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2379
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    .line 2378
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2379
    goto :goto_1
.end method

.method protected fieldName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 6270
    :try_start_0
    sget-object v0, Lcom/ibm/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6272
    :goto_0
    return-object v0

    .line 6271
    :catch_0
    move-exception v0

    .line 6272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final get(I)I
    .locals 1

    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->complete()V

    .line 2043
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 4

    .prologue
    const/16 v3, 0x13

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2489
    packed-switch p1, :pswitch_data_0

    .line 2527
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualHelper(III)I

    move-result v0

    .line 2530
    :goto_0
    return v0

    .line 2492
    :pswitch_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 2493
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 2494
    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2495
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v0

    goto :goto_0

    .line 2501
    :pswitch_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 2502
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 2503
    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2504
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v0

    goto :goto_0

    .line 2522
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v0

    goto :goto_0

    .line 2489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 2

    .prologue
    .line 2558
    packed-switch p1, :pswitch_data_0

    .line 2577
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualHelper(III)I

    move-result v0

    .line 2580
    :goto_0
    return v0

    .line 2572
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    goto :goto_0

    .line 2558
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDateTimeFormat(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .prologue
    .line 3444
    invoke-static {p0, p3, p1, p2}, Lcom/ibm/icu/util/Calendar;->formatHelper(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultDayInMonth(II)I
    .locals 1

    .prologue
    .line 5826
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMonthInYear(I)I
    .locals 1

    .prologue
    .line 5811
    const/4 v0, 0x0

    return v0
.end method

.method public final getFieldCount()I
    .locals 1

    .prologue
    .line 6092
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v0, v0

    return v0
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 1

    .prologue
    .line 5731
    sget-object v0, Lcom/ibm/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 4266
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public final getGreatestMinimum(I)I
    .locals 1

    .prologue
    .line 4474
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method protected final getGregorianDayOfMonth()I
    .locals 1

    .prologue
    .line 6082
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfMonth:I

    return v0
.end method

.method protected final getGregorianDayOfYear()I
    .locals 1

    .prologue
    .line 6072
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfYear:I

    return v0
.end method

.method protected final getGregorianMonth()I
    .locals 1

    .prologue
    .line 6062
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianMonth:I

    return v0
.end method

.method protected final getGregorianYear()I
    .locals 1

    .prologue
    .line 6052
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianYear:I

    return v0
.end method

.method public final getLeastMaximum(I)I
    .locals 1

    .prologue
    .line 4485
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method protected getLimit(II)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4369
    packed-switch p1, :pswitch_data_0

    .line 4405
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->handleGetLimit(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 4383
    :pswitch_1
    sget-object v0, Lcom/ibm/icu/util/Calendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    goto :goto_0

    .line 4388
    :pswitch_2
    if-nez p2, :cond_1

    .line 4389
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4390
    :cond_1
    if-eq p2, v0, :cond_0

    .line 4393
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    .line 4394
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p2}, Lcom/ibm/icu/util/Calendar;->handleGetLimit(II)I

    move-result v1

    .line 4395
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 4396
    rsub-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 4398
    :cond_2
    add-int/lit8 v1, v1, 0x6

    rsub-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 4369
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 6376
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->validLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0
.end method

.method public final getMaximum(I)I
    .locals 1

    .prologue
    .line 4463
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 4305
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public final getMinimum(I)I
    .locals 1

    .prologue
    .line 4452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method public final getRelatedYear()I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2185
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 2186
    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 2187
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    .line 2188
    invoke-static {}, Lcom/ibm/icu/util/Calendar$CalType;->values()[Lcom/ibm/icu/util/Calendar$CalType;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 2189
    iget-object v7, v0, Lcom/ibm/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2194
    :goto_1
    sget-object v1, Lcom/ibm/icu/util/Calendar$1;->$SwitchMap$com$ibm$icu$util$Calendar$CalType:[I

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar$CalType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 2226
    :goto_2
    return v0

    .line 2188
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 2196
    :pswitch_1
    add-int/lit16 v0, v2, 0x26e

    goto :goto_2

    .line 2198
    :pswitch_2
    add-int/lit16 v0, v2, -0xeb0

    goto :goto_2

    .line 2200
    :pswitch_3
    add-int/lit16 v0, v2, -0xa4d

    goto :goto_2

    .line 2202
    :pswitch_4
    add-int/lit8 v0, v2, 0x4f

    goto :goto_2

    .line 2204
    :pswitch_5
    add-int/lit16 v0, v2, 0x11c

    goto :goto_2

    .line 2206
    :pswitch_6
    add-int/lit8 v0, v2, 0x8

    goto :goto_2

    .line 2208
    :pswitch_7
    add-int/lit16 v0, v2, -0x1574

    goto :goto_2

    .line 2210
    :pswitch_8
    add-int/lit16 v0, v2, -0x91d

    goto :goto_2

    .line 2216
    :pswitch_9
    invoke-static {v2}, Lcom/ibm/icu/util/Calendar;->gregoYearFromIslamicStart(I)I

    move-result v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 2194
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRepeatedWallTimeOption()I
    .locals 1

    .prologue
    .line 4185
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    return v0
.end method

.method public getSkippedWallTimeOption()I
    .locals 1

    .prologue
    .line 4237
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    return v0
.end method

.method protected final getStamp(I)I
    .locals 1

    .prologue
    .line 5307
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1976
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 1998
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->updateTime()V

    .line 1999
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .prologue
    .line 4116
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6330
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6025
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianMonth()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6026
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianDayOfMonth()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6027
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianDayOfYear()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6028
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianYear()I

    move-result v0

    .line 6029
    const/16 v3, 0x13

    invoke-virtual {p0, v3, v0}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6031
    if-ge v0, v2, :cond_0

    .line 6033
    rsub-int/lit8 v0, v0, 0x1

    move v3, v0

    move v0, v1

    .line 6035
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6036
    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6037
    return-void

    :cond_0
    move v3, v0

    move v0, v2

    goto :goto_0
.end method

.method protected handleComputeJulianDay(I)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 5838
    if-eq p1, v6, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-ne p1, v7, :cond_1

    :cond_0
    move v3, v4

    .line 5844
    :goto_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 5849
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result v0

    .line 5854
    :goto_1
    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 5856
    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->getDefaultMonthInYear(I)I

    move-result v1

    invoke-virtual {p0, v8, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result v1

    .line 5860
    :goto_2
    invoke-virtual {p0, v0, v1, v3}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v5

    .line 5862
    if-ne p1, v6, :cond_5

    .line 5863
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5864
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result v0

    add-int/2addr v0, v5

    .line 5950
    :goto_3
    return v0

    :cond_1
    move v3, v2

    .line 5838
    goto :goto_0

    .line 5851
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 5856
    goto :goto_2

    .line 5866
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_3

    .line 5870
    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 5871
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_3

    .line 5874
    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 5888
    add-int/lit8 v1, v5, 0x1

    invoke-static {v1}, Lcom/ibm/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result v1

    sub-int/2addr v1, v3

    .line 5889
    if-gez v1, :cond_7

    .line 5890
    add-int/lit8 v1, v1, 0x7

    .line 5896
    :cond_7
    sget-object v6, Lcom/ibm/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->resolveFields([[[I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    move v3, v2

    .line 5904
    :goto_4
    rem-int/lit8 v3, v3, 0x7

    .line 5905
    if-gez v3, :cond_8

    .line 5906
    add-int/lit8 v3, v3, 0x7

    .line 5912
    :cond_8
    rsub-int/lit8 v6, v1, 0x1

    add-int/2addr v3, v6

    .line 5914
    if-ne p1, v7, :cond_a

    .line 5917
    if-ge v3, v4, :cond_c

    .line 5918
    add-int/lit8 v1, v3, 0x7

    .line 5923
    :goto_5
    invoke-virtual {p0, v7, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result v3

    .line 5924
    if-ltz v3, :cond_9

    .line 5925
    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    .line 5950
    :goto_6
    add-int/2addr v0, v5

    goto :goto_3

    .line 5898
    :sswitch_0
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v6

    sub-int v3, v6, v3

    .line 5899
    goto :goto_4

    .line 5901
    :sswitch_1
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 5934
    :cond_9
    invoke-virtual {p0, v8, v2}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result v2

    .line 5935
    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v0

    .line 5936
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    goto :goto_6

    .line 5942
    :cond_a
    rsub-int/lit8 v0, v1, 0x7

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 5943
    add-int/lit8 v3, v3, 0x7

    .line 5947
    :cond_b
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    goto :goto_6

    :cond_c
    move v1, v3

    goto :goto_5

    .line 5896
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract handleComputeMonthStart(IIZ)I
.end method

.method protected handleCreateFields()[I
    .locals 1

    .prologue
    .line 5797
    const/16 v0, 0x17

    new-array v0, v0, [I

    return-object v0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    .prologue
    .line 3512
    new-instance v0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;-><init>(Lcom/ibm/icu/util/Calendar$1;)V

    .line 3513
    invoke-static {v0, p1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$102(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 3514
    invoke-static {v0, p2}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$202(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 3515
    new-instance v1, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {v1, p0, p3}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)V

    invoke-static {v0, v1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$302(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/text/DateFormatSymbols;)Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3516
    invoke-static {v0, p3}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$402(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    .line 3517
    invoke-static {v0, p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$502(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/util/Calendar;

    .line 3519
    invoke-static {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getInstance(Lcom/ibm/icu/util/Calendar$FormatConfiguration;)Lcom/ibm/icu/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleGetExtendedYear()I
.end method

.method protected abstract handleGetLimit(II)I
.end method

.method protected handleGetMonthLength(II)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5771
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    .line 5772
    invoke-virtual {p0, p1, p2, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v1

    sub-int/2addr v0, v1

    .line 5771
    return v0
.end method

.method protected handleGetYearLength(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5784
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    .line 5785
    invoke-virtual {p0, p1, v1, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v1

    sub-int/2addr v0, v1

    .line 5784
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2414
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    .line 2419
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZone;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    or-int/2addr v0, v1

    .line 2414
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6346
    const/4 v0, 0x1

    return v0
.end method

.method protected final internalGet(I)I
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final internalGet(II)I
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget p2, v0, p1

    :cond_0
    return p2
.end method

.method protected final internalGetTimeInMillis()J
    .locals 2

    .prologue
    .line 6315
    iget-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method protected final internalSet(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6106
    shl-int v0, v2, p1

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 6107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subclass cannot set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6108
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6110
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 6111
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v2, v0, p1

    .line 6112
    return-void
.end method

.method public isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z
    .locals 2

    .prologue
    .line 2393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2394
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2395
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2396
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2397
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2398
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2399
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2393
    :goto_0
    return v0

    .line 2399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 4140
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    return v0
.end method

.method public final isSet(I)Z
    .locals 1

    .prologue
    .line 2337
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newerField(II)I
    .locals 2

    .prologue
    .line 5316
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, p1

    if-le v0, v1, :cond_0

    .line 5319
    :goto_0
    return p2

    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method protected newestStamp(III)I
    .locals 2

    .prologue
    .line 5293
    move v0, p3

    .line 5294
    :goto_0
    if-gt p1, p2, :cond_1

    .line 5295
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, p1

    if-le v1, v0, :cond_0

    .line 5296
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    .line 5294
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5299
    :cond_1
    return v0
.end method

.method protected pinField(I)V
    .locals 3

    .prologue
    .line 3828
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 3829
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    .line 3831
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v2, v2, p1

    if-le v2, v0, :cond_1

    .line 3832
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3836
    :cond_0
    :goto_0
    return-void

    .line 3833
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    if-ge v0, v1, :cond_0

    .line 3834
    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method protected prepareGetActual(IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x7

    const/4 v2, 0x5

    .line 2605
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2607
    sparse-switch p1, :sswitch_data_0

    .line 2648
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2649
    return-void

    .line 2610
    :sswitch_0
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2614
    :sswitch_1
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2618
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2624
    :sswitch_3
    invoke-virtual {p0, v2, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2625
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2635
    :sswitch_4
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    .line 2636
    if-eqz p2, :cond_0

    .line 2637
    add-int/lit8 v0, v0, 0x6

    rem-int/lit8 v0, v0, 0x7

    .line 2638
    if-ge v0, v4, :cond_0

    .line 2639
    add-int/lit8 v0, v0, 0x7

    .line 2642
    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2607
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x11 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method protected resolveFields([[[I)I
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/4 v1, 0x0

    .line 5247
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 5249
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_7

    if-gez v2, :cond_7

    .line 5250
    aget-object v7, p1, v0

    move v3, v1

    move v4, v1

    .line 5253
    :goto_1
    array-length v5, v7

    if-ge v3, v5, :cond_6

    .line 5254
    aget-object v8, v7, v3

    .line 5257
    aget v5, v8, v1

    if-lt v5, v11, :cond_0

    const/4 v5, 0x1

    :goto_2
    move v6, v1

    :goto_3
    array-length v9, v8

    if-ge v5, v9, :cond_2

    .line 5258
    iget-object v9, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v10, v8, v5

    aget v9, v9, v10

    .line 5260
    if-nez v9, :cond_1

    move v5, v2

    .line 5253
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v5

    goto :goto_1

    :cond_0
    move v5, v1

    .line 5257
    goto :goto_2

    .line 5263
    :cond_1
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5257
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5267
    :cond_2
    if-le v6, v4, :cond_9

    .line 5268
    aget v5, v8, v1

    .line 5269
    if-lt v5, v11, :cond_5

    .line 5270
    and-int/lit8 v5, v5, 0x1f

    .line 5272
    const/4 v8, 0x5

    if-ne v5, v8, :cond_3

    iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/4 v9, 0x4

    aget v8, v8, v9

    iget-object v9, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v9, v9, v5

    if-ge v8, v9, :cond_4

    :cond_3
    move v2, v5

    .line 5279
    :cond_4
    :goto_5
    if-ne v2, v5, :cond_9

    move v4, v6

    move v5, v2

    .line 5280
    goto :goto_4

    :cond_5
    move v2, v5

    .line 5276
    goto :goto_5

    .line 5249
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5285
    :cond_7
    if-lt v2, v11, :cond_8

    and-int/lit8 v2, v2, 0x1f

    :cond_8
    return v2

    :cond_9
    move v5, v2

    goto :goto_4
.end method

.method public final set(II)V
    .locals 3

    .prologue
    .line 2080
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_0

    .line 2081
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeFields()V

    .line 2083
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 2085
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    sget v1, Lcom/ibm/icu/util/Calendar;->STAMP_MAX:I

    if-ne v0, v1, :cond_1

    .line 2086
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->recalculateStamp()V

    .line 2088
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    aput v1, v0, p1

    .line 2089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    .line 2090
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    .prologue
    .line 4248
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    if-eq v0, p1, :cond_2

    .line 4249
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 4250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid day of week"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4252
    :cond_1
    iput p1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    .line 4253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    .line 4255
    :cond_2
    return-void
.end method

.method public setLenient(Z)V
    .locals 0

    .prologue
    .line 4131
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    .line 4132
    return-void
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6398
    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 6400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    .line 6398
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 6405
    :cond_2
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 6406
    iput-object p2, p0, Lcom/ibm/icu/util/Calendar;->actualLocale:Lcom/ibm/icu/util/ULocale;

    .line 6407
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 2

    .prologue
    const/4 v1, 0x7

    const/4 v0, 0x1

    .line 4283
    if-ge p1, v0, :cond_2

    move p1, v0

    .line 4288
    :cond_0
    :goto_0
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    if-eq v0, p1, :cond_1

    .line 4289
    iput p1, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    .line 4290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    .line 4292
    :cond_1
    return-void

    .line 4285
    :cond_2
    if-le p1, v1, :cond_0

    move p1, v1

    .line 4286
    goto :goto_0
.end method

.method public final setRelatedYear(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2260
    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 2261
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v3

    .line 2262
    invoke-static {}, Lcom/ibm/icu/util/Calendar$CalType;->values()[Lcom/ibm/icu/util/Calendar$CalType;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 2263
    iget-object v6, v0, Lcom/ibm/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2268
    :goto_1
    sget-object v1, Lcom/ibm/icu/util/Calendar$1;->$SwitchMap$com$ibm$icu$util$Calendar$CalType:[I

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar$CalType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2300
    :goto_2
    :pswitch_0
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2301
    return-void

    .line 2262
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2270
    :pswitch_1
    add-int/lit16 p1, p1, -0x26e

    goto :goto_2

    .line 2272
    :pswitch_2
    add-int/lit16 p1, p1, 0xeb0

    goto :goto_2

    .line 2274
    :pswitch_3
    add-int/lit16 p1, p1, 0xa4d

    goto :goto_2

    .line 2276
    :pswitch_4
    add-int/lit8 p1, p1, -0x4f

    goto :goto_2

    .line 2278
    :pswitch_5
    add-int/lit16 p1, p1, -0x11c

    goto :goto_2

    .line 2280
    :pswitch_6
    add-int/lit8 p1, p1, -0x8

    goto :goto_2

    .line 2282
    :pswitch_7
    add-int/lit16 p1, p1, 0x1574

    goto :goto_2

    .line 2284
    :pswitch_8
    add-int/lit16 p1, p1, 0x91d

    goto :goto_2

    .line 2290
    :pswitch_9
    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->firstIslamicStartYearFromGrego(I)I

    move-result p1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 2268
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 1989
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1990
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 7

    .prologue
    const-wide v0, 0x28d47dbbf19b000L

    const-wide v2, -0x28ec76c40e65000L

    const/4 v4, 0x0

    .line 2011
    cmp-long v5, p1, v0

    if-lez v5, :cond_2

    .line 2012
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide p1, v0

    .line 2024
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/ibm/icu/util/Calendar;->time:J

    .line 2025
    iput-boolean v4, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v4, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    .line 2026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    move v0, v4

    .line 2028
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2029
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v4, v2, v0

    aput v4, v1, v0

    .line 2028
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2015
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "millis value greater than upper bounds for a Calendar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2017
    :cond_2
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 2018
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide p1, v2

    .line 2019
    goto :goto_0

    .line 2021
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "millis value less than lower bounds for a Calendar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2032
    :cond_4
    return-void
.end method

.method public setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
    .locals 1

    .prologue
    .line 4096
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    .line 4106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    .line 4107
    return-void
.end method

.method public setWeekData(Lcom/ibm/icu/util/Calendar$WeekData;)Lcom/ibm/icu/util/Calendar;
    .locals 1

    .prologue
    .line 4838
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->setFirstDayOfWeek(I)V

    .line 4839
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 4841
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I

    .line 4842
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I

    .line 4843
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I

    .line 4844
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCeaseMillis:I

    .line 4845
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4665
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4666
    const-string/jumbo v0, "[time="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4667
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4668
    const-string/jumbo v0, ",areFieldsSet="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4669
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4670
    const-string/jumbo v0, ",areAllFieldsSet="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4672
    const-string/jumbo v0, ",lenient="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4673
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4674
    const-string/jumbo v0, ",zone="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4675
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4676
    const-string/jumbo v0, ",firstDayOfWeek="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4677
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4678
    const-string/jumbo v0, ",minimalDaysInFirstWeek="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4679
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4680
    const-string/jumbo v0, ",repeatedWallTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4681
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4682
    const-string/jumbo v0, ",skippedWallTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4683
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4684
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4685
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4686
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4684
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4667
    :cond_0
    const-string/jumbo v0, "?"

    goto/16 :goto_0

    .line 4686
    :cond_1
    const-string/jumbo v1, "?"

    goto :goto_2

    .line 4688
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4689
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateField(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5348
    packed-switch p1, :pswitch_data_0

    .line 5364
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->validateField(III)V

    .line 5367
    :goto_0
    return-void

    .line 5350
    :pswitch_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    .line 5351
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/ibm/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5354
    :pswitch_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    .line 5355
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/ibm/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5358
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 5359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DAY_OF_WEEK_IN_MONTH cannot be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5361
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5348
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final validateField(III)V
    .locals 4

    .prologue
    .line 5378
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    .line 5379
    if-lt v0, p2, :cond_0

    if-le v0, p3, :cond_1

    .line 5380
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", valid range="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5384
    :cond_1
    return-void
.end method

.method protected validateFields()V
    .locals 3

    .prologue
    .line 5331
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5332
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 5333
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->validateField(I)V

    .line 5331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5336
    :cond_1
    return-void
.end method

.method protected final weekNumber(II)I
    .locals 1

    .prologue
    .line 3933
    invoke-virtual {p0, p1, p1, p2}, Lcom/ibm/icu/util/Calendar;->weekNumber(III)I

    move-result v0

    return v0
.end method

.method protected weekNumber(III)I
    .locals 3

    .prologue
    .line 3885
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int v0, p3, v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x7

    .line 3886
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 3891
    :cond_0
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x7

    .line 3896
    rsub-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 3898
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
