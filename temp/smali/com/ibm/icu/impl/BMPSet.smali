.class public final Lcom/ibm/icu/impl/BMPSet;
.super Ljava/lang/Object;
.source "BMPSet.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static U16_SURROGATE_OFFSET:I


# instance fields
.field private bmpBlockBits:[I

.field private latin1Contains:[Z

.field private final list:[I

.field private list4kStarts:[I

.field private final listLength:I

.field private table7FF:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/BMPSet;->$assertionsDisabled:Z

    .line 26
    const v0, 0x35fdc00

    sput v0, Lcom/ibm/icu/impl/BMPSet;->U16_SURROGATE_OFFSET:I

    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([II)V
    .locals 5

    .prologue
    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    .line 71
    iput p2, p0, Lcom/ibm/icu/impl/BMPSet;->listLength:I

    .line 72
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->latin1Contains:[Z

    .line 73
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->table7FF:[I

    .line 74
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    .line 75
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    .line 82
    iget-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v1, 0x800

    iget v2, p0, Lcom/ibm/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/ibm/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v1

    aput v1, v0, v3

    .line 84
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    shl-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Lcom/ibm/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/ibm/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v2

    aput v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v1, 0x11

    iget v2, p0, Lcom/ibm/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 89
    invoke-direct {p0}, Lcom/ibm/icu/impl/BMPSet;->initBits()V

    .line 90
    return-void
.end method

.method private final containsSlow(III)Z
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findCodePoint(III)I
    .locals 5

    .prologue
    .line 490
    iget-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    aget v0, v0, p2

    if-ge p1, v0, :cond_0

    .line 508
    :goto_0
    return p2

    .line 494
    :cond_0
    if-ge p2, p3, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    if-lt p1, v0, :cond_4

    :cond_1
    move p2, p3

    .line 495
    goto :goto_0

    .line 502
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    aget v3, v3, v0

    if-ge p1, v3, :cond_3

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 499
    :goto_2
    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    .line 500
    if-ne v0, v2, :cond_2

    move p2, v1

    .line 508
    goto :goto_0

    :cond_3
    move v4, v1

    move v1, v0

    move v0, v4

    .line 505
    goto :goto_1

    :cond_4
    move v1, p3

    move v2, p2

    goto :goto_2
.end method

.method private initBits()V
    .locals 12

    .prologue
    const v10, 0x10001

    const/high16 v6, 0x110000

    const/16 v9, 0x100

    const/high16 v4, 0x10000

    const/16 v3, 0x800

    .line 380
    const/4 v0, 0x0

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v0

    .line 385
    iget v0, p0, Lcom/ibm/icu/impl/BMPSet;->listLength:I

    if-ge v2, v0, :cond_7

    .line 386
    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    add-int/lit8 v0, v2, 0x1

    aget v5, v5, v2

    .line 390
    :goto_0
    if-lt v1, v9, :cond_9

    move v2, v1

    move v1, v5

    move v5, v0

    .line 399
    :goto_1
    if-ge v2, v3, :cond_10

    .line 400
    iget-object v7, p0, Lcom/ibm/icu/impl/BMPSet;->table7FF:[I

    if-gt v1, v3, :cond_b

    move v0, v1

    :goto_2
    invoke-static {v7, v2, v0}, Lcom/ibm/icu/impl/BMPSet;->set32x64Bits([III)V

    .line 401
    if-le v1, v3, :cond_c

    move v0, v3

    :goto_3
    move v2, v0

    move v0, v3

    move v3, v5

    .line 416
    :goto_4
    if-ge v2, v4, :cond_6

    .line 417
    if-le v1, v4, :cond_1

    move v1, v4

    .line 421
    :cond_1
    if-ge v2, v0, :cond_2

    move v2, v0

    .line 424
    :cond_2
    if-ge v2, v1, :cond_5

    .line 425
    and-int/lit8 v5, v2, 0x3f

    if-eqz v5, :cond_3

    .line 427
    shr-int/lit8 v0, v2, 0x6

    .line 428
    iget-object v2, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    and-int/lit8 v5, v0, 0x3f

    aget v7, v2, v5

    shr-int/lit8 v8, v0, 0x6

    shl-int v8, v10, v8

    or-int/2addr v7, v8

    aput v7, v2, v5

    .line 429
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    move v2, v0

    .line 432
    :cond_3
    if-ge v2, v1, :cond_5

    .line 433
    and-int/lit8 v5, v1, -0x40

    if-ge v2, v5, :cond_4

    .line 435
    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v2, v2, 0x6

    shr-int/lit8 v7, v1, 0x6

    invoke-static {v5, v2, v7}, Lcom/ibm/icu/impl/BMPSet;->set32x64Bits([III)V

    .line 438
    :cond_4
    and-int/lit8 v2, v1, 0x3f

    if-eqz v2, :cond_5

    .line 440
    shr-int/lit8 v0, v1, 0x6

    .line 441
    iget-object v1, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    and-int/lit8 v2, v0, 0x3f

    aget v5, v1, v2

    shr-int/lit8 v7, v0, 0x6

    shl-int v7, v10, v7

    or-int/2addr v5, v7

    aput v5, v1, v2

    .line 442
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    move v1, v0

    .line 448
    :cond_5
    if-ne v1, v4, :cond_e

    .line 459
    :cond_6
    return-void

    :cond_7
    move v0, v2

    move v5, v6

    .line 388
    goto :goto_0

    :cond_8
    move v1, v2

    .line 394
    :cond_9
    iget-object v7, p0, Lcom/ibm/icu/impl/BMPSet;->latin1Contains:[Z

    add-int/lit8 v2, v1, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v7, v1

    .line 395
    if-ge v2, v5, :cond_a

    if-lt v2, v9, :cond_8

    .line 396
    :cond_a
    if-le v5, v9, :cond_0

    move v1, v5

    move v5, v0

    goto :goto_1

    :cond_b
    move v0, v3

    .line 400
    goto :goto_2

    .line 406
    :cond_c
    iget-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, v5, 0x1

    aget v2, v0, v5

    .line 407
    iget v0, p0, Lcom/ibm/icu/impl/BMPSet;->listLength:I

    if-ge v1, v0, :cond_d

    .line 408
    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    add-int/lit8 v0, v1, 0x1

    aget v1, v5, v1

    move v5, v0

    goto/16 :goto_1

    :cond_d
    move v5, v1

    move v1, v6

    .line 410
    goto/16 :goto_1

    .line 452
    :cond_e
    iget-object v1, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v3, v1, v3

    .line 453
    iget v1, p0, Lcom/ibm/icu/impl/BMPSet;->listLength:I

    if-ge v2, v1, :cond_f

    .line 454
    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, v2, 0x1

    aget v2, v5, v2

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v11

    goto/16 :goto_4

    :cond_f
    move v1, v6

    move v11, v2

    move v2, v3

    move v3, v11

    .line 456
    goto/16 :goto_4

    :cond_10
    move v0, v2

    goto/16 :goto_3
.end method

.method private static set32x64Bits([III)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0x40

    const/4 v8, 0x1

    .line 329
    sget-boolean v0, Lcom/ibm/icu/impl/BMPSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p0

    if-eq v9, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :cond_0
    shr-int/lit8 v3, p1, 0x6

    .line 331
    and-int/lit8 v0, p1, 0x3f

    .line 334
    shl-int v4, v8, v3

    .line 335
    add-int/lit8 v1, p1, 0x1

    if-ne v1, p2, :cond_2

    .line 336
    aget v1, p0, v0

    or-int/2addr v1, v4

    aput v1, p0, v0

    .line 376
    :cond_1
    return-void

    .line 340
    :cond_2
    shr-int/lit8 v5, p2, 0x6

    .line 341
    and-int/lit8 v6, p2, 0x3f

    .line 343
    if-ne v3, v5, :cond_3

    .line 345
    :goto_0
    if-ge v0, v6, :cond_1

    .line 346
    add-int/lit8 v1, v0, 0x1

    aget v2, p0, v0

    or-int/2addr v2, v4

    aput v2, p0, v0

    move v0, v1

    goto :goto_0

    .line 352
    :cond_3
    if-lez v0, :cond_7

    .line 354
    :goto_1
    add-int/lit8 v1, v0, 0x1

    aget v7, p0, v0

    or-int/2addr v7, v4

    aput v7, p0, v0

    .line 355
    if-lt v1, v9, :cond_6

    .line 356
    add-int/lit8 v0, v3, 0x1

    .line 358
    :goto_2
    if-ge v0, v5, :cond_5

    .line 359
    shl-int v0, v8, v0

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    .line 360
    const/16 v1, 0x20

    if-ge v5, v1, :cond_4

    .line 361
    shl-int v1, v8, v5

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    :cond_4
    move v1, v2

    .line 363
    :goto_3
    if-ge v1, v9, :cond_5

    .line 364
    aget v3, p0, v1

    or-int/2addr v3, v0

    aput v3, p0, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 371
    :cond_5
    shl-int v1, v8, v5

    move v0, v2

    .line 372
    :goto_4
    if-ge v0, v6, :cond_1

    .line 373
    aget v2, p0, v0

    or-int/2addr v2, v1

    aput v2, p0, v0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2
.end method


# virtual methods
.method public contains(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 102
    const/16 v2, 0xff

    if-gt p1, v2, :cond_1

    .line 103
    iget-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v0, v0, p1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const/16 v2, 0x7ff

    if-gt p1, v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/ibm/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v3, p1, 0x3f

    aget v2, v2, v3

    shr-int/lit8 v3, p1, 0x6

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 106
    :cond_2
    const v2, 0xd800

    if-lt p1, v2, :cond_3

    const v2, 0xe000

    if-lt p1, v2, :cond_5

    const v2, 0xffff

    if-gt p1, v2, :cond_5

    .line 107
    :cond_3
    shr-int/lit8 v2, p1, 0xc

    .line 108
    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget v3, v3, v4

    shr-int/2addr v3, v2

    const v4, 0x10001

    and-int/2addr v3, v4

    .line 109
    if-gt v3, v0, :cond_4

    .line 112
    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v0

    goto :goto_0

    .line 117
    :cond_5
    const v0, 0x10ffff

    if-gt p1, v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 123
    goto :goto_0
.end method

.method public final span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I
    .locals 7

    .prologue
    .line 142
    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 144
    const/4 v0, 0x0

    .line 145
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-eq v1, p3, :cond_f

    move v1, p2

    .line 147
    :goto_0
    if-ge v1, v2, :cond_0

    .line 148
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 149
    const/16 v4, 0xff

    if-gt v3, v4, :cond_2

    .line 150
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v3, v4, v3

    if-nez v3, :cond_3

    .line 224
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    .line 225
    sub-int v2, v1, p2

    .line 226
    sub-int v0, v2, v0

    iput v0, p4, Lcom/ibm/icu/util/OutputInt;->value:I

    .line 228
    :cond_1
    return v1

    .line 153
    :cond_2
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_4

    .line 154
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    const/4 v5, 0x1

    shr-int/lit8 v3, v3, 0x6

    shl-int v3, v5, v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 182
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_4
    const v4, 0xd800

    if-lt v3, v4, :cond_5

    const v4, 0xdc00

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    if-eq v4, v2, :cond_5

    add-int/lit8 v4, v1, 0x1

    .line 158
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const v5, 0xdc00

    if-lt v4, v5, :cond_5

    const v5, 0xe000

    if-lt v4, v5, :cond_7

    .line 159
    :cond_5
    shr-int/lit8 v4, v3, 0xc

    .line 160
    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    shr-int/2addr v5, v4

    const v6, 0x10001

    and-int/2addr v5, v6

    .line 161
    const/4 v6, 0x1

    if-gt v5, v6, :cond_6

    .line 164
    if-nez v5, :cond_3

    goto :goto_1

    .line 169
    :cond_6
    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    aget v5, v5, v4

    iget-object v6, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    invoke-direct {p0, v3, v5, v4}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 175
    :cond_7
    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 176
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v5, 0x10

    aget v4, v4, v5

    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v6, 0x11

    aget v5, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 218
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 219
    add-int/lit8 v1, v1, 0x1

    .line 221
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 186
    :goto_3
    if-ge v1, v2, :cond_0

    .line 187
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 188
    const/16 v4, 0xff

    if-gt v3, v4, :cond_a

    .line 189
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v3, v4, v3

    if-eqz v3, :cond_9

    goto/16 :goto_1

    .line 192
    :cond_a
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_b

    .line 193
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    const/4 v5, 0x1

    shr-int/lit8 v3, v3, 0x6

    shl-int v3, v5, v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    goto/16 :goto_1

    .line 196
    :cond_b
    const v4, 0xd800

    if-lt v3, v4, :cond_c

    const v4, 0xdc00

    if-ge v3, v4, :cond_c

    add-int/lit8 v4, v1, 0x1

    if-eq v4, v2, :cond_c

    add-int/lit8 v4, v1, 0x1

    .line 197
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const v5, 0xdc00

    if-lt v4, v5, :cond_c

    const v5, 0xe000

    if-lt v4, v5, :cond_e

    .line 198
    :cond_c
    shr-int/lit8 v4, v3, 0xc

    .line 199
    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    shr-int/2addr v5, v4

    const v6, 0x10001

    and-int/2addr v5, v6

    .line 200
    const/4 v6, 0x1

    if-gt v5, v6, :cond_d

    .line 203
    if-eqz v5, :cond_9

    goto/16 :goto_1

    .line 208
    :cond_d
    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    aget v5, v5, v4

    iget-object v6, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    invoke-direct {p0, v3, v5, v4}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_1

    .line 214
    :cond_e
    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 215
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v5, 0x10

    aget v4, v4, v5

    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v6, 0x11

    aget v5, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_1

    :cond_f
    move v1, p2

    goto/16 :goto_3
.end method

.method public final spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v1, 0x0

    const v8, 0xdc00

    const v7, 0xd800

    const/4 v6, 0x1

    .line 241
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-eq v0, p3, :cond_9

    .line 244
    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 245
    const/16 v3, 0xff

    if-gt v2, v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_3

    .line 322
    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    .line 249
    :cond_2
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_4

    .line 250
    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v4, v2, 0x3f

    aget v3, v3, v4

    shr-int/lit8 v2, v2, 0x6

    shl-int v2, v6, v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_3
    move p2, v0

    .line 277
    :goto_2
    if-nez p2, :cond_0

    move v0, v1

    .line 278
    goto :goto_1

    .line 253
    :cond_4
    if-lt v2, v7, :cond_5

    if-lt v2, v8, :cond_5

    if-eqz v0, :cond_5

    add-int/lit8 v3, v0, -0x1

    .line 254
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_5

    if-lt v3, v8, :cond_8

    .line 255
    :cond_5
    shr-int/lit8 v3, v2, 0xc

    .line 256
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    shr-int/2addr v4, v3

    const v5, 0x10001

    and-int/2addr v4, v5

    .line 257
    if-gt v4, v6, :cond_7

    .line 260
    if-eqz v4, :cond_1

    :cond_6
    move p2, v0

    .line 269
    goto :goto_2

    .line 265
    :cond_7
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    invoke-direct {p0, v2, v4, v3}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 271
    :cond_8
    invoke-static {v3, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 272
    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    aget v3, v3, v9

    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v5, 0x11

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_2

    .line 284
    :cond_9
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 285
    const/16 v3, 0xff

    if-gt v2, v3, :cond_b

    .line 286
    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_1

    :cond_a
    move p2, v0

    .line 317
    :goto_3
    if-nez p2, :cond_9

    move v0, v1

    .line 318
    goto :goto_1

    .line 289
    :cond_b
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_c

    .line 290
    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v4, v2, 0x3f

    aget v3, v3, v4

    shr-int/lit8 v2, v2, 0x6

    shl-int v2, v6, v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    goto/16 :goto_0

    .line 293
    :cond_c
    if-lt v2, v7, :cond_d

    if-lt v2, v8, :cond_d

    if-eqz v0, :cond_d

    add-int/lit8 v3, v0, -0x1

    .line 294
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_d

    if-lt v3, v8, :cond_10

    .line 295
    :cond_d
    shr-int/lit8 v3, v2, 0xc

    .line 296
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    shr-int/2addr v4, v3

    const v5, 0x10001

    and-int/2addr v4, v5

    .line 297
    if-gt v4, v6, :cond_f

    .line 300
    if-nez v4, :cond_1

    :cond_e
    move p2, v0

    .line 309
    goto :goto_3

    .line 305
    :cond_f
    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    invoke-direct {p0, v2, v4, v3}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_0

    .line 311
    :cond_10
    invoke-static {v3, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 312
    iget-object v3, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    aget v3, v3, v9

    iget-object v4, p0, Lcom/ibm/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v5, 0x11

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/ibm/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_3
.end method
