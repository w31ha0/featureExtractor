.class public Lcom/ibm/icu/util/HebrewCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "HebrewCalendar.java"


# static fields
.field private static final LEAP_MONTH_START:[[I

.field private static final LIMITS:[[I

.field private static final MONTH_LENGTH:[[I

.field private static final MONTH_START:[[I

.field private static cache:Lcom/ibm/icu/impl/CalendarCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 173
    const/16 v0, 0x16

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LIMITS:[[I

    .line 207
    const/16 v0, 0xd

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    .line 229
    const/16 v0, 0xe

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I

    .line 250
    const/16 v0, 0xe

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    .line 272
    new-instance v0, Lcom/ibm/icu/impl/CalendarCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

    return-void

    .line 173
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xc
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x33
        0x38
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

    .line 207
    :array_9
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_a
    .array-data 4
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_b
    .array-data 4
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_e
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_f
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_11
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_13
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_15
    .array-data 4
        0x1d
        0x1d
        0x1d
    .end array-data

    .line 229
    :array_16
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_18
    .array-data 4
        0x3b
        0x3b
        0x3c
    .end array-data

    :array_19
    .array-data 4
        0x58
        0x59
        0x5a
    .end array-data

    :array_1a
    .array-data 4
        0x75
        0x76
        0x77
    .end array-data

    :array_1b
    .array-data 4
        0x93
        0x94
        0x95
    .end array-data

    :array_1c
    .array-data 4
        0x93
        0x94
        0x95
    .end array-data

    :array_1d
    .array-data 4
        0xb0
        0xb1
        0xb2
    .end array-data

    :array_1e
    .array-data 4
        0xce
        0xcf
        0xd0
    .end array-data

    :array_1f
    .array-data 4
        0xeb
        0xec
        0xed
    .end array-data

    :array_20
    .array-data 4
        0x109
        0x10a
        0x10b
    .end array-data

    :array_21
    .array-data 4
        0x126
        0x127
        0x128
    .end array-data

    :array_22
    .array-data 4
        0x144
        0x145
        0x146
    .end array-data

    :array_23
    .array-data 4
        0x161
        0x162
        0x163
    .end array-data

    .line 250
    :array_24
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_26
    .array-data 4
        0x3b
        0x3b
        0x3c
    .end array-data

    :array_27
    .array-data 4
        0x58
        0x59
        0x5a
    .end array-data

    :array_28
    .array-data 4
        0x75
        0x76
        0x77
    .end array-data

    :array_29
    .array-data 4
        0x93
        0x94
        0x95
    .end array-data

    :array_2a
    .array-data 4
        0xb1
        0xb2
        0xb3
    .end array-data

    :array_2b
    .array-data 4
        0xce
        0xcf
        0xd0
    .end array-data

    :array_2c
    .array-data 4
        0xec
        0xed
        0xee
    .end array-data

    :array_2d
    .array-data 4
        0x109
        0x10a
        0x10b
    .end array-data

    :array_2e
    .array-data 4
        0x127
        0x128
        0x129
    .end array-data

    :array_2f
    .array-data 4
        0x144
        0x145
        0x146
    .end array-data

    :array_30
    .array-data 4
        0x162
        0x163
        0x164
    .end array-data

    :array_31
    .array-data 4
        0x17f
        0x180
        0x181
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->setTimeInMillis(J)V

    .line 348
    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 694
    mul-int/lit8 v0, p0, 0xc

    add-int/lit8 v0, v0, 0x11

    rem-int/lit8 v1, v0, 0x13

    .line 695
    if-gez v1, :cond_0

    const/4 v0, -0x7

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static monthsInYear(I)I
    .locals 1

    .prologue
    .line 699
    invoke-static {p0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method private static startOfYear(I)J
    .locals 13

    .prologue
    const-wide/16 v10, 0x6540

    const-wide/16 v6, 0x7

    const-wide/16 v8, 0x1

    .line 608
    sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 610
    sget-wide v2, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 611
    mul-int/lit16 v0, p0, 0xeb

    add-int/lit16 v0, v0, -0xea

    div-int/lit8 v0, v0, 0x13

    .line 613
    int-to-long v2, v0

    const-wide/16 v4, 0x35b9

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x2f34

    add-long/2addr v4, v2

    .line 614
    mul-int/lit8 v0, v0, 0x1d

    int-to-long v0, v0

    div-long v2, v4, v10

    add-long/2addr v2, v0

    .line 615
    rem-long/2addr v4, v10

    .line 617
    rem-long v0, v2, v6

    long-to-int v0, v0

    .line 619
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 621
    :cond_0
    add-long/2addr v2, v8

    .line 622
    rem-long v0, v2, v6

    long-to-int v0, v0

    move v12, v0

    move-wide v0, v2

    move v2, v12

    .line 624
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-wide/16 v6, 0x4014

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    invoke-static {p0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 628
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 636
    :cond_1
    :goto_1
    sget-object v2, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;

    int-to-long v4, p0

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V

    .line 638
    :cond_2
    return-wide v0

    .line 630
    :cond_3
    if-nez v2, :cond_1

    const-wide/16 v2, 0x5ae5

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    add-int/lit8 v2, p0, -0x1

    invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    add-long/2addr v0, v8

    goto :goto_1

    :cond_4
    move v12, v0

    move-wide v0, v2

    move v2, v12

    goto :goto_0
.end method

.method private final yearType(I)I
    .locals 4

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->handleGetYearLength(I)I

    move-result v0

    .line 663
    const/16 v1, 0x17c

    if-le v0, v1, :cond_0

    .line 664
    add-int/lit8 v0, v0, -0x1e

    .line 669
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 677
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal year length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " in year "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :pswitch_0
    const/4 v0, 0x0

    .line 680
    :goto_0
    return v0

    .line 673
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 675
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x161
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(II)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 450
    packed-switch p1, :pswitch_data_0

    .line 497
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 500
    :goto_0
    return-void

    .line 458
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/HebrewCalendar;->get(I)I

    move-result v3

    .line 459
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->get(I)I

    move-result v2

    .line 461
    if-lez p2, :cond_4

    .line 462
    if-ge v3, v4, :cond_0

    move v0, v1

    .line 463
    :cond_0
    add-int/2addr v3, p2

    move v6, v0

    move v0, v2

    move v2, v3

    move v3, v6

    .line 465
    :goto_1
    if-eqz v3, :cond_1

    if-lt v2, v4, :cond_1

    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 466
    add-int/lit8 v2, v2, 0x1

    .line 468
    :cond_1
    const/16 v3, 0xc

    if-gt v2, v3, :cond_3

    .line 490
    :cond_2
    invoke-virtual {p0, v5, v2}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V

    .line 491
    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V

    .line 492
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/HebrewCalendar;->pinField(I)V

    goto :goto_0

    .line 471
    :cond_3
    add-int/lit8 v2, v2, -0xd

    .line 472
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    .line 473
    goto :goto_1

    .line 476
    :cond_4
    if-le v3, v4, :cond_5

    move v0, v1

    .line 477
    :cond_5
    add-int/2addr v3, p2

    move v6, v0

    move v0, v2

    move v2, v3

    move v3, v6

    .line 479
    :goto_2
    if-eqz v3, :cond_6

    if-gt v2, v4, :cond_6

    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 480
    add-int/lit8 v2, v2, -0x1

    .line 482
    :cond_6
    if-gez v2, :cond_2

    .line 485
    add-int/lit8 v2, v2, 0xd

    .line 486
    add-int/lit8 v0, v0, -0x1

    move v3, v1

    .line 487
    goto :goto_2

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    const-string/jumbo v0, "hebrew"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 795
    const v0, 0x54f5d

    sub-int v0, p1, v0

    int-to-long v6, v0

    .line 796
    const-wide/16 v0, 0x6540

    mul-long/2addr v0, v6

    const-wide/32 v4, 0xbadf9

    div-long/2addr v0, v4

    .line 797
    const-wide/16 v4, 0x13

    mul-long/2addr v0, v4

    const-wide/16 v4, 0xea

    add-long/2addr v0, v4

    const-wide/16 v4, 0xeb

    div-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 798
    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v4

    .line 799
    sub-long v4, v6, v4

    long-to-int v0, v4

    move v3, v0

    move v4, v1

    .line 802
    :goto_0
    if-ge v3, v8, :cond_0

    .line 803
    add-int/lit8 v1, v4, -0x1

    .line 804
    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v4

    .line 805
    sub-long v4, v6, v4

    long-to-int v0, v4

    move v3, v0

    move v4, v1

    goto :goto_0

    .line 809
    :cond_0
    invoke-direct {p0, v4}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I

    move-result v5

    .line 810
    invoke-static {v4}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    :goto_1
    move v1, v2

    .line 813
    :goto_2
    aget-object v6, v0, v1

    aget v6, v6, v5

    if-le v3, v6, :cond_2

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 810
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I

    goto :goto_1

    .line 816
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 817
    aget-object v0, v0, v1

    aget v0, v0, v5

    sub-int v0, v3, v0

    .line 819
    invoke-virtual {p0, v2, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    .line 820
    invoke-virtual {p0, v8, v4}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    .line 821
    const/16 v2, 0x13

    invoke-virtual {p0, v2, v4}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    .line 822
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    .line 823
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    .line 824
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V

    .line 825
    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 5

    .prologue
    .line 856
    move v0, p2

    move v1, p1

    :goto_0
    if-gez v0, :cond_3

    .line 857
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 860
    :goto_1
    const/16 v0, 0xc

    if-le v2, v0, :cond_0

    .line 861
    add-int/lit8 v1, v3, 0x1

    invoke-static {v3}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v0

    sub-int v0, v2, v0

    move v2, v0

    move v3, v1

    goto :goto_1

    .line 864
    :cond_0
    invoke-static {v3}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v0

    .line 866
    if-eqz v2, :cond_1

    .line 867
    invoke-static {v3}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 868
    sget-object v4, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    aget-object v2, v4, v2

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I

    move-result v3

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 874
    :cond_1
    :goto_2
    const-wide/32 v2, 0x54f5d

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 870
    :cond_2
    sget-object v4, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I

    aget-object v2, v4, v2

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I

    move-result v3

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2

    :cond_3
    move v2, v0

    move v3, v1

    goto :goto_1
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 836
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/HebrewCalendar;->newerField(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 837
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/HebrewCalendar;->internalGet(II)I

    move-result v0

    .line 841
    :goto_0
    return v0

    .line 839
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/HebrewCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .prologue
    .line 710
    sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 3

    .prologue
    .line 724
    move v0, p2

    move v1, p1

    :goto_0
    if-gez v0, :cond_0

    .line 725
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 728
    :cond_0
    :goto_1
    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    .line 729
    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    .line 732
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 740
    sget-object v1, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    aget-object v0, v1, v0

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_2
    return v0

    .line 736
    :pswitch_0
    sget-object v2, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    aget-object v0, v2, v0

    invoke-direct {p0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_2

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected handleGetYearLength(I)I
    .locals 4

    .prologue
    .line 749
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected validateField(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 762
    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/util/HebrewCalendar;->handleGetExtendedYear()I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->internalGet(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MONTH cannot be ADAR_1(5) except leap years"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->validateField(I)V

    .line 767
    return-void
.end method
