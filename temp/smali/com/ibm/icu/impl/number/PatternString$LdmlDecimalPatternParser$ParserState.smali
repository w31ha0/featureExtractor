.class Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;
.super Ljava/lang/Object;
.source "PatternString.java"


# instance fields
.field offset:I

.field final pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->pattern:Ljava/lang/String;

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    .line 573
    return-void
.end method


# virtual methods
.method next()I
    .locals 3

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->peek()I

    move-result v0

    .line 585
    iget v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    .line 586
    return v0
.end method

.method peek()I
    .locals 2

    .prologue
    .line 576
    iget v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 577
    const/4 v0, -0x1

    .line 579
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->pattern:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    goto :goto_0
.end method

.method toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    const-string/jumbo v1, "Unexpected character in decimal format pattern: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string/jumbo v1, "\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->peek()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 597
    const-string/jumbo v1, "EOL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 599
    :cond_0
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->peek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 601
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
