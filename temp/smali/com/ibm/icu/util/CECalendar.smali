.class abstract Lcom/ibm/icu/util/CECalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "CECalendar.java"


# static fields
.field private static final LIMITS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 23
    const/16 v0, 0x16

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_6

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

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/CECalendar;->LIMITS:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
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
        0x34
        0x35
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x5
        0x1e
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x16d
        0x16e
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
        0x1
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
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CECalendar;->setTimeInMillis(J)V

    .line 116
    return-void
.end method

.method public static ceToJD(JIII)I
    .locals 8

    .prologue
    .line 240
    if-ltz p2, :cond_0

    .line 241
    div-int/lit8 v0, p2, 0xd

    int-to-long v0, v0

    add-long v2, p0, v0

    .line 242
    rem-int/lit8 v0, p2, 0xd

    .line 248
    :goto_0
    int-to-long v4, p4

    const-wide/16 v6, 0x16d

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    .line 251
    invoke-static {v2, v3, v6, v7}, Lcom/ibm/icu/util/CECalendar;->floorDivide(JJ)J

    move-result-wide v2

    add-long/2addr v2, v4

    mul-int/lit8 v0, v0, 0x1e

    int-to-long v0, v0

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 248
    return v0

    .line 244
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 245
    div-int/lit8 v1, v0, 0xd

    add-int/lit8 v1, v1, -0x1

    int-to-long v2, v1

    add-long/2addr v2, p0

    .line 246
    rem-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public static jdToCE(II[I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    new-array v0, v5, [I

    .line 264
    sub-int v1, p0, p1

    const/16 v2, 0x5b5

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/CECalendar;->floorDivide(II[I)I

    move-result v1

    .line 267
    mul-int/lit8 v1, v1, 0x4

    aget v2, v0, v4

    div-int/lit16 v2, v2, 0x16d

    aget v3, v0, v4

    div-int/lit16 v3, v3, 0x5b4

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p2, v4

    .line 269
    aget v1, v0, v4

    const/16 v2, 0x5b4

    if-ne v1, v2, :cond_0

    const/16 v0, 0x16d

    .line 272
    :goto_0
    div-int/lit8 v1, v0, 0x1e

    aput v1, p2, v5

    .line 274
    const/4 v1, 0x2

    rem-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v1

    .line 275
    return-void

    .line 269
    :cond_0
    aget v0, v0, v4

    rem-int/lit16 v0, v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method protected abstract getJDEpochOffset()I
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 4

    .prologue
    .line 181
    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ibm/icu/util/CECalendar;->getJDEpochOffset()I

    move-result v3

    invoke-static {v0, v1, p2, v2, v3}, Lcom/ibm/icu/util/CECalendar;->ceToJD(JIII)I

    move-result v0

    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/ibm/icu/util/CECalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 1

    .prologue
    .line 208
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    .line 211
    const/16 v0, 0x1e

    .line 216
    :goto_0
    return v0

    :cond_0
    rem-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method
