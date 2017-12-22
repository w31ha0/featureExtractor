.class Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:[I

.field private firstIdx:I

.field private lastIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/ibm/icu/text/DictionaryBreakEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    .line 94
    iput v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    .line 95
    iput v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    return-void
.end method

.method private grow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 107
    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget-object v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    .line 109
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    :goto_0
    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_1
    return v0

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method offer(I)V
    .locals 2

    .prologue
    .line 114
    sget-boolean v0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aput p1, v0, v1

    .line 116
    return-void
.end method

.method peek()I
    .locals 2

    .prologue
    .line 131
    sget-boolean v0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method peekLast()I
    .locals 2

    .prologue
    .line 136
    sget-boolean v0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method pollLast()I
    .locals 3

    .prologue
    .line 141
    sget-boolean v0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method pop()I
    .locals 2

    .prologue
    .line 126
    sget-boolean v0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aget v0, v0, v1

    return v0
.end method

.method push(I)V
    .locals 3

    .prologue
    .line 119
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->grow()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aput p1, v0, v1

    .line 123
    return-void
.end method

.method size()I
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    sub-int/2addr v0, v1

    return v0
.end method
