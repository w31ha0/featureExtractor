.class public abstract Lcom/ibm/icu/impl/Trie;
.super Ljava/lang/Object;
.source "Trie.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected m_dataLength_:I

.field protected m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

.field protected m_index_:[C

.field private m_isLatin1Linear_:Z

.field private m_options_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/ibm/icu/impl/Trie;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/Trie;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    instance-of v2, p1, Lcom/ibm/icu/impl/Trie;

    if-nez v2, :cond_2

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    check-cast p1, Lcom/ibm/icu/impl/Trie;

    .line 108
    iget-boolean v2, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    iget v3, p1, Lcom/ibm/icu/impl/Trie;->m_options_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    iget v3, p1, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    iget-object v3, p1, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    .line 111
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected final getBMPOffset(C)I
    .locals 1

    .prologue
    .line 311
    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdbff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x140

    .line 313
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    .line 311
    :goto_0
    return v0

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    goto :goto_0
.end method

.method protected final getCodePointOffset(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 342
    if-gez p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    const v1, 0xd800

    if-ge p1, v1, :cond_2

    .line 346
    const/4 v0, 0x0

    int-to-char v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    goto :goto_0

    .line 347
    :cond_2
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    .line 349
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Trie;->getBMPOffset(C)I

    move-result v0

    goto :goto_0

    .line 350
    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_0

    .line 353
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    and-int/lit16 v1, p1, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/Trie;->getSurrogateOffset(CC)I

    move-result v0

    goto :goto_0
.end method

.method protected final getLeadOffset(C)I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    return v0
.end method

.method protected final getRawOffset(IC)I
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v1, p2, 0x5

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p2, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method protected abstract getSurrogateOffset(CC)I
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 116
    sget-boolean v0, Lcom/ibm/icu/impl/Trie;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 117
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method
