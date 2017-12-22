.class public Lcom/ibm/icu/impl/number/AffixPatternUtils;
.super Ljava/lang/Object;
.source "AffixPatternUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/ibm/icu/impl/number/AffixPatternUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/AffixPatternUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsType(Ljava/lang/CharSequence;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 300
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 308
    :goto_0
    return v0

    .line 301
    :cond_1
    const-wide/16 v0, 0x0

    .line 302
    :cond_2
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    .line 304
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 305
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 308
    goto :goto_0
.end method

.method public static escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I
    .locals 8

    .prologue
    const/16 v7, 0x27

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 184
    if-nez p0, :cond_0

    .line 227
    :goto_0
    return v1

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move v0, v1

    move v2, v1

    .line 188
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 189
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 191
    sparse-switch v5, :sswitch_data_0

    .line 211
    if-ne v2, v3, :cond_2

    .line 212
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v2, v1

    .line 220
    :goto_2
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 221
    goto :goto_1

    .line 193
    :sswitch_0
    const-string/jumbo v6, "\'\'"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 201
    :sswitch_1
    if-nez v2, :cond_1

    .line 202
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v2, v3

    .line 204
    goto :goto_2

    .line 206
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 216
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 223
    :cond_3
    if-ne v2, v3, :cond_4

    .line 224
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int v1, v0, v4

    goto :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x27 -> :sswitch_0
        0x2b -> :sswitch_1
        0x2d -> :sswitch_1
        0xa4 -> :sswitch_1
        0x2030 -> :sswitch_1
    .end sparse-switch
.end method

.method static getCodePoint(J)I
    .locals 2

    .prologue
    .line 548
    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method static getOffset(J)I
    .locals 2

    .prologue
    .line 536
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method static getState(J)I
    .locals 4

    .prologue
    .line 544
    const/16 v0, 0x24

    ushr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static getType(J)I
    .locals 4

    .prologue
    .line 540
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getTypeOrCp(J)I
    .locals 2

    .prologue
    .line 520
    sget-boolean v0, Lcom/ibm/icu/impl/number/AffixPatternUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 521
    :cond_0
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getType(J)I

    move-result v0

    .line 522
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getCodePoint(J)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    neg-int v0, v0

    goto :goto_0
.end method

