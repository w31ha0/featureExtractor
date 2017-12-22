.class public Lcom/netflix/msl/io/LZWInputStream;
.super Ljava/io/InputStream;
.source "LZWInputStream.java"


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final INITIAL_DICTIONARY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private bits:I

.field private final buffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private codeOffset:I

.field private final codes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/InputStream;

.field private final prevdata:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v1, 0x0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/netflix/msl/io/LZWInputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    move v0, v1

    .line 37
    :goto_0
    if-ge v0, v5, :cond_0

    .line 38
    const/4 v2, 0x1

    new-array v2, v2, [B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 39
    sget-object v3, Lcom/netflix/msl/io/LZWInputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 261
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/netflix/msl/io/LZWInputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    .line 264
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    .line 266
    iput v2, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    .line 268
    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    .line 270
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    .line 272
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    .line 275
    iput-boolean v2, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    .line 49
    iput-object p1, p0, Lcom/netflix/msl/io/LZWInputStream;->in:Ljava/io/InputStream;

    .line 50
    return-void
.end method

.method private decompress([BII)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 144
    move v6, v2

    .line 145
    :goto_0
    if-ge v6, p3, :cond_d

    .line 148
    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    sub-int/2addr v0, v3

    .line 149
    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    sub-int v0, v3, v0

    .line 150
    div-int/lit8 v3, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    .line 154
    new-array v4, v3, [B

    move v0, v2

    .line 156
    :goto_2
    if-ge v0, v3, :cond_3

    .line 157
    iget-object v7, p0, Lcom/netflix/msl/io/LZWInputStream;->in:Ljava/io/InputStream;

    array-length v8, v4

    sub-int/2addr v8, v0

    invoke-virtual {v7, v4, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 158
    if-ne v7, v5, :cond_2

    .line 161
    if-nez v6, :cond_1

    move v0, v5

    .line 255
    :goto_3
    return v0

    :cond_0
    move v0, v2

    .line 150
    goto :goto_1

    :cond_1
    move v0, v6

    .line 162
    goto :goto_3

    .line 164
    :cond_2
    add-int/2addr v0, v7

    .line 165
    goto :goto_2

    .line 168
    :cond_3
    array-length v3, v4

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_4

    aget-byte v7, v4, v0

    .line 169
    iget-object v8, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v3, v2

    move v4, v2

    .line 174
    :goto_5
    iget v0, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    if-ge v3, v0, :cond_6

    .line 176
    iget v0, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    sub-int/2addr v0, v3

    iget v7, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    rsub-int/lit8 v7, v7, 0x8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 177
    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 181
    iget v8, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    shl-int/2addr v0, v8

    .line 182
    and-int/lit16 v0, v0, 0xff

    .line 183
    rsub-int/lit8 v8, v7, 0x8

    ushr-int v8, v0, v8

    .line 187
    add-int v0, v3, v7

    .line 188
    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    add-int/2addr v3, v7

    iput v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    .line 189
    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    const/16 v7, 0x8

    if-ne v3, v7, :cond_5

    .line 190
    iput v2, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    .line 191
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 196
    :cond_5
    and-int/lit16 v3, v8, 0xff

    iget v7, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    sub-int/2addr v7, v0

    shl-int/2addr v3, v7

    or-int/2addr v3, v4

    move v4, v3

    move v3, v0

    .line 197
    goto :goto_5

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 204
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 205
    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    .line 243
    :cond_7
    :goto_6
    array-length v7, v0

    move v4, v6

    move v6, v2

    :goto_7
    if-ge v6, v7, :cond_c

    aget-byte v8, v0, v6

    .line 244
    if-ge v4, p3, :cond_b

    .line 245
    add-int/lit8 v3, v4, 0x1

    add-int/2addr v4, p2

    aput-byte v8, p1, v4

    .line 243
    :goto_8
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto :goto_7

    .line 219
    :cond_8
    if-nez v0, :cond_a

    .line 220
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 221
    iget-object v7, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    aget-byte v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    :goto_9
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    iget-object v7, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 232
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget v7, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    shl-int v7, v1, v7

    if-ne v3, v7, :cond_9

    .line 233
    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    .line 237
    :cond_9
    if-nez v0, :cond_7

    .line 238
    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_6

    .line 223
    :cond_a
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    aget-byte v7, v0, v2

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9

    .line 247
    :cond_b
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_8

    .line 251
    :cond_c
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move v6, v4

    .line 252
    goto/16 :goto_0

    :cond_d
    move v0, v6

    .line 255
    goto/16 :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    .line 68
    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 70
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWInputStream;->close()V

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    return-void
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 77
    iget-boolean v1, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Input stream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 82
    new-array v1, v2, [B

    .line 83
    invoke-direct {p0, v1, v3, v2}, Lcom/netflix/msl/io/LZWInputStream;->decompress([BII)I

    move-result v2

    .line 84
    if-ne v2, v0, :cond_1

    .line 90
    :goto_0
    return v0

    .line 86
    :cond_1
    aget-byte v0, v1, v3

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 98
    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Input stream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-lez p2, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Specified offset cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    if-gez p3, :cond_2

    .line 104
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Specified length cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_3

    .line 106
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Requested length exceeds buffer size at offset."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, p3

    .line 111
    :goto_0
    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 112
    add-int/lit8 v3, p2, 0x1

    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p1, p2

    .line 113
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move p2, v3

    goto :goto_0

    .line 117
    :cond_4
    if-nez v2, :cond_5

    .line 130
    :goto_1
    return p3

    .line 121
    :cond_5
    invoke-direct {p0, p1, p2, v2}, Lcom/netflix/msl/io/LZWInputStream;->decompress([BII)I

    move-result v0

    .line 122
    if-ne v0, v1, :cond_7

    .line 123
    if-ne v2, p3, :cond_6

    move p3, v1

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    sub-int/2addr p3, v2

    goto :goto_1

    .line 127
    :cond_7
    sub-int v0, v2, v0

    .line 130
    sub-int/2addr p3, v0

    goto :goto_1
.end method
