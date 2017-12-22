.class public Lcom/ibm/icu/text/SelectFormat;
.super Ljava/text/Format;
.source "SelectFormat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private transient msgPattern:Lcom/ibm/icu/text/MessagePattern;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const-class v0, Lcom/ibm/icu/text/SelectFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/SelectFormat;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v2

    .line 225
    const/4 v0, 0x0

    .line 228
    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 229
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 230
    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_2

    :goto_0
    move v1, v0

    .line 243
    :cond_1
    return v1

    .line 233
    :cond_2
    sget-boolean v5, Lcom/ibm/icu/text/SelectFormat;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 235
    :cond_3
    invoke-virtual {p0, v3, p2}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    if-nez v0, :cond_4

    const-string/jumbo v4, "other"

    invoke-virtual {p0, v3, v4}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 241
    :cond_4
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 242
    add-int/lit8 p1, v1, 0x1

    if-lt p1, v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    if-ne p0, p1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 351
    goto :goto_0

    .line 353
    :cond_3
    check-cast p1, Lcom/ibm/icu/text/SelectFormat;

    .line 354
    iget-object v2, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    iget-object v1, p1, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessagePattern;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final format(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 256
    invoke-static {p1}, Lcom/ibm/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid formatting argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    if-nez v0, :cond_2

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid format error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/ibm/icu/text/SelectFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 268
    iget-object v2, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    iget-object v3, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 269
    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v1

    .line 268
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 272
    :cond_3
    const/4 v1, 0x0

    .line 273
    iget-object v2, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 275
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 277
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 278
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_5

    .line 279
    if-nez v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/ibm/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_5
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_7

    .line 285
    if-nez v0, :cond_6

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    :cond_6
    iget-object v4, p0, Lcom/ibm/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    move v7, v1

    move v1, v2

    move-object v2, v0

    move v0, v7

    :goto_2
    move v7, v0

    move-object v0, v2

    move v2, v1

    move v1, v7

    .line 301
    goto :goto_1

    .line 290
    :cond_7
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v3, :cond_9

    .line 291
    if-nez v0, :cond_8

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    :cond_8
    iget-object v3, p0, Lcom/ibm/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 296
    iget-object v2, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/ibm/icu/text/SelectFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 298
    iget-object v3, p0, Lcom/ibm/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-static {v3, v5, v2, v0}, Lcom/ibm/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    move v7, v1

    move v1, v2

    move-object v2, v0

    move v0, v7

    .line 299
    goto :goto_2

    :cond_9
    move v7, v1

    move v1, v2

    move-object v2, v0

    move v0, v7

    goto :goto_2
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 319
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 320
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SelectFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    return-object p2

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is not a String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/ibm/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/ibm/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pattern=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
