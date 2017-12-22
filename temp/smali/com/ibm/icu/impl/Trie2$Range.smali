.class public Lcom/ibm/icu/impl/Trie2$Range;
.super Ljava/lang/Object;
.source "Trie2.java"


# instance fields
.field public endCodePoint:I

.field public leadSurrogate:Z

.field public startCodePoint:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/Trie2$Range;

    .line 352
    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    iget v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    iget-boolean v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 361
    invoke-static {}, Lcom/ibm/icu/impl/Trie2;->access$000()I

    move-result v0

    .line 362
    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->access$100(II)I

    move-result v0

    .line 363
    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->access$100(II)I

    move-result v0

    .line 364
    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->access$200(II)I

    move-result v1

    .line 365
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/ibm/icu/impl/Trie2;->access$300(II)I

    move-result v0

    .line 366
    return v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
