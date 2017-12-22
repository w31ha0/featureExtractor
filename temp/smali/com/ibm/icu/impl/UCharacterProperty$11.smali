.class Lcom/ibm/icu/impl/UCharacterProperty$11;
.super Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$11;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 367
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    if-eqz v2, :cond_2

    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 371
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 373
    const/4 p1, -0x1

    .line 378
    :cond_0
    if-ltz p1, :cond_4

    .line 380
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 381
    sget-object v3, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 382
    sget-object v3, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, v3, v1}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 386
    :cond_1
    :goto_0
    return v0

    .line 375
    :cond_2
    if-gez p1, :cond_0

    move v0, v1

    .line 376
    goto :goto_0

    :cond_3
    move v0, v1

    .line 382
    goto :goto_0

    .line 385
    :cond_4
    invoke-static {v2, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
