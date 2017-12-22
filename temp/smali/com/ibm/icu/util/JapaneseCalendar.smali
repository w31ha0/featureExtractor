.class public Lcom/ibm/icu/util/JapaneseCalendar;
.super Lcom/ibm/icu/util/GregorianCalendar;
.source "JapaneseCalendar.java"


# static fields
.field public static final CURRENT_ERA:I

.field private static final ERAS:[I

.field public static final HEISEI:I

.field public static final MEIJI:I

.field public static final SHOWA:I

.field public static final TAISHO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x2c4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    .line 575
    sget-object v0, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    .line 581
    sget v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    add-int/lit8 v0, v0, -0x3

    sput v0, Lcom/ibm/icu/util/JapaneseCalendar;->MEIJI:I

    .line 587
    sget v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/ibm/icu/util/JapaneseCalendar;->TAISHO:I

    .line 593
    sget v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ibm/icu/util/JapaneseCalendar;->SHOWA:I

    .line 599
    sget v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    sput v0, Lcom/ibm/icu/util/JapaneseCalendar;->HEISEI:I

    return-void

    .line 325
    nop

    :array_0
    .array-data 4
        0x285
        0x6
        0x13
        0x28a
        0x2
        0xf
        0x2a0
        0x1
        0x1
        0x2ae
        0x7
        0x14
        0x2bd
        0x3
        0x15
        0x2c0
        0x5
        0xa
        0x2c4
        0x1
        0xb
        0x2cb
        0x9
        0x2
        0x2cd
        0xb
        0x11
        0x2d4
        0x2
        0x4
        0x2d9
        0x8
        0x5
        0x2ed
        0x4
        0xe
        0x2ed
        0x7
        0x2
        0x2f5
        0x8
        0x12
        0x2fd
        0x1
        0x7
        0x2ff
        0x8
        0x10
        0x302
        0xa
        0x1
        0x30d
        0x1
        0x1
        0x30e
        0x8
        0x13
        0x326
        0x5
        0x12
        0x32a
        0x9
        0x13
        0x338
        0x1
        0x5
        0x342
        0x1
        0x3
        0x350
        0x6
        0xd
        0x353
        0x4
        0x1c
        0x356
        0xb
        0x1e
        0x359
        0x2
        0x15
        0x35b
        0x4
        0xf
        0x36d
        0x4
        0x10
        0x375
        0x2
        0x15
        0x379
        0x4
        0x1b
        0x382
        0x4
        0x1a
        0x385
        0x7
        0xf
        0x39b
        0x4
        0xb
        0x3a3
        0x4
        0x1a
        0x3aa
        0x5
        0x16
        0x3b3
        0x4
        0x16
        0x3bd
        0xa
        0x1b
        0x3c1
        0x2
        0x10
        0x3c4
        0x7
        0xa
        0x3c8
        0x8
        0xd
        0x3ca
        0x3
        0x19
        0x3cd
        0xc
        0x14
        0x3d0
        0x7
        0xd
        0x3d2
        0xb
        0x1d
        0x3d7
        0x4
        0xf
        0x3d9
        0x4
        0x1b
        0x3db
        0x4
        0x5
        0x3dd
        0x8
        0x8
        0x3de
        0xb
        0x7
        0x3e3
        0x2
        0x16
        0x3e7
        0x1
        0xd
        0x3ec
        0x7
        0x14
        0x3f4
        0xc
        0x19
        0x3f9
        0x4
        0x17
        0x3fd
        0x2
        0x2
        0x400
        0x7
        0xd
        0x404
        0x7
        0x19
        0x40d
        0x4
        0x15
        0x410
        0xb
        0xa
        0x414
        0xb
        0x18
        0x416
        0x4
        0xe
        0x41d
        0x1
        0xb
        0x422
        0x8
        0x1d
        0x429
        0x8
        0x2
        0x42d
        0x4
        0xd
        0x432
        0x8
        0x17
        0x435
        0xb
        0x11
        0x439
        0x2
        0xa
        0x43c
        0x2
        0x7
        0x43f
        0x4
        0x7
        0x446
        0xc
        0xf
        0x448
        0xc
        0x11
        0x449
        0xb
        0x15
        0x44b
        0x8
        0x1c
        0x450
        0x2
        0xa
        0x452
        0x4
        0x9
        0x454
        0x8
        0x3
        0x456
        0x7
        0xd
        0x459
        0x7
        0xd
        0x45e
        0x4
        0x3
        0x460
        0x4
        0xa
        0x464
        0x4
        0x3
        0x466
        0x1
        0x16
        0x46b
        0x1
        0x1d
        0x46c
        0x8
        0xb
        0x46f
        0x4
        0x1b
        0x475
        0x7
        0xa
        0x476
        0x4
        0x1c
        0x478
        0x2
        0x17
        0x479
        0x7
        0x16
        0x47f
        0x1
        0x1a
        0x482
        0xa
        0x1c
        0x484
        0x4
        0x1b
        0x487
        0x4
        0x14
        0x488
        0x1
        0xa
        0x489
        0x9
        0x4
        0x48b
        0x3
        0x1d
        0x48d
        0x6
        0x5
        0x48e
        0x8
        0x1b
        0x491
        0x4
        0x8
        0x493
        0x4
        0x15
        0x497
        0x7
        0x1c
        0x499
        0x8
        0x4
        0x49d
        0x7
        0xe
        0x49e
        0x5
        0x1b
        0x4a0
        0x4
        0x10
        0x4a1
        0x8
        0xe
        0x4a6
        0x4
        0xb
        0x4af
        0x4
        0x1b
        0x4b1
        0x2
        0xd
        0x4b4
        0x2
        0x14
        0x4b6
        0x4
        0x1b
        0x4b7
        0xa
        0x19
        0x4bb
        0x3
        0x9
        0x4bd
        0xc
        0x6
        0x4c3
        0x4
        0xc
        0x4c6
        0x4
        0xd
        0x4c8
        0xb
        0x14
        0x4c9
        0x4
        0x14
        0x4cb
        0xc
        0xa
        0x4cd
        0x3
        0x5
        0x4d0
        0x4
        0x2
        0x4d1
        0x4
        0xf
        0x4d2
        0xb
        0x5
        0x4d3
        0x9
        0x13
        0x4d6
        0xb
        0x17
        0x4d7
        0x2
        0x7
        0x4d8
        0x7
        0x10
        0x4db
        0x2
        0x1a
        0x4df
        0x2
        0x1c
        0x4e1
        0x3
        0x12
        0x4e8
        0xa
        0x5
        0x4e9
        0x3
        0xe
        0x4eb
        0x3
        0x1a
        0x4ec
        0x4
        0xd
        0x4ed
        0x2
        0x14
        0x4f0
        0x2
        0x1c
        0x4fb
        0x4
        0x19
        0x4fe
        0x2
        0x1d
        0x508
        0x4
        0x1c
        0x50d
        0x8
        0x37
        0x513
        0x4
        0x19
        0x516
        0xb
        0x15
        0x517
        0x8
        0x5
        0x51a
        0xc
        0xe
        0x51c
        0xa
        0x9
        0x51f
        0x4
        0x1c
        0x520
        0x3
        0x14
        0x525
        0x2
        0x3
        0x527
        0x4
        0x1c
        0x529
        0x2
        0x17
        0x52c
        0xc
        0x9
        0x52e
        0x4
        0x1a
        0x531
        0x8
        0x1d
        0x533
        0x8
        0x9
        0x536
        0x1
        0x1d
        0x538
        0x2
        0x1d
        0x53c
        0x4
        0x1c
        0x542
        0xc
        0x8
        0x55a
        0x7
        0x18
        0x55c
        0x4
        0x1
        0x55f
        0x5
        0x1b
        0x563
        0x3
        0x16
        0x565
        0x2
        0xa
        0x568
        0x4
        0x1c
        0x568
        0x2
        0x1b
        0x56b
        0x8
        0x17
        0x56d
        0x2
        0x9
        0x56e
        0x3
        0x1a
        0x572
        0x7
        0x5
        0x594
        0x4
        0x1b
        0x595
        0x9
        0x5
        0x5a1
        0x2
        0x11
        0x5a4
        0x2
        0x5
        0x5a9
        0x7
        0x1c
        0x5ac
        0x7
        0x19
        0x5af
        0x7
        0x19
        0x5b1
        0x9
        0x1c
        0x5b4
        0xc
        0x15
        0x5ba
        0x2
        0x1c
        0x5bb
        0x3
        0x3
        0x5bd
        0x4
        0x1c
        0x5cf
        0x7
        0x1d
        0x5d1
        0x8
        0x15
        0x5d4
        0x7
        0x13
        0x5dd
        0x2
        0x1d
        0x5e0
        0x2
        0x1e
        0x5f1
        0x8
        0x17
        0x5f8
        0x8
        0x14
        0x5fc
        0x7
        0x1d
        0x613
        0xa
        0x17
        0x616
        0x2
        0x1c
        0x622
        0x4
        0x17
        0x625
        0x7
        0x1c
        0x638
        0xc
        0x8
        0x63c
        0xa
        0x1b
        0x64f
        0x7
        0xd
        0x658
        0x2
        0x1e
        0x66c
        0xc
        0x10
        0x670
        0x2
        0xf
        0x674
        0x9
        0x12
        0x677
        0x4
        0xd
        0x67a
        0x7
        0x17
        0x67d
        0x4
        0x19
        0x689
        0x9
        0x15
        0x691
        0x9
        0x1d
        0x694
        0x2
        0x15
        0x698
        0x9
        0x1e
        0x6a8
        0x3
        0xd
        0x6af
        0x4
        0x19
        0x6b4
        0x6
        0x16
        0x6c8
        0x4
        0x1c
        0x6cd
        0x2
        0x1b
        0x6d0
        0x2
        0x15
        0x6d4
        0x7
        0xc
        0x6d7
        0xa
        0x1b
        0x6e4
        0x6
        0x2
        0x6ec
        0xb
        0x10
        0x6f5
        0x4
        0x2
        0x6fd
        0x1
        0x19
        0x709
        0x2
        0x5
        0x70c
        0x2
        0xb
        0x71a
        0x4
        0x16
        0x726
        0xc
        0xa
        0x734
        0xc
        0x2
        0x738
        0x2
        0x1c
        0x73e
        0xb
        0x1b
        0x744
        0x3
        0x12
        0x745
        0x2
        0x13
        0x748
        0x2
        0x14
        0x749
        0x4
        0x7
        0x74c
        0x9
        0x8
        0x778
        0x7
        0x1e
        0x786
        0xc
        0x19
        0x7c5
        0x1
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 121
    return-void
.end method


# virtual methods
.method public getActualMaximum(I)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 656
    if-ne p1, v5, :cond_2

    .line 657
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/JapaneseCalendar;->get(I)I

    move-result v0

    .line 658
    sget v1, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    if-ne v0, v1, :cond_1

    .line 660
    const/4 v0, 0x3

    invoke-virtual {p0, v5, v0}, Lcom/ibm/icu/util/JapaneseCalendar;->handleGetLimit(II)I

    move-result v0

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 662
    :cond_1
    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    .line 663
    sget-object v2, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    .line 664
    sget-object v3, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    .line 666
    sget-object v4, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v0, v0, 0x3

    aget v0, v4, v0

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 667
    if-ne v2, v5, :cond_0

    if-ne v3, v5, :cond_0

    .line 669
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 674
    :cond_2
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getDefaultDayInMonth(II)I
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x0

    sget v1, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    .line 268
    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 269
    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 270
    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    .line 274
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;->getDefaultDayInMonth(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getDefaultMonthInYear(I)I
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x0

    sget v1, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    .line 247
    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 248
    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->getDefaultMonthInYear(I)I

    move-result v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    const-string/jumbo v0, "japanese"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 281
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->handleComputeFields(I)V

    .line 282
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result v5

    .line 290
    sget-object v0, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x3

    aget v0, v0, v1

    if-le v5, v0, :cond_1

    .line 291
    sget v2, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    .line 321
    :cond_0
    invoke-virtual {p0, v4, v2}, Lcom/ibm/icu/util/JapaneseCalendar;->internalSet(II)V

    .line 322
    const/4 v0, 0x1

    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    sub-int v1, v5, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalSet(II)V

    .line 323
    return-void

    .line 294
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    move v2, v4

    .line 296
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_0

    .line 297
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    .line 298
    sget-object v3, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v6, v1, 0x3

    aget v3, v3, v6

    sub-int v3, v5, v3

    .line 303
    if-nez v3, :cond_2

    .line 304
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result v3

    sget-object v6, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v3, v6

    .line 305
    if-nez v3, :cond_2

    .line 306
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result v3

    sget-object v6, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    sub-int/2addr v3, v6

    .line 309
    :cond_2
    if-ltz v3, :cond_3

    :goto_1
    move v2, v1

    .line 314
    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v2

    .line 312
    goto :goto_1
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x13

    .line 220
    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/util/JapaneseCalendar;->newerField(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, v1, v3}, Lcom/ibm/icu/util/JapaneseCalendar;->newerField(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 222
    const/16 v0, 0x7b2

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 225
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    sget v2, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    .line 226
    invoke-virtual {p0, v3, v2}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 609
    packed-switch p1, :pswitch_data_0

    .line 629
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    :goto_1
    :pswitch_0
    return v0

    .line 611
    :pswitch_1
    if-eqz p2, :cond_0

    if-ne p2, v0, :cond_1

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 614
    :cond_1
    sget v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    goto :goto_1

    .line 617
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 624
    :pswitch_3
    const/4 v0, 0x3

    invoke-super {p0, p1, v0}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    sget-object v1, Lcom/ibm/icu/util/JapaneseCalendar;->ERAS:[I

    sget v2, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    mul-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    sub-int/2addr v0, v1

    goto :goto_1

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 617
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 648
    const/4 v0, 0x0

    return v0
.end method
