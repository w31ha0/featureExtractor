.class public Lcom/ibm/icu/impl/RuleCharacterIterator;
.super Ljava/lang/Object;
.source "RuleCharacterIterator.java"


# instance fields
.field private buf:[C

.field private bufPos:I

.field private isEscaped:Z

.field private pos:Ljava/text/ParsePosition;

.field private sym:Lcom/ibm/icu/text/SymbolTable;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;Ljava/text/ParsePosition;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 109
    :cond_1
    iput-object p1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->sym:Lcom/ibm/icu/text/SymbolTable;

    .line 111
    iput-object p3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    .line 113
    return-void
.end method

.method private _advance(I)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_1

    .line 337
    iget v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 338
    iget v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 343
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0
.end method

.method private _current()I
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I

    move-result v0

    .line 327
    :goto_0
    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public atEnd()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPos(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 218
    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    aput-object v0, p1, v2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    aput v1, v0, v2

    iget v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    aput v1, v0, v3

    aput-object v0, p1, v3

    .line 225
    :goto_0
    return-object p1

    :cond_0
    move-object v0, p1

    .line 220
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    aput-object v1, v0, v2

    .line 222
    aget-object v0, v0, v3

    check-cast v0, [I

    check-cast v0, [I

    .line 223
    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    aput v1, v0, v2

    .line 224
    iget v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    aput v1, v0, v3

    goto :goto_0
.end method

.method public inVariable()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEscaped()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped:Z

    return v0
.end method

.method public jumpahead(I)V
    .locals 2

    .prologue
    .line 285
    if-gez p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_3

    .line 289
    iget v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 290
    iget v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 293
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    .line 303
    :cond_2
    return-void

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    .line 298
    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 299
    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public lookahead()Ljava/lang/String;
    .locals 5

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    iget v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v3, v3

    iget v4, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 275
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public next(I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    .line 132
    iput-boolean v5, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped:Z

    .line 135
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->_current()I

    move-result v0

    .line 136
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->_advance(I)V

    .line 138
    const/16 v1, 0x24

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    if-nez v1, :cond_4

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->sym:Lcom/ibm/icu/text/SymbolTable;

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->sym:Lcom/ibm/icu/text/SymbolTable;

    iget-object v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v4, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/ibm/icu/text/SymbolTable;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    move-result-object v1

    .line 143
    if-nez v1, :cond_2

    .line 177
    :cond_1
    return v0

    .line 146
    :cond_2
    iput v5, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 147
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->sym:Lcom/ibm/icu/text/SymbolTable;

    invoke-interface {v0, v1}, Lcom/ibm/icu/text/SymbolTable;->lookup(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    .line 148
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    if-nez v0, :cond_3

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Undefined variable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v0, v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    goto :goto_0

    .line 159
    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_5

    .line 160
    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    :cond_5
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 165
    new-array v1, v6, [I

    aput v5, v1, v5

    .line 166
    invoke-virtual {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v0

    .line 167
    aget v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    .line 168
    iput-boolean v6, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped:Z

    .line 169
    if-gez v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid escape"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPos(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 235
    aget-object v0, p1, v2

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C

    .line 236
    aget-object v0, p1, v3

    check-cast v0, [I

    check-cast v0, [I

    .line 237
    iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 238
    aget v0, v0, v3

    iput v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 239
    return-void
.end method

.method public skipIgnored(I)V
    .locals 2

    .prologue
    .line 250
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->_current()I

    move-result v0

    .line 253
    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    return-void

    .line 254
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->_advance(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
