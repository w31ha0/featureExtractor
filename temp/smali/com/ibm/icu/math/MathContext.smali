.class public final Lcom/ibm/icu/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Lcom/ibm/icu/math/MathContext;

.field private static final ROUNDS:[I

.field private static final ROUNDWORDS:[Ljava/lang/String;


# instance fields
.field digits:I

.field form:I

.field lostDigits:Z

.field roundingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I

    .line 316
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "ROUND_HALF_UP"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ROUND_UNNECESSARY"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "ROUND_CEILING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "ROUND_DOWN"

    aput-object v2, v0, v1

    const-string/jumbo v1, "ROUND_FLOOR"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string/jumbo v2, "ROUND_HALF_DOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ROUND_HALF_EVEN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ROUND_UP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/ibm/icu/math/MathContext;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V

    sput-object v0, Lcom/ibm/icu/math/MathContext;->DEFAULT:Lcom/ibm/icu/math/MathContext;

    return-void

    .line 313
    nop

    :array_0
    .array-data 4
        0x4
        0x7
        0x2
        0x1
        0x3
        0x5
        0x6
        0x0
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 386
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V

    .line 387
    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 3

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 443
    if-gez p1, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Digits too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    const v0, 0x3b9ac9ff

    if-le p1, v0, :cond_1

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Digits too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 457
    :cond_2
    invoke-static {p4}, Lcom/ibm/icu/math/MathContext;->isValidRound(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad roundingMode value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_3
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 452
    if-eqz p2, :cond_2

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad form value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_4
    iput p1, p0, Lcom/ibm/icu/math/MathContext;->digits:I

    .line 460
    iput p2, p0, Lcom/ibm/icu/math/MathContext;->form:I

    .line 461
    iput-boolean p3, p0, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    .line 462
    iput p4, p0, Lcom/ibm/icu/math/MathContext;->roundingMode:I

    .line 463
    return-void
.end method

.method private static isValidRound(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 596
    .line 597
    sget-object v1, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I

    array-length v1, v1

    move v2, v0

    :goto_0
    if-lez v1, :cond_0

    .line 598
    sget-object v3, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I

    aget v3, v3, v2

    if-ne p0, v3, :cond_1

    .line 599
    const/4 v0, 0x1

    .line 602
    :cond_0
    return v0

    .line 597
    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 568
    .line 570
    const/4 v1, 0x0

    .line 572
    iget v0, p0, Lcom/ibm/icu/math/MathContext;->form:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 573
    const-string/jumbo v0, "SCIENTIFIC"

    .line 580
    :goto_0
    sget-object v2, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I

    array-length v2, v2

    const/4 v3, 0x0

    :goto_1
    if-lez v2, :cond_0

    .line 581
    iget v4, p0, Lcom/ibm/icu/math/MathContext;->roundingMode:I

    sget-object v5, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I

    aget v5, v5, v3

    if-ne v4, v5, :cond_3

    .line 583
    sget-object v1, Lcom/ibm/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 588
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "digits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " form="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " lostDigits="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "1"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " roundingMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_1
    iget v0, p0, Lcom/ibm/icu/math/MathContext;->form:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 575
    const-string/jumbo v0, "ENGINEERING"

    goto :goto_0

    .line 577
    :cond_2
    const-string/jumbo v0, "PLAIN"

    goto :goto_0

    .line 580
    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 588
    :cond_4
    const-string/jumbo v0, "0"

    goto :goto_2
.end method
