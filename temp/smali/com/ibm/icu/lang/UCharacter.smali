.class public final Lcom/ibm/icu/lang/UCharacter;
.super Ljava/lang/Object;
.source "UCharacter.java"


# direct methods
.method private static applyEdits(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 4987
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5000
    :goto_0
    return-object p0

    .line 4990
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits;->lengthDelta()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4991
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits;->getCoarseIterator()Lcom/ibm/icu/text/Edits$Iterator;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lcom/ibm/icu/text/Edits$Iterator;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4992
    invoke-virtual {v1}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4993
    invoke-virtual {v1}, Lcom/ibm/icu/text/Edits$Iterator;->replacementIndex()I

    move-result v2

    .line 4994
    invoke-virtual {v1}, Lcom/ibm/icu/text/Edits$Iterator;->newLength()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4996
    :cond_1
    invoke-virtual {v1}, Lcom/ibm/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v2

    .line 4997
    invoke-virtual {v1}, Lcom/ibm/icu/text/Edits$Iterator;->oldLength()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5000
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static digit(I)I
    .locals 1

    .prologue
    .line 3715
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->digit(I)I

    move-result v0

    return v0
.end method

.method public static digit(II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3688
    const/4 v0, 0x2

    if-gt v0, p1, :cond_2

    const/16 v0, 0x24

    if-gt p1, v0, :cond_2

    .line 3689
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v0

    .line 3690
    if-gez v0, :cond_0

    .line 3692
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result v0

    .line 3694
    :cond_0
    if-ge v0, p1, :cond_1

    .line 3696
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3694
    goto :goto_0

    :cond_2
    move v0, v1

    .line 3696
    goto :goto_0
.end method

.method public static foldCase(II)I
    .locals 1

    .prologue
    .line 5338
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->fold(II)I

    move-result v0

    return v0
.end method

.method public static foldCase(IZ)I
    .locals 1

    .prologue
    .line 5268
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final foldCase(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5357
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 5358
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5368
    :goto_0
    return-object p0

    .line 5363
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/Edits;

    invoke-direct {v1}, Lcom/ibm/icu/text/Edits;-><init>()V

    .line 5364
    or-int/lit16 v0, p1, 0x4000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0, v2, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 5366
    invoke-static {p0, v0, v1}, Lcom/ibm/icu/lang/UCharacter;->applyEdits(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5368
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static foldCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5289
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAge(I)Lcom/ibm/icu/util/VersionInfo;
    .locals 2

    .prologue
    .line 5587
    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-le p0, v0, :cond_1

    .line 5588
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Codepoint out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5590
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getAge(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getCaseLocale(Lcom/ibm/icu/util/ULocale;)I
    .locals 1

    .prologue
    .line 4928
    if-nez p0, :cond_0

    .line 4929
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 4931
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result v0

    return v0
.end method

.method public static getCharFromExtendedName(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 4623
    sget-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/ibm/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIntPropertyValue(II)I
    .locals 1

    .prologue
    .line 5713
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getIntPropertyValue(II)I

    move-result v0

    return v0
.end method

.method public static getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 3

    .prologue
    .line 4701
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v0

    .line 4702
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4703
    new-instance v0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4705
    :cond_0
    return v0
.end method

.method public static getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 3

    .prologue
    .line 4813
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v0

    .line 4814
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4815
    new-instance v0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4817
    :cond_0
    return v0
.end method

.method public static getType(I)I
    .locals 1

    .prologue
    .line 3791
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    return v0
.end method

.method public static getUnicodeNumericValue(I)D
    .locals 2

    .prologue
    .line 3756
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getUnicodeNumericValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBinaryProperty(II)Z
    .locals 1

    .prologue
    .line 5620
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isDigit(I)Z
    .locals 2

    .prologue
    .line 3824
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowerCase(I)Z
    .locals 2

    .prologue
    .line 3946
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUAlphabetic(I)Z
    .locals 1

    .prologue
    .line 5632
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isUWhiteSpace(I)Z
    .locals 1

    .prologue
    .line 5669
    const/16 v0, 0x1f

    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method private static toLowerCase(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4935
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 4936
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4946
    :goto_0
    return-object p1

    .line 4941
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/Edits;

    invoke-direct {v1}, Lcom/ibm/icu/text/Edits;-><init>()V

    .line 4942
    const/16 v0, 0x4000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0, p1, v2, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 4944
    invoke-static {p1, v0, v1}, Lcom/ibm/icu/lang/UCharacter;->applyEdits(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4946
    :cond_1
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 4947
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 4946
    invoke-static {p0, v0, p1, v1, v2}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 4947
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5050
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toTitleCase(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 4969
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 4970
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4981
    :goto_0
    return-object p3

    .line 4975
    :cond_0
    new-instance v5, Lcom/ibm/icu/text/Edits;

    invoke-direct {v5}, Lcom/ibm/icu/text/Edits;-><init>()V

    .line 4976
    or-int/lit16 v1, p1, 0x4000

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/CaseMapImpl;->toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 4979
    invoke-static {p3, v0, v5}, Lcom/ibm/icu/lang/UCharacter;->applyEdits(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 4981
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 4982
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4981
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/CaseMapImpl;->toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 4982
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public static toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5099
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5126
    if-nez p2, :cond_1

    .line 5127
    if-nez p0, :cond_0

    .line 5128
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 5130
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    .line 5132
    :cond_1
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 5133
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result v0

    invoke-static {v0, p3, p2, p1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toUpperCase(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4952
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 4953
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4963
    :goto_0
    return-object p1

    .line 4958
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/Edits;

    invoke-direct {v1}, Lcom/ibm/icu/text/Edits;-><init>()V

    .line 4959
    const/16 v0, 0x4000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0, p1, v2, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 4961
    invoke-static {p1, v0, v1}, Lcom/ibm/icu/lang/UCharacter;->applyEdits(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4963
    :cond_1
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 4964
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 4963
    invoke-static {p0, v0, p1, v1, v2}, Lcom/ibm/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 4964
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5025
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
