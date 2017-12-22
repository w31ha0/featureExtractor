.class final Lcom/ibm/icu/text/UnhandledBreakEngine;
.super Ljava/lang/Object;
.source "UnhandledBreakEngine.java"

# interfaces
.implements Lcom/ibm/icu/text/LanguageBreakEngine;


# instance fields
.field final fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/ibm/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 40
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public findBreaks(Ljava/text/CharacterIterator;IIZILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 3

    .prologue
    .line 54
    if-ltz p5, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    .line 56
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 57
    if-eqz p4, :cond_0

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-le v2, p2, :cond_1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    .line 60
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    goto :goto_0

    .line 63
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-ge v2, p3, :cond_1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 65
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    goto :goto_1

    .line 69
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public handleChar(II)V
    .locals 4

    .prologue
    const/16 v3, 0x100a

    .line 79
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    .line 81
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-static {p1, v3}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v1

    .line 83
    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 84
    invoke-virtual {v2, v3, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 85
    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 86
    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p2, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method

.method public handles(II)Z
    .locals 1

    .prologue
    .line 47
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 48
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
