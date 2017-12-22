.class public Lcom/ibm/icu/util/PersianCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "PersianCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LIMITS:[[I

.field private static final MONTH_COUNT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    .line 267
    const/16 v0, 0x16

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/PersianCalendar;->LIMITS:[[I

    return-void

    .line 75
    nop

    :array_0
    .array-data 4
        0x1f
        0x1f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1f
        0x1f
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x1f
        0x1f
        0x3e
    .end array-data

    :array_3
    .array-data 4
        0x1f
        0x1f
        0x5d
    .end array-data

    :array_4
    .array-data 4
        0x1f
        0x1f
        0x7c
    .end array-data

    :array_5
    .array-data 4
        0x1f
        0x1f
        0x9b
    .end array-data

    :array_6
    .array-data 4
        0x1e
        0x1e
        0xba
    .end array-data

    :array_7
    .array-data 4
        0x1e
        0x1e
        0xd8
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0x1e
        0xf6
    .end array-data

    :array_9
    .array-data 4
        0x1e
        0x1e
        0x114
    .end array-data

    :array_a
    .array-data 4
        0x1e
        0x1e
        0x132
    .end array-data

    :array_b
    .array-data 4
        0x1d
        0x1e
        0x150
    .end array-data

    .line 267
    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x34
        0x35
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x1
        0x1d
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
        0x16d
        0x16e
    .end array-data

    :array_12
    .array-data 4
        -0x1
        -0x1
        0x5
        0x5
    .end array-data

    :array_13
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_14
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/PersianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/PersianCalendar;->setTimeInMillis(J)V

    .line 191
    return-void
.end method

.method private static final isLeapYear(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    new-array v2, v0, [I

    .line 313
    mul-int/lit8 v3, p0, 0x19

    add-int/lit8 v3, v3, 0xb

    const/16 v4, 0x21

    invoke-static {v3, v4, v2}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(II[I)I

    .line 314
    aget v2, v2, v1

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    const-string/jumbo v0, "persian"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v12, 0x21

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 422
    const v0, 0x1dbaa0

    sub-int v0, p1, v0

    int-to-long v0, v0

    .line 423
    mul-long v2, v12, v0

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2f15

    invoke-static {v2, v3, v4, v5}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 425
    const-wide/16 v4, 0x16d

    int-to-long v6, v2

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x8

    int-to-long v8, v2

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x15

    add-long/2addr v6, v8

    invoke-static {v6, v7, v12, v13}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 426
    sub-long/2addr v0, v4

    long-to-int v1, v0

    .line 427
    const/16 v0, 0xd8

    if-ge v1, v0, :cond_0

    .line 428
    div-int/lit8 v0, v1, 0x1f

    .line 432
    :goto_0
    sget-object v3, Lcom/ibm/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v3, v3, v0

    aget v3, v3, v11

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 435
    invoke-virtual {p0, v10, v10}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    .line 436
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    .line 437
    const/16 v4, 0x13

    invoke-virtual {p0, v4, v2}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    .line 438
    invoke-virtual {p0, v11, v0}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    .line 439
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    .line 440
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/PersianCalendar;->internalSet(II)V

    .line 441
    return-void

    .line 430
    :cond_0
    add-int/lit8 v0, v1, -0x6

    div-int/lit8 v0, v0, 0x1e

    goto :goto_0
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-le p2, v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 371
    const/16 v1, 0xc

    invoke-static {p2, v1, v0}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result v1

    add-int/2addr p1, v1

    .line 372
    const/4 v1, 0x0

    aget p2, v0, v1

    .line 375
    :cond_1
    const v0, 0x1dba9f

    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x16d

    add-int/2addr v0, v1

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x15

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    if-eqz p2, :cond_2

    .line 377
    sget-object v1, Lcom/ibm/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v1, v1, p2

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 379
    :cond_2
    return v0
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 393
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/PersianCalendar;->newerField(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 394
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/PersianCalendar;->internalGet(II)I

    move-result v0

    .line 398
    :goto_0
    return v0

    .line 396
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/PersianCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lcom/ibm/icu/util/PersianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 335
    if-ltz p2, :cond_0

    const/16 v2, 0xb

    if-le p2, v2, :cond_1

    .line 336
    :cond_0
    new-array v2, v0, [I

    .line 337
    const/16 v3, 0xc

    invoke-static {p2, v3, v2}, Lcom/ibm/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result v3

    add-int/2addr p1, v3

    .line 338
    aget p2, v2, v1

    .line 341
    :cond_1
    sget-object v2, Lcom/ibm/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v2, v2, p2

    invoke-static {p1}, Lcom/ibm/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    aget v0, v2, v0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected handleGetYearLength(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    invoke-static {p1}, Lcom/ibm/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method
