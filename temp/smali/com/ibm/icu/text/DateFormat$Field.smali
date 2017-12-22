.class public Lcom/ibm/icu/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final AM_PM_MIDNIGHT_NOON:Lcom/ibm/icu/text/DateFormat$Field;

.field private static final CAL_FIELDS:[Lcom/ibm/icu/text/DateFormat$Field;

.field private static final CAL_FIELD_COUNT:I

.field public static final DAY_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK_IN_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final DAY_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final DOW_LOCAL:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final ERA:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final EXTENDED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

.field private static final FIELD_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLEXIBLE_DAY_PERIOD:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final HOUR0:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final HOUR1:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY0:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY1:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final JULIAN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final MILLISECOND:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final MILLISECONDS_IN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final MONTH:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final RELATED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECOND:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final TIME_SEPARATOR:Lcom/ibm/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final WEEK_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final WEEK_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final YEAR:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final YEAR_WOY:Lcom/ibm/icu/text/DateFormat$Field;


# instance fields
.field private final calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2286
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    .line 2287
    invoke-virtual {v0}, Lcom/ibm/icu/util/GregorianCalendar;->getFieldCount()I

    move-result v0

    sput v0, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    .line 2288
    sget v0, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    new-array v0, v0, [Lcom/ibm/icu/text/DateFormat$Field;

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELDS:[Lcom/ibm/icu/text/DateFormat$Field;

    .line 2289
    new-instance v0, Ljava/util/HashMap;

    sget v1, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    .line 2298
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "am pm"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2304
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "day of month"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2310
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "day of week"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2316
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "day of week in month"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2323
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "day of year"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2329
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->ERA:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2335
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "hour of day"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2341
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "hour of day 1"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2347
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "hour"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->HOUR0:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2353
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "hour 1"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->HOUR1:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2359
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "millisecond"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECOND:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2365
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "minute"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2371
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "month"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2377
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "second"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2383
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "time zone"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2389
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "week of month"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2396
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "week of year"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2402
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "year"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2411
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "local day of week"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DOW_LOCAL:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2417
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "extended year"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->EXTENDED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2424
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "Julian day"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->JULIAN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2430
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "milliseconds in day"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2437
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "year for week of year"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->YEAR_WOY:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2443
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "quarter"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2451
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "related year"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->RELATED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2457
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "am/pm/midnight/noon"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2463
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "flexible day period"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2471
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string/jumbo v1, "time separator"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->TIME_SEPARATOR:Lcom/ibm/icu/text/DateFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2497
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 2498
    iput p2, p0, Lcom/ibm/icu/text/DateFormat$Field;->calendarField:I

    .line 2499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ibm/icu/text/DateFormat$Field;

    if-ne v0, v1, :cond_0

    .line 2500
    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    if-ltz p2, :cond_0

    sget v0, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-ge p2, v0, :cond_0

    .line 2502
    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELDS:[Lcom/ibm/icu/text/DateFormat$Field;

    aput-object p0, v0, p2

    .line 2505
    :cond_0
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2550
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ibm/icu/text/DateFormat$Field;

    if-eq v0, v1, :cond_0

    .line 2551
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "A subclass of DateFormat.Field must implement readResolve."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2555
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ibm/icu/text/DateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2557
    if-nez v0, :cond_1

    .line 2558
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Unknown attribute name."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2561
    :cond_1
    return-object v0
.end method
