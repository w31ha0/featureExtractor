.class public Lcom/ibm/icu/util/ChineseCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "ChineseCalendar.java"


# static fields
.field private static final CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

.field static final CHINESE_DATE_PRECEDENCE:[[[I

.field private static final LIMITS:[[I


# instance fields
.field private transient astro:Lcom/ibm/icu/impl/CalendarAstronomer;

.field private epochYear:I

.field private transient isLeapYear:Z

.field private transient newYearCache:Lcom/ibm/icu/impl/CalendarCache;

.field private transient winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

.field private zoneAstro:Lcom/ibm/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 401
    const/16 v0, 0x17

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v8

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v9

    new-array v1, v5, [I

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/ChineseCalendar;->LIMITS:[[I

    .line 489
    new-array v0, v7, [[[I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    new-array v2, v8, [I

    const/4 v3, 0x5

    aput v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v7, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v8

    new-array v2, v7, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    new-array v2, v7, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v9

    new-array v2, v7, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v7, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v7, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v8, [I

    const/4 v4, 0x6

    aput v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v7, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v8, [I

    aput v9, v2, v5

    aput-object v2, v1, v5

    new-array v2, v8, [I

    aput v6, v2, v5

    aput-object v2, v1, v8

    new-array v2, v8, [I

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v1, v7

    new-array v2, v7, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v9

    new-array v2, v7, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    sput-object v0, Lcom/ibm/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    .line 652
    new-instance v0, Lcom/ibm/icu/util/SimpleTimeZone;

    const v1, 0x1b77400

    const-string/jumbo v2, "CHINA_ZONE"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ChineseCalendar;->CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

    return-void

    .line 401
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x14585
        0x14585
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x3c
        0x3c
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
        0x1
        0x1
        0x32
        0x37
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1d
        0x1e
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x161
        0x181
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
        0x5
        0x5
    .end array-data

    :array_7
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_8
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 489
    :array_a
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x25
        0x16
    .end array-data

    :array_11
    .array-data 4
        0x28
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x28
        0x12
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 151
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    const/16 v2, -0xa4c

    sget-object v3, Lcom/ibm/icu/util/ChineseCalendar;->CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/TimeZone;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    .line 331
    const/16 v0, -0xa4c

    sget-object v1, Lcom/ibm/icu/util/ChineseCalendar;->CHINA_ZONE:Lcom/ibm/icu/util/TimeZone;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/TimeZone;)V

    .line 332
    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/TimeZone;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 121
    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 127
    new-instance v0, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

    .line 133
    new-instance v0, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->newYearCache:Lcom/ibm/icu/impl/CalendarCache;

    .line 344
    iput p3, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    .line 345
    iput-object p4, p0, Lcom/ibm/icu/util/ChineseCalendar;->zoneAstro:Lcom/ibm/icu/util/TimeZone;

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->setTimeInMillis(J)V

    .line 347
    return-void
.end method

.method private computeChineseFields(IIIZ)V
    .locals 9

    .prologue
    const/4 v7, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 861
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v0

    .line 862
    if-ge p1, v0, :cond_5

    .line 863
    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v1

    .line 872
    :goto_0
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v1

    .line 873
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    .line 874
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v5

    .line 876
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_6

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->isLeapYear:Z

    .line 878
    invoke-direct {p0, v1, v5}, Lcom/ibm/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v0

    .line 879
    iget-boolean v4, p0, Lcom/ibm/icu/util/ChineseCalendar;->isLeapYear:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v1, v5}, Lcom/ibm/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 880
    add-int/lit8 v0, v0, -0x1

    .line 882
    :cond_0
    if-ge v0, v2, :cond_1

    .line 883
    add-int/lit8 v0, v0, 0xc

    .line 886
    :cond_1
    iget-boolean v4, p0, Lcom/ibm/icu/util/ChineseCalendar;->isLeapYear:Z

    if-eqz v4, :cond_7

    .line 887
    invoke-direct {p0, v5}, Lcom/ibm/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v4, v5, -0x19

    .line 888
    invoke-direct {p0, v4, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/ibm/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 890
    :goto_2
    const/4 v4, 0x2

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v4, v6}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 891
    const/16 v4, 0x16

    if-eqz v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 893
    if-eqz p4, :cond_4

    .line 896
    iget v1, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    sub-int v4, p2, v1

    .line 897
    add-int/lit16 v1, p2, 0xa4c

    .line 898
    const/16 v6, 0xb

    if-lt v0, v6, :cond_2

    if-lt p3, v7, :cond_9

    .line 900
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 901
    add-int/lit8 v0, v1, 0x1

    move v1, v4

    .line 903
    :goto_4
    sub-int v4, p1, v5

    add-int/lit8 v4, v4, 0x1

    .line 905
    const/16 v5, 0x13

    invoke-virtual {p0, v5, v1}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 908
    new-array v1, v2, [I

    .line 909
    add-int/lit8 v0, v0, -0x1

    const/16 v5, 0x3c

    invoke-static {v0, v5, v1}, Lcom/ibm/icu/util/ChineseCalendar;->floorDivide(II[I)I

    move-result v0

    .line 910
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 911
    aget v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 913
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 919
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ChineseCalendar;->newYear(I)I

    move-result v0

    .line 920
    if-ge p1, v0, :cond_3

    .line 921
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->newYear(I)I

    move-result v0

    .line 923
    :cond_3
    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 925
    :cond_4
    return-void

    .line 866
    :cond_5
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v1

    move v8, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 876
    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 888
    goto :goto_2

    :cond_8
    move v1, v3

    .line 891
    goto :goto_3

    :cond_9
    move v0, v1

    move v1, v4

    goto :goto_4
.end method

.method private final daysToMillis(I)J
    .locals 4

    .prologue
    .line 674
    int-to-long v0, p1

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 675
    iget-object v2, p0, Lcom/ibm/icu/util/ChineseCalendar;->zoneAstro:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v2, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private hasNoMajorSolarTerm(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 774
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    move-result v1

    .line 775
    add-int/lit8 v2, p1, 0x19

    invoke-direct {p0, v2, v0}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v2

    .line 776
    invoke-direct {p0, v2}, Lcom/ibm/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    move-result v2

    .line 777
    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLeapMonthBetween(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 801
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLeapMonthBetween("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): Invalid parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    if-lt p2, p1, :cond_2

    add-int/lit8 v1, p2, -0x19

    .line 808
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 809
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 807
    :cond_2
    return v0
.end method

.method private majorSolarTerm(I)I
    .locals 4

    .prologue
    .line 757
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 760
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    iget-object v2, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0xc

    .line 761
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 762
    add-int/lit8 v0, v0, 0xc

    .line 764
    :cond_0
    return v0
.end method

.method private final millisToDays(J)I
    .locals 5

    .prologue
    .line 684
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->zoneAstro:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/ChineseCalendar;->floorDivide(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private newMoonNear(IZ)I
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 733
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    sget-object v1, Lcom/ibm/icu/impl/CalendarAstronomer;->NEW_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    invoke-virtual {v0, v1, p2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonTime(Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;Z)J

    move-result-wide v0

    .line 735
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->millisToDays(J)I

    move-result v0

    return v0
.end method

.method private newYear(I)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 939
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->newYearCache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 941
    sget-wide v2, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 943
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v0

    .line 944
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v1

    .line 945
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    .line 946
    add-int/lit8 v2, v0, 0x19

    invoke-direct {p0, v2, v4}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v2

    .line 947
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v1

    .line 949
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 950
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/ibm/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 951
    :cond_0
    add-int/lit8 v0, v2, 0x19

    invoke-direct {p0, v0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    int-to-long v0, v0

    .line 956
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/ChineseCalendar;->newYearCache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V

    .line 958
    :cond_1
    long-to-int v0, v0

    return v0

    .line 953
    :cond_2
    int-to-long v0, v2

    goto :goto_0
.end method

.method private offsetMonth(III)V
    .locals 7

    .prologue
    const/16 v6, 0x14

    .line 532
    const-wide v0, 0x403d87d4abcb41d5L    # 29.530588853

    int-to-double v2, p3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p1

    .line 535
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    .line 538
    const v1, 0x253d8c    # 3.419992E-39f

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p2

    .line 542
    const/16 v1, 0x1d

    if-le p2, v1, :cond_1

    .line 543
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v6, v1}, Lcom/ibm/icu/util/ChineseCalendar;->set(II)V

    .line 548
    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->complete()V

    .line 549
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->getActualMaximum(I)I

    move-result v1

    if-lt v1, p2, :cond_0

    .line 550
    invoke-virtual {p0, v6, v0}, Lcom/ibm/icu/util/ChineseCalendar;->set(II)V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p0, v6, v0}, Lcom/ibm/icu/util/ChineseCalendar;->set(II)V

    goto :goto_0
.end method

.method private synodicMonthsBetween(II)I
    .locals 4

    .prologue
    .line 746
    sub-int v0, p2, p1

    int-to-double v0, v0

    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private winterSolstice(I)I
    .locals 6

    .prologue
    .line 701
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 703
    sget-wide v2, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 708
    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/ChineseCalendar;->computeGregorianMonthStart(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v1, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v0

    .line 710
    iget-object v2, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {v2, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 713
    iget-object v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->astro:Lcom/ibm/icu/impl/CalendarAstronomer;

    sget-object v1, Lcom/ibm/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunTime(Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;Z)J

    move-result-wide v0

    .line 715
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->millisToDays(J)I

    move-result v0

    int-to-long v0, v0

    .line 716
    iget-object v2, p0, Lcom/ibm/icu/util/ChineseCalendar;->winterSolsticeCache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V

    .line 718
    :cond_0
    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public add(II)V
    .locals 3

    .prologue
    .line 562
    packed-switch p1, :pswitch_data_0

    .line 572
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 564
    :pswitch_0
    if-eqz p2, :cond_0

    .line 565
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->get(I)I

    move-result v0

    .line 566
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ChineseCalendar;->get(I)I

    move-result v1

    const v2, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v1, v2

    .line 567
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 568
    invoke-direct {p0, v1, v0, p2}, Lcom/ibm/icu/util/ChineseCalendar;->offsetMonth(III)V

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 1

    .prologue
    .line 516
    sget-object v0, Lcom/ibm/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1020
    const-string/jumbo v0, "chinese"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 4

    .prologue
    .line 832
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    .line 833
    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->getGregorianYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->getGregorianMonth()I

    move-result v2

    const/4 v3, 0x1

    .line 832
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ibm/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    .line 835
    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 12

    .prologue
    const v11, 0x253d8c    # 3.419992E-39f

    const/16 v10, 0x16

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 978
    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-le p2, v0, :cond_1

    .line 979
    :cond_0
    new-array v0, v8, [I

    .line 980
    const/16 v1, 0xc

    invoke-static {p2, v1, v0}, Lcom/ibm/icu/util/ChineseCalendar;->floorDivide(II[I)I

    move-result v1

    add-int/2addr p1, v1

    .line 981
    aget p2, v0, v2

    .line 984
    :cond_1
    iget v0, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 985
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ChineseCalendar;->newYear(I)I

    move-result v0

    .line 986
    mul-int/lit8 v1, p2, 0x1d

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v8}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v4

    .line 988
    add-int v3, v4, v11

    .line 991
    invoke-virtual {p0, v9}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v5

    .line 992
    invoke-virtual {p0, v10}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v1

    .line 995
    if-eqz p3, :cond_3

    move v0, v1

    .line 997
    :goto_0
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/ChineseCalendar;->computeGregorianFields(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->getGregorianYear()I

    move-result v6

    .line 1001
    invoke-virtual {p0}, Lcom/ibm/icu/util/ChineseCalendar;->getGregorianMonth()I

    move-result v7

    .line 1000
    invoke-direct {p0, v4, v6, v7, v2}, Lcom/ibm/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    .line 1003
    invoke-virtual {p0, v9}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 1004
    invoke-virtual {p0, v10}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 1005
    :cond_2
    add-int/lit8 v0, v4, 0x19

    invoke-direct {p0, v0, v8}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    .line 1006
    add-int/2addr v0, v11

    .line 1009
    :goto_1
    invoke-virtual {p0, v9, v5}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 1010
    invoke-virtual {p0, v10, v1}, Lcom/ibm/icu/util/ChineseCalendar;->internalSet(II)V

    .line 1012
    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_3
    move v0, v2

    .line 995
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .prologue
    .line 483
    invoke-super {p0, p1, p2, p3}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetExtendedYear()I
    .locals 5

    .prologue
    const/16 v4, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 446
    invoke-virtual {p0, v3, v2, v3}, Lcom/ibm/icu/util/ChineseCalendar;->newestStamp(III)I

    move-result v0

    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/ChineseCalendar;->getStamp(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 447
    invoke-virtual {p0, v4, v2}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v0

    .line 453
    :goto_0
    return v0

    .line 449
    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 451
    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {p0, v2, v2}, Lcom/ibm/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/util/ChineseCalendar;->epochYear:I

    add-int/lit16 v1, v1, 0xa4c

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lcom/ibm/icu/util/ChineseCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 465
    invoke-virtual {p0, p1, p2, v2}, Lcom/ibm/icu/util/ChineseCalendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    const v1, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 467
    add-int/lit8 v1, v0, 0x19

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v1

    .line 468
    sub-int v0, v1, v0

    return v0
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1030
    const/4 v0, 0x0

    return v0
.end method