.method public static hasCurrencySymbols(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 318
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 330
    :goto_0
    return v0

    .line 319
    :cond_1
    const-wide/16 v0, 0x0

    .line 320
    :cond_2
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    .line 322
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v3

    .line 323
    const/4 v4, -0x5

    if-eq v3, v4, :cond_3

    const/4 v4, -0x6

    if-eq v3, v4, :cond_3

    const/4 v4, -0x7

    if-eq v3, v4, :cond_3

    const/16 v4, -0xf

    if-ne v3, v4, :cond_2

    .line 327
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 330
    goto :goto_0
.end method

.method public static hasNext(JLjava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    sget-boolean v2, Lcom/ibm/icu/impl/number/AffixPatternUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 495
    :cond_0
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getState(J)I

    move-result v2

    .line 496
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getOffset(J)I

    move-result v3

    .line 498
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 499
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 500
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_2

    move v0, v1

    .line 505
    :cond_1
    :goto_0
    return v0

    .line 502
    :cond_2
    if-nez v2, :cond_1

    .line 505
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v3, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private static makeTag(IIII)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 526
    .line 527
    int-to-long v0, p0

    or-long/2addr v0, v6

    .line 528
    int-to-long v2, p1

    neg-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 529
    int-to-long v2, p2

    const/16 v4, 0x24

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 530
    int-to-long v2, p3

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 531
    sget-boolean v2, Lcom/ibm/icu/impl/number/AffixPatternUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 532
    :cond_0
    return-wide v0
.end method

.method public static nextToken(JLjava/lang/CharSequence;)J
    .locals 10

    .prologue
    const/16 v8, -0xf

    const/16 v7, 0x27

    const/4 v6, 0x2

    const/16 v5, 0xa4

    const/4 v2, 0x0

    .line 366
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getOffset(J)I

    move-result v1

    .line 367
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getState(J)I

    move-result v0

    .line 368
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 369
    invoke-static {p2, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 370
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 372
    packed-switch v0, :pswitch_data_0

    .line 456
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 374
    :pswitch_0
    sparse-switch v3, :sswitch_data_0

    .line 394
    add-int v0, v1, v4

    invoke-static {v0, v2, v2, v3}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    .line 479
    :goto_1
    return-wide v0

    .line 376
    :sswitch_0
    const/4 v0, 0x1

    .line 377
    add-int/2addr v1, v4

    .line 379
    goto :goto_0

    .line 381
    :sswitch_1
    add-int v0, v1, v4

    const/4 v1, -0x1

    invoke-static {v0, v1, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 383
    :sswitch_2
    add-int v0, v1, v4

    const/4 v1, -0x2

    invoke-static {v0, v1, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 385
    :sswitch_3
    add-int v0, v1, v4

    const/4 v1, -0x3

    invoke-static {v0, v1, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 387
    :sswitch_4
    add-int v0, v1, v4

    const/4 v1, -0x4

    invoke-static {v0, v1, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 389
    :sswitch_5
    const/4 v0, 0x4

    .line 390
    add-int/2addr v1, v4

    .line 392
    goto :goto_0

    .line 398
    :pswitch_1
    if-ne v3, v7, :cond_0

    .line 399
    add-int v0, v1, v4

    invoke-static {v0, v2, v2, v3}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 401
    :cond_0
    add-int v0, v1, v4

    invoke-static {v0, v2, v6, v3}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 404
    :pswitch_2
    if-ne v3, v7, :cond_1

    .line 405
    const/4 v0, 0x3

    .line 406
    add-int/2addr v1, v4

    .line 408
    goto :goto_0

    .line 410
    :cond_1
    add-int v0, v1, v4

    invoke-static {v0, v2, v6, v3}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 413
    :pswitch_3
    if-ne v3, v7, :cond_2

    .line 414
    add-int v0, v1, v4

    invoke-static {v0, v2, v6, v3}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 418
    goto :goto_0

    .line 421
    :pswitch_4
    if-ne v3, v5, :cond_3

    .line 422
    const/4 v0, 0x5

    .line 423
    add-int/2addr v1, v4

    .line 425
    goto :goto_0

    .line 427
    :cond_3
    const/4 v0, -0x5

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 430
    :pswitch_5
    if-ne v3, v5, :cond_4

    .line 431
    const/4 v0, 0x6

    .line 432
    add-int/2addr v1, v4

    .line 434
    goto :goto_0

    .line 436
    :cond_4
    const/4 v0, -0x6

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 439
    :pswitch_6
    if-ne v3, v5, :cond_5

    .line 440
    const/4 v0, 0x7

    .line 441
    add-int/2addr v1, v4

    .line 443
    goto/16 :goto_0

    .line 445
    :cond_5
    const/4 v0, -0x7

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 448
    :pswitch_7
    if-ne v3, v5, :cond_6

    .line 449
    add-int/2addr v1, v4

    .line 451
    goto/16 :goto_0

    .line 453
    :cond_6
    invoke-static {v1, v8, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto :goto_1

    .line 460
    :cond_7
    packed-switch v0, :pswitch_data_1

    .line 481
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 463
    :pswitch_8
    const-wide/16 v0, -0x1

    goto/16 :goto_1

    .line 467
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unterminated quote in pattern affix: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :pswitch_a
    const-wide/16 v0, -0x1

    goto/16 :goto_1

    .line 473
    :pswitch_b
    const/4 v0, -0x5

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto/16 :goto_1

    .line 475
    :pswitch_c
    const/4 v0, -0x6

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto/16 :goto_1

    .line 477
    :pswitch_d
    const/4 v0, -0x7

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto/16 :goto_1

    .line 479
    :pswitch_e
    invoke-static {v1, v8, v2, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide v0

    goto/16 :goto_1

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0xa4 -> :sswitch_5
        0x2030 -> :sswitch_4
    .end sparse-switch

    .line 460
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .locals 4

    .prologue
    .line 342
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    .line 352
    :goto_0
    return-object v0

    .line 343
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 344
    const-wide/16 v0, 0x0

    .line 345
    :cond_2
    :goto_1
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    .line 347
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 348
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getOffset(J)I

    move-result v3

    .line 349
    add-int/lit8 v3, v3, -0x1

    aput-char p2, v2, v3

    goto :goto_1

    .line 352
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V
    .locals 4

    .prologue
    .line 253
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    return-void

    .line 254
    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p5

    .line 255
    :cond_2
    const-wide/16 v0, 0x0

    .line 256
    :goto_0
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    .line 258
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v2

    .line 259
    packed-switch v2, :pswitch_data_0

    .line 285
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->appendCodePoint(ILcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 261
    :pswitch_1
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, p5, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 267
    :pswitch_3
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 270
    :pswitch_4
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 273
    :pswitch_5
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, p2, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 276
    :pswitch_6
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, p3, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 279
    :pswitch_7
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, p4, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 282
    :pswitch_8
    const-string/jumbo v2, "\ufffd"

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static unescapedLength(Ljava/lang/CharSequence;)I
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/16 v6, 0x27

    const/4 v1, 0x0

    .line 108
    if-nez p0, :cond_0

    .line 170
    :goto_0
    return v1

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    .line 112
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 113
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 115
    packed-switch v3, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :pswitch_0
    if-ne v5, v6, :cond_1

    .line 119
    const/4 v3, 0x1

    .line 159
    :goto_2
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 160
    goto :goto_1

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 124
    goto :goto_2

    .line 126
    :pswitch_1
    if-ne v5, v6, :cond_2

    .line 128
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    .line 129
    goto :goto_2

    .line 132
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .line 135
    goto :goto_2

    .line 137
    :pswitch_2
    if-ne v5, v6, :cond_3

    .line 139
    const/4 v3, 0x3

    goto :goto_2

    .line 142
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 144
    goto :goto_2

    .line 146
    :pswitch_3
    if-ne v5, v6, :cond_4

    .line 148
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .line 149
    goto :goto_2

    .line 152
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 154
    goto :goto_2

    .line 162
    :cond_5
    packed-switch v3, :pswitch_data_1

    move v1, v0

    .line 170
    goto :goto_0

    .line 165
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unterminated quote: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 162
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
