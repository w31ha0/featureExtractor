.class public Lcom/ibm/icu/text/UnicodeSet;
.super Lcom/ibm/icu/text/UnicodeFilter;
.source "UnicodeSet.java"

# interfaces
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/text/UnicodeFilter;",
        "Lcom/ibm/icu/util/Freezable",
        "<",
        "Lcom/ibm/icu/text/UnicodeSet;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ibm/icu/text/UnicodeSet;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ALL_CODE_POINTS:Lcom/ibm/icu/text/UnicodeSet;

.field public static final EMPTY:Lcom/ibm/icu/text/UnicodeSet;

.field private static INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;

.field private static final NO_VERSION:Lcom/ibm/icu/util/VersionInfo;

.field private static XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;


# instance fields
.field private volatile bmpSet:Lcom/ibm/icu/impl/BMPSet;

.field private buffer:[I

.field private len:I

.field private list:[I

.field private pat:Ljava/lang/String;

.field private rangeList:[I

.field private volatile stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

.field strings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 290
    const-class v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/UnicodeSet;->$assertionsDisabled:Z

    .line 296
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY:Lcom/ibm/icu/text/UnicodeSet;

    .line 301
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->ALL_CODE_POINTS:Lcom/ibm/icu/text/UnicodeSet;

    .line 303
    sput-object v3, Lcom/ibm/icu/text/UnicodeSet;->XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    .line 355
    sput-object v3, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;

    .line 3225
    invoke-static {v1, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->NO_VERSION:Lcom/ibm/icu/util/VersionInfo;

    return-void

    :cond_0
    move v0, v1

    .line 290
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeFilter;-><init>()V

    .line 328
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 368
    const/16 v0, 0x11

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 369
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/high16 v2, 0x110000

    aput v2, v0, v1

    .line 370
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 391
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeFilter;-><init>()V

    .line 328
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 377
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 378
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 437
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    .line 438
    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 4

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeFilter;-><init>()V

    .line 328
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 403
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must have even number of integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 407
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    array-length v0, v0

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 408
    const/4 v1, -0x1

    .line 409
    const/4 v0, 0x0

    .line 410
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 412
    aget v2, p1, v0

    .line 413
    if-lt v1, v2, :cond_1

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must be monotonically increasing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x1

    aput v2, v1, v0

    .line 418
    aget v0, p1, v3

    add-int/lit8 v1, v0, 0x1

    .line 419
    if-lt v2, v1, :cond_2

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must be monotonically increasing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aput v1, v2, v3

    goto :goto_0

    .line 424
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/high16 v2, 0x110000

    aput v2, v1, v0

    .line 425
    return-void
.end method

.method private static _appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;IZ)TT;"
        }
    .end annotation

    .prologue
    .line 657
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    :goto_0
    return-object p0

    .line 665
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 680
    invoke-static {p1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const/16 v0, 0x5c

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 685
    :cond_1
    :goto_1
    invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 676
    :sswitch_0
    const/16 v0, 0x5c

    :try_start_1
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 665
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2d -> :sswitch_0
        0x3a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static _appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 644
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 645
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 646
    invoke-static {p0, v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 644
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 648
    :cond_0
    return-object p0
.end method

.method private _toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x5c

    const/4 v1, 0x0

    .line 714
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 715
    invoke-direct {p0, p1, p2, v2}, Lcom/ibm/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object p1

    .line 746
    :cond_0
    :goto_0
    return-object p1

    .line 718
    :cond_1
    if-nez p2, :cond_2

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v0, v1

    move v4, v1

    .line 723
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 724
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 725
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 726
    invoke-static {v5}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    invoke-static {p1, v5}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move v0, v1

    :goto_2
    move v4, v0

    move v0, v3

    .line 742
    goto :goto_1

    .line 732
    :cond_3
    if-nez v4, :cond_4

    if-ne v5, v6, :cond_4

    move v0, v2

    .line 734
    goto :goto_2

    .line 736
    :cond_4
    if-eqz v4, :cond_5

    .line 737
    const/16 v0, 0x5c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 739
    :cond_5
    invoke-static {p1, v5}, Lcom/ibm/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    move v0, v1

    .line 740
    goto :goto_2

    .line 743
    :cond_6
    if-eqz v4, :cond_0

    .line 744
    const/16 v0, 0x5c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->NO_VERSION:Lcom/ibm/icu/util/VersionInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/UnicodeSet;)I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    return v0
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/UnicodeSet;)[I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    return-object v0
.end method

.method private add([III)Lcom/ibm/icu/text/UnicodeSet;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x110000

    .line 3009
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3011
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v3, v0, v4

    .line 3012
    aget v2, p1, v4

    move v6, v5

    move v7, p3

    .line 3017
    :goto_0
    packed-switch v7, :pswitch_data_0

    move v0, v2

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    :goto_1
    move v6, v4

    move v7, v5

    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v1

    .line 3088
    goto :goto_0

    .line 3019
    :pswitch_0
    if-ge v3, v2, :cond_1

    .line 3021
    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, -0x1

    aget v0, v0, v1

    if-gt v3, v0, :cond_0

    .line 3023
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v6

    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, -0x1

    aget v3, v3, v1

    invoke-static {v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I

    move-result v0

    .line 3029
    :goto_2
    add-int/lit8 v3, v6, 0x1

    .line 3030
    xor-int/lit8 v4, v7, 0x1

    move v9, v2

    move v2, v1

    move v1, v0

    move v0, v9

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v10

    goto :goto_1

    .line 3026
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, 0x1

    aput v3, v0, v4

    .line 3027
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v6

    goto :goto_2

    .line 3031
    :cond_1
    if-ge v2, v3, :cond_3

    .line 3032
    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, -0x1

    aget v0, v0, v1

    if-gt v2, v0, :cond_2

    .line 3033
    aget v0, p1, v5

    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, -0x1

    aget v2, v2, v1

    invoke-static {v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I

    move-result v0

    .line 3038
    :goto_3
    add-int/lit8 v2, v5, 0x1

    .line 3039
    xor-int/lit8 v4, v7, 0x2

    move v5, v4

    move v4, v6

    move v9, v2

    move v2, v1

    move v1, v3

    move v3, v9

    goto :goto_1

    .line 3035
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, 0x1

    aput v2, v0, v4

    .line 3036
    aget v0, p1, v5

    goto :goto_3

    .line 3041
    :cond_3
    if-ne v3, v8, :cond_5

    .line 3091
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, 0x1

    aput v8, v0, v4

    .line 3092
    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 3094
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3095
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3096
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    .line 3097
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 3098
    return-object p0

    .line 3044
    :cond_5
    if-lez v4, :cond_6

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, -0x1

    aget v0, v0, v1

    if-gt v3, v0, :cond_6

    .line 3045
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v6

    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, -0x1

    aget v2, v2, v1

    invoke-static {v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I

    move-result v0

    .line 3051
    :goto_4
    add-int/lit8 v4, v6, 0x1

    .line 3052
    xor-int/lit8 v6, v7, 0x1

    .line 3053
    add-int/lit8 v3, v5, 0x1

    aget v2, p1, v5

    xor-int/lit8 v5, v6, 0x2

    move v9, v2

    move v2, v1

    move v1, v0

    move v0, v9

    .line 3055
    goto/16 :goto_1

    .line 3048
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, 0x1

    aput v3, v0, v4

    .line 3049
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v6

    goto :goto_4

    .line 3057
    :pswitch_1
    if-gt v2, v3, :cond_7

    .line 3058
    if-eq v3, v8, :cond_4

    .line 3059
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v0, v4, 0x1

    aput v3, v1, v4

    .line 3064
    :goto_5
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v6, 0x1

    aget v2, v1, v6

    xor-int/lit8 v6, v7, 0x1

    .line 3065
    add-int/lit8 v3, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 v5, v6, 0x2

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 3066
    goto/16 :goto_1

    .line 3061
    :cond_7
    if-eq v2, v8, :cond_4

    .line 3062
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v0, v4, 0x1

    aput v2, v1, v4

    goto :goto_5

    .line 3068
    :pswitch_2
    if-ge v3, v2, :cond_8

    .line 3069
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, 0x1

    aput v3, v0, v4

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v6, 0x1

    aget v0, v0, v6

    xor-int/lit8 v4, v7, 0x1

    move v9, v2

    move v2, v1

    move v1, v0

    move v0, v9

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_1

    .line 3070
    :cond_8
    if-ge v2, v3, :cond_9

    .line 3071
    add-int/lit8 v1, v5, 0x1

    aget v0, p1, v5

    xor-int/lit8 v2, v7, 0x2

    move v5, v2

    move v2, v4

    move v4, v6

    move v9, v1

    move v1, v3

    move v3, v9

    goto/16 :goto_1

    .line 3073
    :cond_9
    if-eq v3, v8, :cond_4

    .line 3074
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v6, 0x1

    aget v1, v0, v6

    xor-int/lit8 v6, v7, 0x1

    .line 3075
    add-int/lit8 v2, v5, 0x1

    aget v0, p1, v5

    xor-int/lit8 v5, v6, 0x2

    move v9, v4

    move v4, v3

    move v3, v2

    move v2, v9

    .line 3077
    goto/16 :goto_1

    .line 3079
    :pswitch_3
    if-ge v2, v3, :cond_a

    .line 3080
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v4, 0x1

    aput v2, v0, v4

    add-int/lit8 v2, v5, 0x1

    aget v0, p1, v5

    xor-int/lit8 v4, v7, 0x2

    move v5, v4

    move v4, v6

    move v9, v2

    move v2, v1

    move v1, v3

    move v3, v9

    goto/16 :goto_1

    .line 3081
    :cond_a
    if-ge v3, v2, :cond_b

    .line 3082
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v6, 0x1

    aget v0, v0, v6

    xor-int/lit8 v3, v7, 0x1

    move v9, v2

    move v2, v4

    move v4, v1

    move v1, v0

    move v0, v9

    move v10, v5

    move v5, v3

    move v3, v10

    goto/16 :goto_1

    .line 3084
    :cond_b
    if-eq v3, v8, :cond_4

    .line 3085
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v6, 0x1

    aget v1, v0, v6

    xor-int/lit8 v6, v7, 0x1

    .line 3086
    add-int/lit8 v2, v5, 0x1

    aget v0, p1, v5

    xor-int/lit8 v5, v6, 0x2

    move v9, v4

    move v4, v3

    move v3, v2

    move v2, v9

    goto/16 :goto_1

    .line 3017
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static final addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 3814
    if-ltz p1, :cond_0

    .line 3815
    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    .line 3817
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 3826
    :cond_0
    :goto_0
    return-void

    .line 3820
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3821
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method private final add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 6

    .prologue
    const v2, 0x10ffff

    const/4 v3, 0x0

    .line 1241
    if-ltz p1, :cond_0

    if-le p1, v2, :cond_1

    .line 1242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v0

    .line 1251
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 1324
    :goto_0
    return-object p0

    .line 1268
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v1, v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_5

    .line 1270
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aput p1, v1, v0

    .line 1272
    if-ne p1, v2, :cond_3

    .line 1273
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1274
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/high16 v3, 0x110000

    aput v3, v1, v2

    .line 1276
    :cond_3
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_4

    .line 1282
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int v0, v5, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1283
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 1323
    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_0

    .line 1287
    :cond_5
    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_6

    .line 1289
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_1

    .line 1309
    :cond_6
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    array-length v2, v2

    if-le v1, v2, :cond_8

    .line 1310
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    new-array v1, v1, [I

    .line 1311
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1312
    :cond_7
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1313
    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 1318
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aput p1, v1, v0

    .line 1319
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p1, 0x1

    aput v2, v1, v0

    .line 1320
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    goto :goto_1

    .line 1315
    :cond_8
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method private add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    .prologue
    const v0, 0x10ffff

    const/4 v4, 0x6

    .line 1195
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 1196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 1199
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1201
    :cond_3
    if-ge p1, p2, :cond_5

    .line 1202
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 1206
    :cond_4
    :goto_0
    return-object p0

    .line 1203
    :cond_5
    if-ne p1, p2, :cond_4

    .line 1204
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method private static append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 632
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)V
    .locals 2

    .prologue
    .line 614
    sget-boolean v0, Lcom/ibm/icu/text/UnicodeSet;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 616
    :cond_1
    const v0, 0xffff

    if-gt p1, v0, :cond_2

    .line 617
    int-to-char v0, p1

    :try_start_0
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 624
    :goto_0
    return-void

    .line 619
    :cond_2
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;ZZ)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 779
    const/16 v2, 0x5b

    :try_start_0
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 781
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v2

    .line 786
    if-le v2, v1, :cond_2

    const/4 v3, 0x0

    .line 787
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    .line 788
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    const v4, 0x10ffff

    if-ne v3, v4, :cond_2

    .line 791
    const/16 v0, 0x5e

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move v0, v1

    .line 793
    :goto_0
    if-ge v0, v2, :cond_5

    .line 794
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 795
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 796
    invoke-static {p1, v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 797
    if-eq v1, v3, :cond_1

    .line 798
    add-int/lit8 v1, v1, 0x1

    if-eq v1, v3, :cond_0

    .line 799
    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 801
    :cond_0
    invoke-static {p1, v3, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 793
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_2
    :goto_1
    if-ge v0, v2, :cond_5

    .line 809
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v1

    .line 810
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    .line 811
    invoke-static {p1, v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 812
    if-eq v1, v3, :cond_4

    .line 813
    add-int/lit8 v1, v1, 0x1

    if-eq v1, v3, :cond_3

    .line 814
    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 816
    :cond_3
    invoke-static {p1, v3, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 808
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 821
    :cond_5
    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 822
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 823
    const/16 v2, 0x7b

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 824
    invoke-static {p1, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    .line 825
    const/16 v0, 0x7d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 830
    :catch_0
    move-exception v0

    .line 831
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 828
    :cond_6
    const/16 v0, 0x5d

    :try_start_1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 829
    return-object p1
.end method

.method private applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 3301
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 3304
    invoke-static {p2}, Lcom/ibm/icu/text/UnicodeSet;->getInclusions(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v4

    .line 3305
    invoke-virtual {v4}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v5

    .line 3307
    const/4 v0, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_3

    .line 3309
    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v1

    .line 3310
    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v6

    .line 3313
    :goto_1
    if-gt v1, v6, :cond_2

    .line 3316
    invoke-interface {p1, v1}, Lcom/ibm/icu/text/UnicodeSet$Filter;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3317
    if-gez v0, :cond_0

    move v0, v1

    .line 3313
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3320
    :cond_1
    if-ltz v0, :cond_0

    .line 3321
    add-int/lit8 v7, v1, -0x1

    invoke-direct {p0, v0, v7}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    move v0, v2

    .line 3322
    goto :goto_2

    .line 3307
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 3326
    :cond_3
    if-ltz v0, :cond_4

    .line 3327
    const v1, 0x10ffff

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 3330
    :cond_4
    return-object p0
.end method

.method private applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/Appendable;I)V
    .locals 23

    .prologue
    .line 2482
    const/4 v4, 0x3

    .line 2484
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_2f

    .line 2485
    const/4 v4, 0x7

    move v5, v4

    .line 2488
    :goto_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    .line 2489
    const/4 v14, 0x0

    .line 2490
    const/4 v8, 0x0

    .line 2491
    const/4 v13, 0x0

    .line 2495
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    .line 2496
    const/4 v7, 0x0

    .line 2498
    const/4 v12, 0x0

    .line 2500
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 2501
    const/4 v10, 0x0

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 2503
    :goto_1
    const/4 v4, 0x2

    if-eq v13, v4, :cond_2e

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2515
    const/16 v18, 0x0

    .line 2516
    const/16 v17, 0x0

    .line 2517
    const/16 v16, 0x0

    .line 2522
    const/4 v15, 0x0

    .line 2523
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/ibm/icu/text/UnicodeSet;->resemblesPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2524
    const/4 v4, 0x2

    move-object/from16 v15, v16

    move/from16 v16, v4

    move/from16 v4, v18

    move/from16 v18, v13

    move-object/from16 v13, v19

    .line 2587
    :goto_2
    if-eqz v16, :cond_c

    .line 2588
    const/4 v4, 0x1

    if-ne v9, v4, :cond_2c

    .line 2589
    if-eqz v7, :cond_0

    .line 2590
    const-string/jumbo v4, "Char expected after operator"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2592
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v11}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2593
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v11, v4}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2595
    const/4 v7, 0x0

    move v9, v7

    .line 2598
    :goto_3
    const/16 v4, 0x2d

    if-eq v9, v4, :cond_1

    const/16 v4, 0x26

    if-ne v9, v4, :cond_2

    .line 2599
    :cond_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2602
    :cond_2
    if-nez v15, :cond_2b

    .line 2603
    if-nez v8, :cond_2a

    new-instance v4, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v4}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    :goto_4
    move-object v8, v4

    .line 2606
    :goto_5
    packed-switch v16, :pswitch_data_0

    .line 2619
    :goto_6
    const/4 v7, 0x1

    .line 2621
    if-nez v18, :cond_b

    .line 2623
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 2624
    const/4 v4, 0x2

    move v6, v4

    move v4, v12

    .line 2835
    :goto_7
    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    .line 2836
    const-string/jumbo v6, "Missing \']\'"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2839
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    .line 2847
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_4

    .line 2848
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ibm/icu/text/UnicodeSet;->closeOver(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 2850
    :cond_4
    if-eqz v4, :cond_5

    .line 2851
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;

    .line 2856
    :cond_5
    if-eqz v7, :cond_29

    .line 2857
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 2861
    :goto_8
    return-void

    .line 2537
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 2538
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v18

    .line 2539
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v17

    .line 2541
    const/16 v4, 0x5b

    move/from16 v0, v18

    if-ne v0, v4, :cond_9

    if-nez v17, :cond_9

    .line 2542
    const/4 v4, 0x1

    if-ne v13, v4, :cond_7

    .line 2543
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    .line 2544
    const/4 v4, 0x1

    move-object/from16 v15, v16

    move/from16 v16, v4

    move/from16 v4, v18

    move/from16 v18, v13

    move-object/from16 v13, v19

    goto/16 :goto_2

    .line 2547
    :cond_7
    const/16 v17, 0x1

    .line 2548
    const/16 v4, 0x5b

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2549
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 2550
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v4

    .line 2551
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v13

    .line 2552
    const/16 v19, 0x5e

    move/from16 v0, v19

    if-ne v4, v0, :cond_2d

    if-nez v13, :cond_2d

    .line 2553
    const/4 v13, 0x1

    .line 2554
    const/16 v4, 0x5e

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2555
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 2556
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v12

    .line 2557
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    .line 2561
    :goto_9
    const/16 v4, 0x2d

    if-ne v12, v4, :cond_8

    .line 2562
    const/4 v4, 0x1

    move/from16 v21, v15

    move-object/from16 v15, v16

    move/from16 v16, v21

    move/from16 v22, v4

    move v4, v12

    move v12, v13

    move-object/from16 v13, v18

    move/from16 v18, v17

    move/from16 v17, v22

    goto/16 :goto_2

    .line 2565
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    move v12, v13

    move-object/from16 v19, v18

    move/from16 v13, v17

    .line 2566
    goto/16 :goto_1

    .line 2569
    :cond_9
    if-eqz p2, :cond_a

    .line 2570
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/ibm/icu/text/SymbolTable;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v4

    .line 2571
    if-eqz v4, :cond_a

    .line 2573
    :try_start_0
    check-cast v4, Lcom/ibm/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2574
    const/4 v15, 0x3

    move/from16 v16, v15

    move-object v15, v4

    move/from16 v4, v18

    move/from16 v18, v13

    move-object/from16 v13, v19

    .line 2577
    goto/16 :goto_2

    .line 2575
    :catch_0
    move-exception v4

    .line 2576
    const-string/jumbo v4, "Syntax error"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_a
    move/from16 v4, v18

    move/from16 v18, v13

    move-object/from16 v13, v19

    move-object/from16 v21, v16

    move/from16 v16, v15

    move-object/from16 v15, v21

    goto/16 :goto_2

    .line 2608
    :pswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/Appendable;I)V

    goto/16 :goto_6

    .line 2611
    :pswitch_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    .line 2612
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/SymbolTable;)V

    goto/16 :goto_6

    .line 2615
    :pswitch_2
    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-direct {v4, v0, v7}, Lcom/ibm/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    goto/16 :goto_6

    .line 2628
    :cond_b
    sparse-switch v9, :sswitch_data_0

    .line 2640
    :goto_a
    const/4 v4, 0x0

    .line 2641
    const/4 v9, 0x2

    move-object/from16 v19, v13

    move v14, v7

    move v7, v4

    move/from16 v13, v18

    .line 2643
    goto/16 :goto_1

    .line 2630
    :sswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_a

    .line 2633
    :sswitch_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_a

    .line 2636
    :sswitch_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_a

    .line 2646
    :cond_c
    if-nez v18, :cond_d

    .line 2647
    const-string/jumbo v15, "Missing \'[\'"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2654
    :cond_d
    if-nez v17, :cond_e

    .line 2655
    sparse-switch v4, :sswitch_data_1

    .line 2794
    :cond_e
    :goto_b
    packed-switch v9, :pswitch_data_1

    move v4, v11

    :goto_c
    move v11, v4

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 2833
    goto/16 :goto_1

    .line 2657
    :sswitch_3
    const/4 v4, 0x1

    if-ne v9, v4, :cond_f

    .line 2658
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v11}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2659
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v11, v4}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2662
    :cond_f
    const/16 v4, 0x2d

    if-ne v7, v4, :cond_11

    .line 2663
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v7}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2664
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2668
    :cond_10
    :goto_d
    const/16 v4, 0x5d

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2669
    const/16 v18, 0x2

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 2670
    goto/16 :goto_1

    .line 2665
    :cond_11
    const/16 v4, 0x26

    if-ne v7, v4, :cond_10

    .line 2666
    const-string/jumbo v4, "Trailing \'&\'"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto :goto_d

    .line 2672
    :sswitch_4
    if-nez v7, :cond_14

    .line 2673
    if-eqz v9, :cond_12

    .line 2674
    int-to-char v7, v4

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 2675
    goto/16 :goto_1

    .line 2676
    :cond_12
    if-eqz v10, :cond_13

    .line 2677
    int-to-char v7, v4

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 2678
    goto/16 :goto_1

    .line 2681
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v4}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2682
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v4

    .line 2683
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v15

    .line 2684
    const/16 v16, 0x5d

    move/from16 v0, v16

    if-ne v4, v0, :cond_14

    if-nez v15, :cond_14

    .line 2685
    const-string/jumbo v4, "-]"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2686
    const/16 v18, 0x2

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 2687
    goto/16 :goto_1

    .line 2691
    :cond_14
    const-string/jumbo v15, "\'-\' not after char, string, or set"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2694
    :sswitch_5
    const/4 v15, 0x2

    if-ne v9, v15, :cond_15

    if-nez v7, :cond_15

    .line 2695
    int-to-char v7, v4

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 2696
    goto/16 :goto_1

    .line 2698
    :cond_15
    const-string/jumbo v15, "\'&\' not after set"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2701
    :sswitch_6
    const-string/jumbo v15, "\'^\' not after \'[\'"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2704
    :sswitch_7
    if-eqz v7, :cond_16

    const/16 v4, 0x2d

    if-eq v7, v4, :cond_16

    .line 2705
    const-string/jumbo v4, "Missing operand after operator"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2707
    :cond_16
    const/4 v4, 0x1

    if-ne v9, v4, :cond_17

    .line 2708
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v11}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2709
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v11, v4}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2711
    :cond_17
    const/4 v15, 0x0

    .line 2712
    if-nez v6, :cond_1b

    .line 2713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v4

    .line 2717
    :goto_e
    const/4 v4, 0x0

    .line 2718
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v6

    if-nez v6, :cond_18

    .line 2719
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v6

    .line 2720
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v16

    .line 2721
    const/16 v17, 0x7d

    move/from16 v0, v17

    if-ne v6, v0, :cond_1c

    if-nez v16, :cond_1c

    .line 2722
    const/4 v4, 0x1

    .line 2727
    :cond_18
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v6, v0, :cond_19

    if-nez v4, :cond_1a

    .line 2728
    :cond_19
    const-string/jumbo v4, "Invalid multicharacter string"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2733
    :cond_1a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2734
    const/16 v4, 0x2d

    if-ne v7, v4, :cond_1f

    .line 2735
    if-nez v10, :cond_1d

    const-string/jumbo v4, ""

    :goto_10
    invoke-static {v4}, Lcom/ibm/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v4

    .line 2736
    invoke-static {v6}, Lcom/ibm/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v7

    .line 2737
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v4, v0, :cond_1e

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v7, v0, :cond_1e

    .line 2738
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2746
    :goto_11
    const/4 v4, 0x0

    .line 2747
    const/4 v7, 0x0

    .line 2752
    :goto_12
    const/16 v10, 0x7b

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2753
    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v6, v10}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    .line 2754
    const/16 v6, 0x7d

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object/from16 v19, v13

    move-object v6, v9

    move/from16 v13, v18

    move v9, v15

    .line 2755
    goto/16 :goto_1

    .line 2715
    :cond_1b
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v9, v6

    goto :goto_e

    .line 2725
    :cond_1c
    invoke-static {v9, v6}, Lcom/ibm/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    goto :goto_f

    :cond_1d
    move-object v4, v10

    .line 2735
    goto :goto_10

    .line 2741
    :cond_1e
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-static {v10, v6, v4, v7}, Lcom/ibm/icu/impl/StringRange;->expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    .line 2742
    :catch_1
    move-exception v4

    .line 2743
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto :goto_11

    .line 2749
    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-object v4, v6

    .line 2750
    goto :goto_12

    .line 2763
    :sswitch_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2764
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v4

    .line 2765
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v15

    .line 2766
    const/16 v16, 0x5d

    move/from16 v0, v16

    if-ne v4, v0, :cond_20

    if-nez v15, :cond_20

    const/4 v15, 0x1

    .line 2767
    :goto_13
    if-nez p2, :cond_21

    if-nez v15, :cond_21

    .line 2768
    const/16 v4, 0x24

    .line 2769
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 2766
    :cond_20
    const/4 v15, 0x0

    goto :goto_13

    .line 2772
    :cond_21
    if-eqz v15, :cond_23

    if-nez v7, :cond_23

    .line 2773
    const/4 v4, 0x1

    if-ne v9, v4, :cond_22

    .line 2774
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v11}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2775
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v11, v4}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2777
    :cond_22
    const v4, 0xffff

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 2778
    const/4 v14, 0x1

    .line 2779
    const/16 v4, 0x24

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v15, 0x5d

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2780
    const/16 v18, 0x2

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 2781
    goto/16 :goto_1

    .line 2783
    :cond_23
    const-string/jumbo v15, "Unquoted \'$\'"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2796
    :pswitch_3
    const/16 v9, 0x2d

    if-ne v7, v9, :cond_24

    if-eqz v10, :cond_24

    .line 2797
    const-string/jumbo v9, "Invalid range"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2799
    :cond_24
    const/4 v9, 0x1

    .line 2801
    const/4 v10, 0x0

    .line 2802
    goto/16 :goto_c

    .line 2804
    :pswitch_4
    const/16 v15, 0x2d

    if-ne v7, v15, :cond_27

    .line 2805
    if-eqz v10, :cond_25

    .line 2806
    const-string/jumbo v9, "Invalid range"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2808
    :cond_25
    if-lt v11, v4, :cond_26

    .line 2811
    const-string/jumbo v9, "Invalid range"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2813
    :cond_26
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2814
    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v11, v9}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2815
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2816
    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v4, v7}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2817
    const/4 v4, 0x0

    .line 2818
    const/4 v7, 0x0

    move v9, v4

    move v4, v11

    goto/16 :goto_c

    .line 2820
    :cond_27
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v11}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 2821
    const/4 v15, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v11, v15}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    goto/16 :goto_c

    .line 2826
    :pswitch_5
    if-eqz v7, :cond_28

    .line 2827
    const-string/jumbo v9, "Set expected after operator"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2830
    :cond_28
    const/4 v9, 0x1

    goto/16 :goto_c

    .line 2859
    :cond_29
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    goto/16 :goto_8

    :cond_2a
    move-object v4, v8

    goto/16 :goto_4

    :cond_2b
    move-object v4, v15

    goto/16 :goto_5

    :cond_2c
    move v9, v7

    goto/16 :goto_3

    :cond_2d
    move v13, v12

    move v12, v4

    goto/16 :goto_9

    :cond_2e
    move v4, v12

    move v6, v13

    move v7, v14

    goto/16 :goto_7

    :cond_2f
    move v5, v4

    goto/16 :goto_0

    .line 2606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2628
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x26 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch

    .line 2655
    :sswitch_data_1
    .sparse-switch
        0x24 -> :sswitch_8
        0x26 -> :sswitch_5
        0x2d -> :sswitch_4
        0x5d -> :sswitch_3
        0x5e -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch

    .line 2794
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 3640
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 3645
    add-int/lit8 v0, v2, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    move-object p0, v6

    .line 3720
    :goto_0
    return-object p0

    .line 3654
    :cond_0
    const-string/jumbo v0, "[:"

    invoke-virtual {p1, v2, v0, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3656
    add-int/lit8 v0, v2, 0x2

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3657
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_e

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_e

    .line 3658
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    move v7, v1

    move v2, v0

    move v4, v1

    .line 3677
    :goto_1
    if-eqz v7, :cond_8

    const-string/jumbo v0, ":]"

    :goto_2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 3678
    if-gez v8, :cond_9

    move-object p0, v6

    .line 3680
    goto :goto_0

    .line 3661
    :cond_1
    const-string/jumbo v3, "\\p"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\\N"

    .line 3662
    invoke-virtual {p1, v2, v0, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3663
    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3664
    const/16 v3, 0x50

    if-ne v0, v3, :cond_4

    move v3, v1

    .line 3665
    :goto_3
    const/16 v7, 0x4e

    if-ne v0, v7, :cond_5

    move v0, v1

    .line 3666
    :goto_4
    add-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 3667
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v7, v2, :cond_3

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_6

    :cond_3
    move-object p0, v6

    .line 3669
    goto :goto_0

    :cond_4
    move v3, v4

    .line 3664
    goto :goto_3

    :cond_5
    move v0, v4

    .line 3665
    goto :goto_4

    :cond_6
    move v7, v4

    move v4, v3

    move v3, v0

    .line 3671
    goto :goto_1

    :cond_7
    move-object p0, v6

    .line 3673
    goto :goto_0

    .line 3677
    :cond_8
    const-string/jumbo v0, "}"

    goto :goto_2

    .line 3686
    :cond_9
    const/16 v0, 0x3d

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3688
    if-ltz v0, :cond_b

    if-ge v0, v8, :cond_b

    if-nez v3, :cond_b

    .line 3690
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3691
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3711
    :goto_5
    invoke-virtual {p0, v2, v0, p3}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3713
    if-eqz v4, :cond_a

    .line 3714
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;

    .line 3718
    :cond_a
    if-eqz v7, :cond_c

    :goto_6
    add-int v0, v8, v5

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto/16 :goto_0

    .line 3696
    :cond_b
    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3697
    const-string/jumbo v2, ""

    .line 3700
    if-eqz v3, :cond_d

    .line 3707
    const-string/jumbo v2, "na"

    goto :goto_5

    :cond_c
    move v5, v1

    .line 3718
    goto :goto_6

    :cond_d
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_5

    :cond_e
    move v3, v4

    move v7, v1

    move v2, v0

    goto/16 :goto_1
.end method

.method private applyPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/SymbolTable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3735
    invoke-virtual {p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    move-result-object v0

    .line 3736
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3737
    invoke-direct {p0, v0, v1, p3}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3738
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    .line 3739
    const-string/jumbo v2, "Invalid property pattern"

    invoke-static {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 3741
    :cond_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    .line 3742
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 3743
    return-void
.end method

.method private checkFrozen()V
    .locals 2

    .prologue
    .line 4221
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4224
    :cond_0
    return-void
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 4574
    invoke-static {p0, p1}, Lcom/ibm/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 4598
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/util/Iterator;Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/util/Iterator;Ljava/util/Iterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<TT;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4613
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4614
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 4622
    :goto_0
    return v0

    .line 4614
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4615
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4616
    const/4 v0, 0x1

    goto :goto_0

    .line 4618
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 4619
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 4620
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 4621
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private containsAll(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2003
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    move v0, v1

    .line 2015
    :goto_0
    return v0

    .line 2006
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 2007
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2008
    goto :goto_0

    .line 2010
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2011
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2012
    goto :goto_0

    .line 2015
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureBufferCapacity(I)V
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 2936
    :goto_0
    return-void

    .line 2935
    :cond_0
    add-int/lit8 v0, p1, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2927
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 2931
    :goto_0
    return-void

    .line 2928
    :cond_0
    add-int/lit8 v0, p1, 0x10

    new-array v0, v0, [I

    .line 2929
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2930
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    goto :goto_0
.end method

.method private final findCodePoint(I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1717
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_1

    .line 1727
    :cond_0
    :goto_0
    return v1

    .line 1720
    :cond_1
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v2, -0x2

    aget v0, v0, v2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 1722
    :cond_2
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    .line 1726
    :goto_1
    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    .line 1727
    if-eq v0, v2, :cond_0

    .line 1728
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v0

    if-ge p1, v3, :cond_3

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    .line 1733
    goto :goto_1

    :cond_3
    move v4, v1

    move v1, v0

    move v0, v4

    .line 1731
    goto :goto_2
.end method

.method private static declared-synchronized getInclusions(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 4

    .prologue
    .line 3241
    const-class v1, Lcom/ibm/icu/text/UnicodeSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;

    if-nez v0, :cond_0

    .line 3242
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;

    .line 3244
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 3245
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 3246
    packed-switch p0, :pswitch_data_0

    .line 3280
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UnicodeSet.getInclusions(unknown src "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3248
    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UCharacterProperty;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3282
    :goto_0
    sget-object v2, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;

    aput-object v0, v2, p0

    .line 3284
    :cond_1
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;

    aget-object v0, v0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 3251
    :pswitch_2
    :try_start_2
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3254
    :pswitch_3
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UCharacterProperty;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3255
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3258
    :pswitch_4
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 3259
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3262
    :pswitch_5
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3265
    :pswitch_6
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFKCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3268
    :pswitch_7
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3271
    :pswitch_8
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->addCanonIterPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3274
    :pswitch_9
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3277
    :pswitch_a
    sget-object v2, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UBiDiProps;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static getSingleCP(Ljava/lang/CharSequence;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 1357
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 1358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t use zero-length strings in UnicodeSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1360
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 1368
    :cond_1
    :goto_0
    return v0

    .line 1361
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 1364
    :cond_3
    invoke-static {p0, v3}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1365
    const v2, 0xffff

    if-le v1, v2, :cond_1

    move v0, v1

    .line 1366
    goto :goto_0
.end method

.method private static final max(II)I
    .locals 0

    .prologue
    .line 3173
    if-le p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method private static mungeCharName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v5, 0x20

    const/4 v2, 0x0

    .line 3339
    invoke-static {p0}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3340
    const/4 v0, 0x0

    move v1, v2

    .line 3341
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 3342
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3343
    invoke-static {v4}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3344
    if-nez v0, :cond_3

    .line 3345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_0
    move v4, v5

    .line 3351
    :cond_1
    if-eqz v0, :cond_2

    .line 3352
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3341
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3346
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 3355
    :cond_4
    if-nez v0, :cond_5

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private range(II)[I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2942
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    if-nez v0, :cond_0

    .line 2943
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput p1, v0, v1

    add-int/lit8 v1, p2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/high16 v2, 0x110000

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    .line 2948
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    return-object v0

    .line 2945
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    aput p1, v0, v1

    .line 2946
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    add-int/lit8 v1, p2, 0x1

    aput v1, v0, v2

    goto :goto_0
.end method

.method private static resemblesPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;I)Z
    .locals 7

    .prologue
    const/16 v6, 0x5b

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3622
    .line 3623
    and-int/lit8 v2, p1, -0x3

    .line 3624
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3625
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v4

    .line 3626
    if-eq v4, v6, :cond_0

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 3627
    :cond_0
    and-int/lit8 v2, v2, -0x5

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v2

    .line 3628
    if-ne v4, v6, :cond_4

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_3

    :cond_1
    :goto_0
    move v1, v0

    .line 3631
    :cond_2
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    .line 3632
    return v1

    :cond_3
    move v0, v1

    .line 3628
    goto :goto_0

    :cond_4
    const/16 v4, 0x4e

    if-eq v2, v4, :cond_1

    const/16 v4, 0x70

    if-eq v2, v4, :cond_1

    const/16 v4, 0x50

    if-eq v2, v4, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private retain([III)Lcom/ibm/icu/text/UnicodeSet;
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v8, 0x110000

    .line 3107
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3109
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v1, v0, v2

    .line 3110
    aget v0, p1, v2

    move v5, v4

    move v7, p3

    .line 3115
    :goto_0
    packed-switch v7, :pswitch_data_0

    move v3, v4

    move v4, v5

    move v5, v7

    :goto_1
    move v7, v5

    move v5, v4

    move v4, v3

    .line 3159
    goto :goto_0

    .line 3117
    :pswitch_0
    if-ge v1, v0, :cond_0

    .line 3118
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v5, 0x1

    aget v1, v1, v5

    xor-int/lit8 v5, v7, 0x1

    move v9, v4

    move v4, v3

    move v3, v9

    goto :goto_1

    .line 3119
    :cond_0
    if-ge v0, v1, :cond_1

    .line 3120
    add-int/lit8 v3, v4, 0x1

    aget v0, p1, v4

    xor-int/lit8 v4, v7, 0x2

    move v9, v5

    move v5, v4

    move v4, v9

    goto :goto_1

    .line 3122
    :cond_1
    if-ne v1, v8, :cond_3

    .line 3162
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v2, 0x1

    aput v8, v0, v2

    .line 3163
    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 3165
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3166
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 3167
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    .line 3168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 3169
    return-object p0

    .line 3123
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v3, v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v5, 0x1

    aget v1, v0, v5

    xor-int/lit8 v5, v7, 0x1

    .line 3124
    add-int/lit8 v2, v4, 0x1

    aget v0, p1, v4

    xor-int/lit8 v4, v5, 0x2

    move v5, v4

    move v4, v6

    move v9, v2

    move v2, v3

    move v3, v9

    .line 3126
    goto :goto_1

    .line 3128
    :pswitch_1
    if-ge v1, v0, :cond_4

    .line 3129
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v3, v2, 0x1

    aput v1, v6, v2

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v5, 0x1

    aget v1, v1, v5

    xor-int/lit8 v5, v7, 0x1

    move v9, v3

    move v3, v4

    move v4, v2

    move v2, v9

    goto :goto_1

    .line 3130
    :cond_4
    if-ge v0, v1, :cond_5

    .line 3131
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v3, v2, 0x1

    aput v0, v6, v2

    add-int/lit8 v2, v4, 0x1

    aget v0, p1, v4

    xor-int/lit8 v4, v7, 0x2

    move v9, v3

    move v3, v2

    move v2, v9

    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_1

    .line 3133
    :cond_5
    if-eq v1, v8, :cond_2

    .line 3134
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v3, v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v5, 0x1

    aget v1, v0, v5

    xor-int/lit8 v5, v7, 0x1

    .line 3135
    add-int/lit8 v2, v4, 0x1

    aget v0, p1, v4

    xor-int/lit8 v4, v5, 0x2

    move v5, v4

    move v4, v6

    move v9, v2

    move v2, v3

    move v3, v9

    .line 3137
    goto/16 :goto_1

    .line 3139
    :pswitch_2
    if-ge v1, v0, :cond_6

    .line 3140
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v5, 0x1

    aget v1, v1, v5

    xor-int/lit8 v5, v7, 0x1

    move v9, v4

    move v4, v3

    move v3, v9

    goto/16 :goto_1

    .line 3141
    :cond_6
    if-ge v0, v1, :cond_7

    .line 3142
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v3, v2, 0x1

    aput v0, v6, v2

    add-int/lit8 v2, v4, 0x1

    aget v0, p1, v4

    xor-int/lit8 v4, v7, 0x2

    move v9, v3

    move v3, v2

    move v2, v9

    move v10, v5

    move v5, v4

    move v4, v10

    goto/16 :goto_1

    .line 3144
    :cond_7
    if-eq v1, v8, :cond_2

    .line 3145
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v5, 0x1

    aget v1, v0, v5

    xor-int/lit8 v5, v7, 0x1

    .line 3146
    add-int/lit8 v3, v4, 0x1

    aget v0, p1, v4

    xor-int/lit8 v4, v5, 0x2

    move v5, v4

    move v4, v6

    .line 3148
    goto/16 :goto_1

    .line 3150
    :pswitch_3
    if-ge v0, v1, :cond_8

    .line 3151
    add-int/lit8 v3, v4, 0x1

    aget v0, p1, v4

    xor-int/lit8 v4, v7, 0x2

    move v9, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_1

    .line 3152
    :cond_8
    if-ge v1, v0, :cond_9

    .line 3153
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v3, v2, 0x1

    aput v1, v6, v2

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v5, 0x1

    aget v1, v1, v5

    xor-int/lit8 v5, v7, 0x1

    move v9, v3

    move v3, v4

    move v4, v2

    move v2, v9

    goto/16 :goto_1

    .line 3155
    :cond_9
    if-eq v1, v8, :cond_2

    .line 3156
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v5, 0x1

    aget v1, v0, v5

    xor-int/lit8 v5, v7, 0x1

    .line 3157
    add-int/lit8 v3, v4, 0x1

    aget v0, p1, v4

    xor-int/lit8 v4, v5, 0x2

    move v5, v4

    move v4, v6

    goto/16 :goto_1

    .line 3115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private spanCodePointsAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4128
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-eq p3, v0, :cond_2

    const/4 v0, 0x1

    .line 4132
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 4135
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 4136
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eq v0, v4, :cond_3

    .line 4142
    :goto_1
    if-eqz p4, :cond_1

    iput v1, p4, Lcom/ibm/icu/util/OutputInt;->value:I

    .line 4143
    :cond_1
    return p2

    :cond_2
    move v0, v1

    .line 4128
    goto :goto_0

    .line 4139
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 4140
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 4141
    if-lt p2, v2, :cond_0

    goto :goto_1
.end method

.method private static syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2864
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2865
    invoke-virtual {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private xor([III)Lcom/ibm/icu/text/UnicodeSet;
    .locals 9

    .prologue
    const/high16 v7, 0x110000

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2959
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 2961
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v2, v0, v1

    .line 2966
    if-eq p3, v3, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 2968
    :cond_0
    aget v0, p1, v1

    if-nez v0, :cond_5

    .line 2970
    aget v0, p1, v3

    move v4, v3

    move v5, v3

    move v8, v2

    move v2, v1

    move v1, v8

    .line 2979
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2980
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v3, v2, 0x1

    aput v1, v6, v2

    .line 2981
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v5, 0x1

    aget v1, v1, v5

    move v5, v2

    move v2, v3

    goto :goto_0

    .line 2974
    :cond_1
    aget v0, p1, v1

    move v4, v3

    move v5, v3

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_0

    .line 2982
    :cond_2
    if-ge v0, v1, :cond_3

    .line 2983
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v3, v2, 0x1

    aput v0, v6, v2

    .line 2984
    add-int/lit8 v2, v4, 0x1

    aget v0, p1, v4

    move v4, v2

    move v2, v3

    goto :goto_0

    .line 2985
    :cond_3
    if-eq v1, v7, :cond_4

    .line 2987
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v5, 0x1

    aget v1, v0, v5

    .line 2988
    add-int/lit8 v3, v4, 0x1

    aget v0, p1, v4

    move v4, v3

    move v5, v6

    goto :goto_0

    .line 2990
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v1, v2, 0x1

    aput v7, v0, v2

    .line 2991
    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 2996
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 2997
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 2998
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    .line 2999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 3000
    return-object p0

    :cond_5
    move v0, v1

    move v4, v1

    move v5, v3

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_0
.end method


# virtual methods
.method public final add(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1236
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public add(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1178
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public final add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    .prologue
    .line 1338
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1339
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1340
    if-gez v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1346
    :goto_0
    return-object p0

    .line 1344
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .prologue
    .line 2199
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2200
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 2201
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 2202
    return-object p0
.end method

.method public applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    .prologue
    .line 3386
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 3387
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    .line 3388
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;

    .line 3394
    :goto_0
    return-object p0

    .line 3389
    :cond_0
    const/16 v0, 0x7000

    if-ne p1, v0, :cond_1

    .line 3390
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/UnicodeSet$ScriptExtensionsFilter;-><init>(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 3392
    :cond_1
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;-><init>(II)V

    sget-object v1, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getSource(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public final applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2417
    if-nez p2, :cond_3

    const/4 v0, 0x1

    .line 2418
    :goto_0
    if-eqz v0, :cond_0

    .line 2419
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2422
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2423
    new-instance v2, Lcom/ibm/icu/impl/RuleCharacterIterator;

    invoke-direct {v2, p1, p3, p2}, Lcom/ibm/icu/impl/RuleCharacterIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;Ljava/text/ParsePosition;)V

    .line 2425
    invoke-direct {p0, v2, p3, v1, p4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/Appendable;I)V

    .line 2426
    invoke-virtual {v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->inVariable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2427
    const-string/jumbo v3, "Extra chars in variable value"

    invoke-static {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2429
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 2430
    if-eqz v0, :cond_4

    .line 2431
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2434
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2

    .line 2435
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2438
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2439
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse of \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" failed at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v1

    .line 2417
    goto :goto_0

    .line 2443
    :cond_4
    return-object p0
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 8

    .prologue
    const/16 v7, 0x3d

    const/4 v0, 0x0

    const/16 v3, 0x2000

    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 3443
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 3448
    if-eqz p3, :cond_1

    instance-of v2, p3, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    if-eqz v2, :cond_1

    check-cast p3, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    .line 3450
    invoke-virtual {p3, p1, p2, p0}, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3589
    :cond_0
    :goto_0
    return-object p0

    .line 3454
    :cond_1
    sget-object v2, Lcom/ibm/icu/text/UnicodeSet;->XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    if-eqz v2, :cond_2

    .line 3455
    sget-object v2, Lcom/ibm/icu/text/UnicodeSet;->XSYMBOL_TABLE:Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;

    invoke-virtual {v2, p1, p2, p0}, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3460
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 3461
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v2

    .line 3464
    const/16 v4, 0x1005

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 3468
    :cond_3
    if-ltz v2, :cond_4

    if-lt v2, v7, :cond_6

    :cond_4
    const/16 v4, 0x1000

    if-lt v2, v4, :cond_5

    const/16 v4, 0x1016

    if-lt v2, v4, :cond_6

    :cond_5
    if-lt v2, v3, :cond_b

    const/16 v3, 0x2001

    if-ge v2, v3, :cond_b

    .line 3472
    :cond_6
    :try_start_0
    invoke-static {v2, p2}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3578
    :cond_7
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 3579
    if-eqz v0, :cond_0

    .line 3580
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 3473
    :catch_0
    move-exception v3

    .line 3475
    const/16 v1, 0x1002

    if-eq v2, v1, :cond_8

    const/16 v1, 0x1010

    if-eq v2, v1, :cond_8

    const/16 v1, 0x1011

    if-ne v2, v1, :cond_a

    .line 3478
    :cond_8
    invoke-static {p2}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3483
    if-ltz v1, :cond_9

    const/16 v4, 0xff

    if-le v1, v4, :cond_7

    :cond_9
    throw v3

    .line 3485
    :cond_a
    throw v3

    .line 3491
    :cond_b
    sparse-switch v2, :sswitch_data_0

    .line 3531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported property"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3494
    :sswitch_0
    invoke-static {p2}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 3495
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;

    invoke-direct {v0, v2, v3}, Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;-><init>(D)V

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 3503
    :sswitch_1
    invoke-static {p2}, Lcom/ibm/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3504
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result v0

    .line 3505
    if-ne v0, v5, :cond_c

    .line 3506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid character name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3508
    :cond_c
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 3509
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_0

    .line 3514
    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unicode_1_Name (na1) not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3520
    :sswitch_3
    invoke-static {p2}, Lcom/ibm/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    .line 3521
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;-><init>(Lcom/ibm/icu/util/VersionInfo;)V

    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_0

    .line 3525
    :sswitch_4
    const/16 v1, 0x100a

    invoke-static {v1, p2}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    .line 3540
    :cond_d
    sget-object v6, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    .line 3542
    invoke-virtual {v6, v3, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v2

    .line 3543
    if-ne v2, v5, :cond_15

    .line 3544
    const/16 v4, 0x100a

    .line 3545
    invoke-virtual {v6, v4, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v2

    .line 3546
    if-ne v2, v5, :cond_14

    .line 3547
    invoke-virtual {v6, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v2

    .line 3548
    if-ne v2, v5, :cond_e

    move v2, v5

    .line 3551
    :cond_e
    if-ltz v2, :cond_f

    if-lt v2, v7, :cond_7

    .line 3553
    :cond_f
    if-ne v2, v5, :cond_13

    .line 3554
    const-string/jumbo v2, "ANY"

    invoke-static {v2, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    .line 3555
    const v1, 0x10ffff

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_0

    .line 3557
    :cond_10
    const-string/jumbo v2, "ASCII"

    invoke-static {v2, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 3558
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_0

    .line 3560
    :cond_11
    const-string/jumbo v0, "Assigned"

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    move v2, v3

    .line 3564
    goto/16 :goto_1

    .line 3567
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid property alias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3572
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing property value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v1, v2

    move v2, v4

    goto/16 :goto_1

    :cond_15
    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 3491
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x4000 -> :sswitch_3
        0x4005 -> :sswitch_1
        0x400b -> :sswitch_2
        0x7000 -> :sswitch_4
    .end sparse-switch
.end method

.method public clear()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .prologue
    .line 2261
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2262
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    const/high16 v2, 0x110000

    aput v2, v0, v1

    .line 2263
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 2264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 2265
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 2266
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-object p0

    .line 515
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 516
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    iput-object v1, v0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    .line 517
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    iput-object v1, v0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    move-object p0, v0

    .line 518
    goto :goto_0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    .prologue
    .line 4214
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 4215
    sget-boolean v1, Lcom/ibm/icu/text/UnicodeSet;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4216
    :cond_0
    return-object v0
.end method

.method public closeOver(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 3853
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 3854
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_7

    .line 3855
    sget-object v3, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 3856
    new-instance v4, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v4, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 3857
    sget-object v5, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 3862
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 3863
    iget-object v0, v4, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 3866
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v6

    .line 3868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 3870
    :goto_0
    if-ge v1, v6, :cond_3

    .line 3871
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v0

    .line 3872
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v8

    .line 3874
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_1

    .line 3876
    :goto_1
    if-gt v0, v8, :cond_2

    .line 3877
    invoke-virtual {v3, v0, v4}, Lcom/ibm/icu/impl/UCaseProps;->addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V

    .line 3876
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3882
    :cond_1
    :goto_2
    if-gt v0, v8, :cond_2

    .line 3883
    invoke-virtual {v3, v0, v11, v7, v10}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v9

    .line 3884
    invoke-static {v4, v9, v7}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3886
    invoke-virtual {v3, v0, v11, v7, v10}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v9

    .line 3887
    invoke-static {v4, v9, v7}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3889
    invoke-virtual {v3, v0, v11, v7, v10}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v9

    .line 3890
    invoke-static {v4, v9, v7}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3892
    invoke-virtual {v3, v0, v7, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v9

    .line 3893
    invoke-static {v4, v9, v7}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3882
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3870
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3897
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3898
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 3899
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3900
    invoke-static {v0, v2}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3901
    invoke-virtual {v3, v0, v4}, Lcom/ibm/icu/impl/UCaseProps;->addStringCaseClosure(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3902
    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_3

    .line 3906
    :cond_5
    invoke-static {v5}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v1

    .line 3907
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3909
    invoke-static {v5, v0}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3910
    invoke-static {v5, v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3911
    invoke-static {v5, v0}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3912
    invoke-static {v0, v2}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_4

    .line 3916
    :cond_6
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 3918
    :cond_7
    return-object p0
.end method

.method public compact()Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2312
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2313
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 2314
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    new-array v0, v0, [I

    .line 2315
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2316
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 2318
    :cond_0
    iput-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I

    .line 2319
    iput-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    .line 2320
    return-object p0
.end method

.method public compareTo(Lcom/ibm/icu/text/UnicodeSet;)I
    .locals 1

    .prologue
    .line 4518
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->compareTo(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 7

    .prologue
    const/high16 v6, 0x110000

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4526
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    if-eq p2, v0, :cond_3

    .line 4527
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result v4

    sub-int/2addr v0, v4

    .line 4528
    if-eqz v0, :cond_3

    .line 4529
    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    sget-object v4, Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Lcom/ibm/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, v4, :cond_0

    move v2, v1

    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v3

    .line 4554
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 4529
    goto :goto_0

    :cond_3
    move v4, v2

    .line 4534
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v4

    iget-object v5, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v5, v5, v4

    sub-int/2addr v0, v5

    if-eqz v0, :cond_a

    .line 4536
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v5, v5, v4

    if-ne v5, v6, :cond_4

    .line 4537
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4538
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4539
    iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_1

    .line 4541
    :cond_4
    iget-object v5, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v5, v5, v4

    if-ne v5, v6, :cond_8

    .line 4542
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v3

    goto :goto_1

    .line 4543
    :cond_5
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4544
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v4, v5, v4

    invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4545
    if-lez v0, :cond_6

    :goto_3
    move v1, v3

    goto :goto_1

    :cond_6
    if-gez v0, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_3

    .line 4548
    :cond_8
    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_9

    :goto_4
    move v1, v0

    goto :goto_1

    :cond_9
    neg-int v0, v0

    goto :goto_4

    .line 4550
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v4

    if-ne v0, v6, :cond_b

    .line 4554
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v1

    goto :goto_1

    .line 4533
    :cond_b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 290
    check-cast p1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->compareTo(Lcom/ibm/icu/text/UnicodeSet;)I

    move-result v0

    return v0
.end method

.method public complement()Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1623
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1624
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1626
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 1633
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1634
    return-object p0

    .line 1628
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1629
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1630
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aput v3, v0, v3

    .line 1631
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    goto :goto_0
.end method

.method public complement(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    .prologue
    const v0, 0x10ffff

    const/4 v4, 0x6

    .line 1593
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1594
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 1595
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1597
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 1598
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1600
    :cond_3
    if-gt p1, p2, :cond_4

    .line 1601
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->xor([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 1603
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1604
    return-object p0
.end method

.method public contains(I)Z
    .locals 5

    .prologue
    .line 1671
    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-le p1, v0, :cond_1

    .line 1672
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-eqz v0, :cond_2

    .line 1675
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/BMPSet;->contains(I)Z

    move-result v0

    .line 1692
    :goto_0
    return v0

    .line 1677
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_3

    .line 1678
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->contains(I)Z

    move-result v0

    goto :goto_0

    .line 1690
    :cond_3
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v0

    .line 1692
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1984
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1985
    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 1986
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1987
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1993
    :goto_1
    return v1

    .line 1990
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_1

    .line 1984
    :cond_1
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 1993
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2336
    if-nez p1, :cond_1

    .line 2352
    :cond_0
    :goto_0
    return v0

    .line 2339
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 2340
    goto :goto_0

    .line 2343
    :cond_2
    :try_start_0
    check-cast p1, Lcom/ibm/icu/text/UnicodeSet;

    .line 2344
    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    iget v3, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 2345
    :goto_1
    iget v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    if-ge v2, v3, :cond_3

    .line 2346
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_0

    .line 2345
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2348
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v3, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2352
    goto :goto_0

    .line 2349
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public freeze()Lcom/ibm/icu/text/UnicodeSet;
    .locals 4

    .prologue
    .line 4006
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I

    .line 4013
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    array-length v0, v0

    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v1, 0x10

    if-le v0, v1, :cond_1

    .line 4016
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4017
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 4018
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 4019
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 4020
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v3, v2, v1

    aput v3, v0, v1

    move v0, v1

    goto :goto_1

    .line 4016
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    goto :goto_0

    .line 4025
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4026
    new-instance v0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v2, 0x7f

    invoke-direct {v0, p0, v1, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;-><init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    .line 4028
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4035
    :cond_3
    new-instance v0, Lcom/ibm/icu/impl/BMPSet;

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/BMPSet;-><init>([II)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    .line 4038
    :cond_4
    return-object p0
.end method

.method public getRangeCount()I
    .locals 1

    .prologue
    .line 2277
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRangeEnd(I)I
    .locals 2

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRangeStart(I)I
    .locals 2

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2364
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 2365
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    if-ge v0, v2, :cond_0

    .line 2366
    const v2, 0xf4243

    mul-int/2addr v1, v2

    .line 2367
    iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 2365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2369
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 859
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    .prologue
    .line 3995
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4335
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public final remove(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .prologue
    .line 1558
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public remove(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    .prologue
    const v0, 0x10ffff

    const/4 v4, 0x6

    const/4 v1, 0x2

    .line 1536
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 1537
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 1538
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 1541
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1543
    :cond_3
    if-gt p1, p2, :cond_4

    .line 1544
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 1546
    :cond_4
    return-object p0
.end method

.method public removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .prologue
    .line 2233
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2234
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 2235
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 2236
    return-object p0
.end method

.method public retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .prologue
    .line 2216
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 2217
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;

    .line 2218
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->retainAll(Ljava/util/Collection;)Z

    .line 2219
    return-object p0
.end method

.method public set(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 532
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 534
    return-object p0
.end method

.method public set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V

    .line 545
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I

    .line 546
    iget v0, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I

    .line 547
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 548
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    .line 549
    return-object p0
.end method

.method public size()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 844
    .line 845
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v2

    move v1, v0

    .line 846
    :goto_0
    if-ge v0, v2, :cond_0

    .line 847
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4065
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4066
    if-gez p2, :cond_1

    .line 4067
    const/4 p2, 0x0

    .line 4071
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-eqz v0, :cond_2

    .line 4073
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0, p1, p2, p3, v4}, Lcom/ibm/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v0

    .line 4086
    :goto_0
    return v0

    .line 4068
    :cond_1
    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 4075
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_3

    .line 4076
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    goto :goto_0

    .line 4077
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4078
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_4

    const/16 v0, 0x21

    .line 4080
    :goto_1
    new-instance v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;-><init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4081
    invoke-virtual {v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4082
    invoke-virtual {v1, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    goto :goto_0

    .line 4078
    :cond_4
    const/16 v0, 0x22

    goto :goto_1

    .line 4086
    :cond_5
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/ibm/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v0

    goto :goto_0
.end method

.method public span(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1

    .prologue
    .line 4050
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4099
    if-nez p4, :cond_0

    .line 4100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outCount must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4102
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4103
    if-gez p2, :cond_2

    .line 4104
    const/4 p2, 0x0

    .line 4108
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_3

    .line 4111
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v0

    .line 4122
    :goto_0
    return v0

    .line 4105
    :cond_2
    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 4112
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-eqz v0, :cond_4

    .line 4113
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v0

    goto :goto_0

    .line 4114
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4115
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_5

    const/16 v0, 0x21

    .line 4117
    :goto_1
    or-int/lit8 v0, v0, 0x40

    .line 4118
    new-instance v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;-><init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4119
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v0

    goto :goto_0

    .line 4115
    :cond_5
    const/16 v0, 0x22

    goto :goto_1

    .line 4122
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v0

    goto :goto_0
.end method

.method public spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4170
    if-gtz p2, :cond_0

    .line 4204
    :goto_0
    return v1

    .line 4173
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 4174
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 4176
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    if-eqz v0, :cond_2

    .line 4178
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->bmpSet:Lcom/ibm/icu/impl/BMPSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/BMPSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    goto :goto_0

    .line 4180
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_3

    .line 4181
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->stringSpan:Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    goto :goto_0

    .line 4182
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4183
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_4

    const/16 v0, 0x11

    .line 4186
    :goto_1
    new-instance v2, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;-><init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4187
    invoke-virtual {v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4188
    invoke-virtual {v2, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    goto :goto_0

    .line 4183
    :cond_4
    const/16 v0, 0x12

    goto :goto_1

    .line 4193
    :cond_5
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-eq p3, v0, :cond_7

    const/4 v0, 0x1

    .line 4198
    :cond_6
    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4199
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eq v0, v2, :cond_8

    :goto_3
    move v1, p2

    .line 4204
    goto :goto_0

    :cond_7
    move v0, v1

    .line 4193
    goto :goto_2

    .line 4202
    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    .line 4203
    if-gtz p2, :cond_6

    goto :goto_3
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 701
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 704
    :goto_0
    return-object v0

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
