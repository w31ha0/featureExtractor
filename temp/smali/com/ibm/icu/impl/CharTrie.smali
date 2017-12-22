.class public Lcom/ibm/icu/impl/CharTrie;
.super Lcom/ibm/icu/impl/Trie;
.source "CharTrie.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private m_data_:[C

.field private m_initialValue_:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/CharTrie;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 220
    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/ibm/icu/impl/CharTrie;

    if-eqz v1, :cond_0

    .line 221
    check-cast p1, Lcom/ibm/icu/impl/CharTrie;

    .line 222
    iget-char v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    iget-char v2, p1, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 224
    :cond_0
    return v0
.end method

.method public final getCodePointValue(I)C
    .locals 2

    .prologue
    .line 119
    if-ltz p1, :cond_0

    const v0, 0xd800

    if-ge p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 123
    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    aget-char v0, v1, v0

    .line 131
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointOffset(I)I

    move-result v0

    .line 131
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    aget-char v0, v1, v0

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    goto :goto_0
.end method

.method public final getLeadValue(C)C
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getLeadOffset(C)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method protected final getSurrogateOffset(CC)I
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The field DataManipulate in this Trie is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getLeadValue(C)C

    move-result v1

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    .line 268
    if-lez v0, :cond_1

    .line 269
    and-int/lit16 v1, p2, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/CharTrie;->getRawOffset(IC)I

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 229
    sget-boolean v0, Lcom/ibm/icu/impl/CharTrie;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 230
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method
