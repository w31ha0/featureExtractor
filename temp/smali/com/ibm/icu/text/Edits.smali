.class public final Lcom/ibm/icu/text/Edits;
.super Ljava/lang/Object;
.source "Edits.java"


# instance fields
.field private array:[C

.field private delta:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    .line 47
    return-void
.end method

.method private append(I)V
    .locals 3

    .prologue
    .line 169
    iget v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->growArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 172
    :cond_1
    return-void
.end method

.method private growArray()Z
    .locals 3

    .prologue
    const v0, 0x7fffffff

    .line 176
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 177
    const/16 v0, 0x7d0

    .line 186
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v1

    sub-int v1, v0, v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 187
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v1

    if-ne v1, v0, :cond_2

    .line 179
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v1

    const v2, 0x3fffffff    # 1.9999999f

    if-ge v1, v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method private lastUnit()I
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    goto :goto_0
.end method

.method private setLastUnit(I)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v1, v1, -0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 60
    return-void
.end method


# virtual methods
.method public addReplace(II)V
    .locals 8

    .prologue
    const/16 v7, 0x7fff

    const/16 v2, 0xfff

    const/16 v6, 0x3d

    const v5, 0x8000

    .line 105
    if-ne p1, p2, :cond_2

    if-lez p1, :cond_2

    const/4 v0, 0x6

    if-gt p1, v0, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->lastUnit()I

    move-result v0

    .line 109
    if-ge v2, v0, :cond_1

    const/16 v1, 0x6fff

    if-ge v0, v1, :cond_1

    shr-int/lit8 v1, v0, 0xc

    if-ne v1, p1, :cond_1

    and-int/lit16 v1, v0, 0xfff

    if-ge v1, v2, :cond_1

    .line 111
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    shl-int/lit8 v0, p1, 0xc

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits;->append(I)V

    goto :goto_0

    .line 118
    :cond_2
    if-ltz p1, :cond_3

    if-gez p2, :cond_4

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addReplace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): both lengths must be non-negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_4
    if-nez p1, :cond_5

    if-eqz p2, :cond_0

    .line 126
    :cond_5
    sub-int v0, p2, p1

    .line 127
    if-eqz v0, :cond_9

    .line 128
    if-lez v0, :cond_6

    iget v1, p0, Lcom/ibm/icu/text/Edits;->delta:I

    if-ltz v1, :cond_6

    const v1, 0x7fffffff

    iget v2, p0, Lcom/ibm/icu/text/Edits;->delta:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    :cond_6
    if-gez v0, :cond_8

    iget v1, p0, Lcom/ibm/icu/text/Edits;->delta:I

    if-gez v1, :cond_8

    const/high16 v1, -0x80000000

    iget v2, p0, Lcom/ibm/icu/text/Edits;->delta:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 131
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 133
    :cond_8
    iget v1, p0, Lcom/ibm/icu/text/Edits;->delta:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    .line 136
    :cond_9
    const/16 v1, 0x7000

    .line 137
    if-ge p1, v6, :cond_a

    if-ge p2, v6, :cond_a

    .line 138
    shl-int/lit8 v0, p1, 0x6

    or-int/2addr v0, v1

    .line 139
    or-int/2addr v0, p2

    .line 140
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits;->append(I)V

    goto :goto_0

    .line 141
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v0, v0

    iget v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    sub-int/2addr v0, v2

    const/4 v2, 0x5

    if-ge v0, v2, :cond_b

    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->growArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :cond_b
    iget v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v0, v0, 0x1

    .line 143
    if-ge p1, v6, :cond_c

    .line 144
    shl-int/lit8 v2, p1, 0x6

    or-int/2addr v1, v2

    .line 153
    :goto_1
    if-ge p2, v6, :cond_e

    .line 154
    or-int/2addr v1, p2

    .line 163
    :goto_2
    iget-object v2, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v3, p0, Lcom/ibm/icu/text/Edits;->length:I

    int-to-char v1, v1

    aput-char v1, v2, v3

    .line 164
    iput v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    goto/16 :goto_0

    .line 145
    :cond_c
    if-gt p1, v7, :cond_d

    .line 146
    const/16 v2, 0x7f40

    .line 147
    iget-object v3, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v1, v0, 0x1

    or-int v4, v5, p1

    int-to-char v4, v4

    aput-char v4, v3, v0

    move v0, v1

    move v1, v2

    goto :goto_1

    .line 149
    :cond_d
    shr-int/lit8 v2, p1, 0x1e

    add-int/lit8 v2, v2, 0x3e

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    .line 150
    iget-object v2, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0xf

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v0

    .line 151
    iget-object v2, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v0, v3, 0x1

    or-int v4, v5, p1

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto :goto_1

    .line 155
    :cond_e
    if-gt p2, v7, :cond_f

    .line 156
    or-int/lit8 v2, v1, 0x3d

    .line 157
    iget-object v3, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v1, v0, 0x1

    or-int v4, v5, p2

    int-to-char v4, v4

    aput-char v4, v3, v0

    move v0, v1

    move v1, v2

    goto :goto_2

    .line 159
    :cond_f
    shr-int/lit8 v2, p2, 0x1e

    add-int/lit8 v2, v2, 0x3e

    or-int/2addr v1, v2

    .line 160
    iget-object v2, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p2, 0xf

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v0

    .line 161
    iget-object v2, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v0, v3, 0x1

    or-int v4, v5, p2

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto :goto_2
.end method

.method public addUnchanged(I)V
    .locals 3

    .prologue
    const/16 v2, 0xfff

    .line 72
    if-gez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addUnchanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): length must not be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->lastUnit()I

    move-result v0

    .line 78
    if-ge v0, v2, :cond_3

    .line 79
    rsub-int v1, v0, 0xfff

    .line 80
    if-lt v1, p1, :cond_2

    .line 81
    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    .line 85
    sub-int/2addr p1, v1

    .line 88
    :cond_3
    :goto_1
    const/16 v0, 0x1000

    if-lt p1, v0, :cond_4

    .line 89
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/Edits;->append(I)V

    .line 90
    add-int/lit16 p1, p1, -0x1000

    goto :goto_1

    .line 93
    :cond_4
    if-lez p1, :cond_1

    .line 94
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits;->append(I)V

    goto :goto_0
.end method

.method public getCoarseIterator()Lcom/ibm/icu/text/Edits$Iterator;
    .locals 6

    .prologue
    .line 471
    new-instance v0, Lcom/ibm/icu/text/Edits$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Edits$Iterator;-><init>([CIZZLcom/ibm/icu/text/Edits$1;)V

    return-object v0
.end method

.method public hasChanges()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    iget v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    if-eqz v0, :cond_1

    move v1, v2

    .line 214
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 209
    :goto_1
    iget v3, p0, Lcom/ibm/icu/text/Edits;->length:I

    if-ge v0, v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/ibm/icu/text/Edits;->array:[C

    aget-char v3, v3, v0

    const/16 v4, 0xfff

    if-le v3, v4, :cond_2

    move v1, v2

    .line 211
    goto :goto_0

    .line 209
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public lengthDelta()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    iput v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    .line 56
    return-void
.end method
