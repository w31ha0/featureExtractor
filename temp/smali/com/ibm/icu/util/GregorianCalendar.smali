.class public Lcom/ibm/icu/util/GregorianCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field private static final LIMITS:[[I

.field private static final MONTH_COUNT:[[I


# instance fields
.field private transient cutoverJulianDay:I

.field private gregorianCutover:J

.field private transient gregorianCutoverYear:I

.field protected transient invertGregorian:Z

.field protected transient isGregorian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 234
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    .line 257
    const/16 v0, 0x17

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    new-array v1, v4, [I

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_12

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

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/GregorianCalendar;->LIMITS:[[I

    return-void

    .line 234
    nop

    :array_0
    .array-data 4
        0x1f
        0x1f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x1d
        0x1f
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x1f
        0x1f
        0x3b
        0x3c
    .end array-data

    :array_3
    .array-data 4
        0x1e
        0x1e
        0x5a
        0x5b
    .end array-data

    :array_4
    .array-data 4
        0x1f
        0x1f
        0x78
        0x79
    .end array-data

    :array_5
    .array-data 4
        0x1e
        0x1e
        0x97
        0x98
    .end array-data

    :array_6
    .array-data 4
        0x1f
        0x1f
        0xb5
        0xb6
    .end array-data

    :array_7
    .array-data 4
        0x1f
        0x1f
        0xd4
        0xd5
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0x1e
        0xf3
        0xf4
    .end array-data

    :array_9
    .array-data 4
        0x1f
        0x1f
        0x111
        0x112
    .end array-data

    :array_a
    .array-data 4
        0x1e
        0x1e
        0x130
        0x131
    .end array-data

    :array_b
    .array-data 4
        0x1f
        0x1f
        0x14e
        0x14f
    .end array-data

    .line 257
    :array_c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x1
        0x58f163
        0x5915be
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
        0x1c
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
        0x4
        0x5
    .end array-data

    :array_13
    .array-data 4
        -0x5915be
        -0x5915be
        0x58f164
        0x5915bf
    .end array-data

    :array_14
    .array-data 4
        -0x5915bd
        -0x5915bd
        0x58f163
        0x5915be
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 341
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 352
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 304
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    .line 309
    const v0, 0x231519

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    .line 315
    const/16 v0, 0x62e

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 396
    return-void
.end method


# virtual methods
.method public getActualMaximum(I)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 648
    packed-switch p1, :pswitch_data_0

    .line 697
    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v3

    :cond_0
    return v3

    .line 671
    :pswitch_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 672
    invoke-virtual {v0, v7}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 674
    invoke-virtual {v0, v8}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    .line 675
    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 680
    sget-object v1, Lcom/ibm/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v1, v1, v7

    aget v3, v1, v7

    .line 681
    sget-object v1, Lcom/ibm/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 682
    :goto_0
    add-int/lit8 v2, v3, 0x1

    if-ge v2, v1, :cond_0

    .line 683
    add-int v2, v3, v1

    div-int/lit8 v2, v2, 0x2

    .line 684
    invoke-virtual {v0, v7, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 685
    invoke-virtual {v0, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v2, :cond_1

    invoke-virtual {v0, v8}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v4, :cond_1

    :goto_1
    move v3, v2

    .line 691
    goto :goto_0

    .line 689
    :cond_1
    invoke-virtual {v0, v5}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    move v1, v2

    move v2, v3

    goto :goto_1

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    const-string/jumbo v0, "gregorian"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 10

    .prologue
    .line 761
    iget v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    if-lt p1, v0, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianMonth()I

    move-result v2

    .line 763
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianDayOfMonth()I

    move-result v1

    .line 764
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianDayOfYear()I

    move-result v0

    .line 765
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianYear()I

    move-result v3

    .line 794
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    .line 795
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    .line 796
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    .line 797
    const/16 v0, 0x13

    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    .line 798
    const/4 v0, 0x1

    .line 799
    const/4 v1, 0x1

    if-ge v3, v1, :cond_0

    .line 800
    const/4 v0, 0x0

    .line 801
    rsub-int/lit8 v3, v3, 0x1

    .line 803
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    .line 804
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    .line 805
    return-void

    .line 769
    :cond_1
    const v0, 0x1a4450

    sub-int v0, p1, v0

    int-to-long v0, v0

    .line 770
    const-wide/16 v2, 0x4

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x5b8

    add-long/2addr v2, v4

    const-wide/16 v4, 0x5b5

    invoke-static {v2, v3, v4, v5}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 773
    const-wide/16 v4, 0x16d

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    mul-long/2addr v4, v6

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4

    invoke-static {v6, v7, v8, v9}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 774
    sub-long/2addr v0, v4

    long-to-int v5, v0

    .line 782
    and-int/lit8 v0, v3, 0x3

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v4, v0

    .line 785
    :goto_1
    const/4 v0, 0x0

    .line 786
    if-eqz v4, :cond_4

    const/16 v1, 0x3c

    .line 787
    :goto_2
    if-lt v5, v1, :cond_2

    .line 788
    if-eqz v4, :cond_5

    const/4 v0, 0x1

    .line 790
    :cond_2
    :goto_3
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x6

    div-int/lit16 v2, v0, 0x16f

    .line 791
    sget-object v0, Lcom/ibm/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v1, v0, v2

    if-eqz v4, :cond_6

    const/4 v0, 0x3

    :goto_4
    aget v0, v1, v0

    sub-int v0, v5, v0

    add-int/lit8 v1, v0, 0x1

    .line 792
    add-int/lit8 v0, v5, 0x1

    goto :goto_0

    .line 782
    :cond_3
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    .line 786
    :cond_4
    const/16 v1, 0x3b

    goto :goto_2

    .line 788
    :cond_5
    const/4 v0, 0x2

    goto :goto_3

    .line 791
    :cond_6
    const/4 v0, 0x2

    goto :goto_4
.end method

.method protected handleComputeJulianDay(I)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 835
    iput-boolean v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->invertGregorian:Z

    .line 837
    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v0

    .line 841
    iget-boolean v3, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    iget v4, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    if-lt v0, v4, :cond_0

    move v1, v2

    :cond_0
    if-eq v3, v1, :cond_1

    .line 842
    iput-boolean v2, p0, Lcom/ibm/icu/util/GregorianCalendar;->invertGregorian:Z

    .line 843
    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v0

    .line 846
    :cond_1
    return v0
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 857
    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-le p2, v0, :cond_1

    .line 858
    :cond_0
    new-array v0, v1, [I

    .line 859
    const/16 v3, 0xc

    invoke-static {p2, v3, v0}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II[I)I

    move-result v3

    add-int/2addr p1, v3

    .line 860
    aget p2, v0, v2

    .line 863
    :cond_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_4

    move v0, v1

    .line 864
    :goto_0
    add-int/lit8 v5, p1, -0x1

    .line 865
    mul-int/lit16 v3, v5, 0x16d

    const/4 v4, 0x4

    invoke-static {v5, v4}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x1a444f

    add-int/2addr v4, v3

    .line 867
    iget v3, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    if-lt p1, v3, :cond_5

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    .line 868
    iget-boolean v3, p0, Lcom/ibm/icu/util/GregorianCalendar;->invertGregorian:Z

    if-eqz v3, :cond_2

    .line 869
    iget-boolean v3, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    if-nez v3, :cond_6

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    .line 871
    :cond_2
    iget-boolean v3, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    if-eqz v3, :cond_a

    .line 872
    if-eqz v0, :cond_7

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_3

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_7

    .line 875
    :cond_3
    :goto_3
    const/16 v0, 0x190

    invoke-static {v5, v0}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v5, v2}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    move v6, v0

    move v0, v1

    move v1, v6

    .line 882
    :goto_4
    if-eqz p2, :cond_9

    .line 883
    sget-object v2, Lcom/ibm/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v2, v2, p2

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    :goto_5
    aget v0, v2, v0

    add-int/2addr v0, v1

    .line 886
    :goto_6
    return v0

    :cond_4
    move v0, v2

    .line 863
    goto :goto_0

    :cond_5
    move v3, v2

    .line 867
    goto :goto_1

    :cond_6
    move v3, v2

    .line 869
    goto :goto_2

    :cond_7
    move v1, v2

    .line 872
    goto :goto_3

    .line 883
    :cond_8
    const/4 v0, 0x2

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    move v1, v4

    goto :goto_4
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    .prologue
    const/16 v3, 0x7b2

    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 816
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/GregorianCalendar;->newerField(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 817
    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v0

    .line 827
    :goto_0
    return v0

    .line 820
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v0

    .line 821
    if-nez v0, :cond_1

    .line 822
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/ibm/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    if-ltz p2, :cond_0

    const/16 v2, 0xb

    if-le p2, v2, :cond_1

    .line 727
    :cond_0
    new-array v2, v0, [I

    .line 728
    const/16 v3, 0xc

    invoke-static {p2, v3, v2}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II[I)I

    move-result v3

    add-int/2addr p1, v3

    .line 729
    aget p2, v2, v1

    .line 732
    :cond_1
    sget-object v2, Lcom/ibm/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v2, v2, p2

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->isLeapYear(I)Z

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

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 551
    invoke-super {p0}, Lcom/ibm/icu/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method inDaylightTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-nez v1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v0

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->complete()V

    .line 712
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z
    .locals 4

    .prologue
    .line 541
    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Lcom/ibm/icu/util/GregorianCalendar;

    iget-wide v2, p1, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeapYear(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    iget v2, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    if-lt p1, v2, :cond_2

    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
