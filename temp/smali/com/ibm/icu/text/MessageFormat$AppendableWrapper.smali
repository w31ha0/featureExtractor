.class final Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# instance fields
.field private app:Ljava/lang/Appendable;

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;",
            ">;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 2565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    .line 2567
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    .line 2569
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 2559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2560
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    .line 2561
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    .line 2563
    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I
    .locals 1

    .prologue
    .line 2558
    iget v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    return v0
.end method

.method public static append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I
    .locals 4

    .prologue
    .line 2599
    :try_start_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 2600
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    .line 2601
    sub-int v2, v1, v0

    .line 2602
    if-ge v0, v1, :cond_0

    .line 2603
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2604
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_0

    .line 2605
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2609
    :catch_0
    move-exception v0

    .line 2610
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2608
    :cond_0
    return v2
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2577
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2578
    iget v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2582
    return-void

    .line 2579
    :catch_0
    move-exception v0

    .line 2580
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2

    .prologue
    .line 2586
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 2587
    iget v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2591
    return-void

    .line 2588
    :catch_0
    move-exception v0

    .line 2589
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public append(Ljava/text/CharacterIterator;)V
    .locals 2

    .prologue
    .line 2594
    iget v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-static {v1, p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2595
    return-void
.end method

.method public formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2616
    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    .line 2641
    :cond_0
    return-void

    .line 2618
    :cond_1
    invoke-virtual {p1, p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    .line 2619
    iget v1, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2620
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/text/CharacterIterator;)V

    .line 2622
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->first()C

    .line 2623
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v0

    .line 2624
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v5

    .line 2625
    sub-int v6, v1, v0

    move v2, v0

    .line 2626
    :goto_0
    if-ge v2, v5, :cond_0

    .line 2627
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 2628
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v3

    .line 2629
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2630
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2631
    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    new-instance v9, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;

    .line 2633
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    add-int v10, v6, v2

    add-int v11, v6, v3

    invoke-direct {v9, v1, v0, v10, v11}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 2631
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2638
    :cond_2
    invoke-interface {v4, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    move v2, v3

    .line 2639
    goto :goto_0
.end method

.method public formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 2645
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    .line 2649
    :goto_0
    return-void

    .line 2647
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public useAttributes()V
    .locals 1

    .prologue
    .line 2572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    .line 2573
    return-void
.end method
