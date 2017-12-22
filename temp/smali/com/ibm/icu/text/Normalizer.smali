.class public final Lcom/ibm/icu/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final COMPOSE:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSE_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FCD:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

.field public static final NFC:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFD:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFKC:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFKD:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

.field public static final NONE:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO_OP:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;


# instance fields
.field private buffer:Ljava/lang/StringBuilder;

.field private bufferPos:I

.field private currentIndex:I

.field private mode:Lcom/ibm/icu/text/Normalizer$Mode;

.field private nextIndex:I

.field private norm2:Lcom/ibm/icu/text/Normalizer2;

.field private options:I

.field private text:Lcom/ibm/icu/text/UCharacterIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    new-instance v0, Lcom/ibm/icu/text/Normalizer$NONEMode;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/Normalizer$NONEMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NONE:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 302
    new-instance v0, Lcom/ibm/icu/text/Normalizer$NFDMode;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/Normalizer$NFDMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 310
    new-instance v0, Lcom/ibm/icu/text/Normalizer$NFKDMode;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/Normalizer$NFKDMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NFKD:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 318
    new-instance v0, Lcom/ibm/icu/text/Normalizer$NFCMode;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/Normalizer$NFCMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 326
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->DEFAULT:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 334
    new-instance v0, Lcom/ibm/icu/text/Normalizer$NFKCMode;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/Normalizer$NFKCMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 342
    new-instance v0, Lcom/ibm/icu/text/Normalizer$FCDMode;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/Normalizer$FCDMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 359
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NONE:Lcom/ibm/icu/text/Normalizer$Mode;

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NO_OP:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 378
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->COMPOSE:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 397
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->COMPOSE_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 416
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->DECOMP:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 435
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFKD:Lcom/ibm/icu/text/Normalizer$Mode;

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->DECOMP_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 473
    new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    .line 479
    new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    .line 486
    new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 568
    iput-object p2, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 569
    iput p3, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    .line 570
    invoke-virtual {p2, p3}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    .line 572
    return-void
.end method

.method private clearBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1893
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1894
    iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    .line 1895
    return-void
.end method

.method public static isNormalized(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1079
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private nextNormalize()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1898
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V

    .line 1899
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    iput v1, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 1900
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    iget v2, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1902
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    .line 1903
    if-gez v1, :cond_1

    .line 1916
    :cond_0
    :goto_0
    return v0

    .line 1906
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1907
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    if-ltz v2, :cond_2

    .line 1908
    iget-object v3, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1909
    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    .line 1914
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    .line 1915
    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    iget-object v3, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1916
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1912
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 857
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 841
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 956
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public static quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 981
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 637
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/Normalizer;

    .line 638
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/UCharacterIterator;

    iput-object v1, v0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 639
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    iput-object v1, v0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 640
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    iput v1, v0, Lcom/ibm/icu/text/Normalizer;->options:I

    .line 641
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    iput-object v1, v0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    .line 643
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    iput v1, v0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    .line 644
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    iput v1, v0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 645
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    iput v1, v0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    return-object v0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1656
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1657
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 1659
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    goto :goto_0
.end method

.method public next()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1503
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->nextNormalize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 1505
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    .line 1508
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
