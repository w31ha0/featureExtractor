.class public Lcom/netflix/msl/io/LZWOutputStream;
.super Ljava/io/OutputStream;
.source "LZWOutputStream.java"


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final INITIAL_DICTIONARY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/io/LZWOutputStream$Key;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_BUFFER_SIZE:I = 0x64


# instance fields
.field private bits:I

.field private final buffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/msl/io/LZWOutputStream$Code;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private final dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/io/LZWOutputStream$Key;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private finish:Z

.field private final out:Ljava/io/OutputStream;

.field private final symbols:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v1, 0x0

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/netflix/msl/io/LZWOutputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    move v0, v1

    .line 113
    :goto_0
    if-ge v0, v5, :cond_0

    .line 114
    const/4 v2, 0x1

    new-array v2, v2, [B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 115
    new-instance v3, Lcom/netflix/msl/io/LZWOutputStream$Key;

    invoke-direct {v3, v2}, Lcom/netflix/msl/io/LZWOutputStream$Key;-><init>([B)V

    .line 116
    sget-object v2, Lcom/netflix/msl/io/LZWOutputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 341
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/netflix/msl/io/LZWOutputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    .line 344
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    .line 346
    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    .line 348
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    .line 351
    iput-boolean v2, p0, Lcom/netflix/msl/io/LZWOutputStream;->finish:Z

    .line 353
    iput-boolean v2, p0, Lcom/netflix/msl/io/LZWOutputStream;->closed:Z

    .line 126
    iput-object p1, p0, Lcom/netflix/msl/io/LZWOutputStream;->out:Ljava/io/OutputStream;

    .line 127
    return-void
.end method

.method private static codesToBytes(Ljava/util/LinkedList;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/msl/io/LZWOutputStream$Code;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 278
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v3, v4

    .line 281
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 283
    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/io/LZWOutputStream$Code;

    .line 284
    iget v5, v0, Lcom/netflix/msl/io/LZWOutputStream$Code;->bits:I

    .line 285
    :cond_1
    :goto_0
    if-lez v5, :cond_0

    .line 289
    if-le v5, v1, :cond_2

    .line 290
    iget v7, v0, Lcom/netflix/msl/io/LZWOutputStream$Code;->value:I

    .line 291
    sub-int v8, v5, v1

    ushr-int/2addr v7, v8

    .line 292
    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    int-to-byte v3, v3

    .line 295
    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 299
    sub-int v1, v5, v1

    move v5, v1

    move v3, v4

    move v1, v2

    .line 302
    goto :goto_0

    .line 306
    :cond_2
    if-gt v5, v1, :cond_1

    .line 309
    iget v7, v0, Lcom/netflix/msl/io/LZWOutputStream$Code;->value:I

    .line 310
    sub-int v8, v1, v5

    shl-int/2addr v7, v8

    .line 311
    and-int/lit16 v7, v7, 0xff

    .line 312
    rsub-int/lit8 v8, v1, 0x8

    ushr-int/2addr v7, v8

    .line 313
    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    int-to-byte v3, v3

    .line 317
    sub-int/2addr v1, v5

    .line 322
    if-nez v1, :cond_3

    .line 323
    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v3, v4

    :cond_3
    move v5, v4

    .line 327
    goto :goto_0

    .line 333
    :cond_4
    if-ge v1, v2, :cond_5

    .line 334
    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    :cond_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWOutputStream;->finish()V

    .line 145
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->closed:Z

    .line 148
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWOutputStream;->close()V

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->finish:Z

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->finish:Z

    .line 162
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 164
    new-instance v1, Lcom/netflix/msl/io/LZWOutputStream$Key;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/LZWOutputStream$Key;-><init>([B)V

    .line 165
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    iget-object v1, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    new-instance v2, Lcom/netflix/msl/io/LZWOutputStream$Code;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    invoke-direct {v2, v0, v3}, Lcom/netflix/msl/io/LZWOutputStream$Code;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWOutputStream;->flush()V

    .line 170
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move v1, v2

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/io/LZWOutputStream$Code;

    .line 249
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 250
    iget v0, v0, Lcom/netflix/msl/io/LZWOutputStream$Code;->bits:I

    add-int/2addr v0, v1

    .line 254
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v3}, Lcom/netflix/msl/io/LZWOutputStream;->codesToBytes(Ljava/util/LinkedList;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 256
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    move v0, v2

    :cond_1
    move v1, v0

    .line 259
    goto :goto_1

    .line 262
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->finish:Z

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v3}, Lcom/netflix/msl/io/LZWOutputStream;->codesToBytes(Ljava/util/LinkedList;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    new-array v0, v3, [B

    .line 178
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 179
    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/msl/io/LZWOutputStream;->write([BII)V

    .line 180
    return-void
.end method

.method public write([BII)V
    .locals 7

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Output stream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    if-gez p2, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    if-gez p3, :cond_2

    .line 193
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Length cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 195
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Offset plus length cannot be greater than the array length."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, p2

    .line 197
    :goto_0
    add-int v0, p2, p3

    if-ge v1, v0, :cond_6

    .line 199
    aget-byte v2, p1, v1

    .line 200
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 204
    new-instance v4, Lcom/netflix/msl/io/LZWOutputStream$Key;

    invoke-direct {v4, v3}, Lcom/netflix/msl/io/LZWOutputStream$Key;-><init>([B)V

    .line 205
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 208
    if-nez v0, :cond_5

    .line 210
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 211
    new-instance v3, Lcom/netflix/msl/io/LZWOutputStream$Key;

    invoke-direct {v3, v0}, Lcom/netflix/msl/io/LZWOutputStream$Key;-><init>([B)V

    .line 212
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    iget-object v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    new-instance v5, Lcom/netflix/msl/io/LZWOutputStream$Code;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v6, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    invoke-direct {v5, v0, v6}, Lcom/netflix/msl/io/LZWOutputStream$Code;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 220
    iget v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    shr-int v3, v0, v3

    if-eqz v3, :cond_4

    .line 221
    iget v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    .line 222
    :cond_4
    iget-object v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 226
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_5

    .line 230
    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWOutputStream;->flush()V

    .line 197
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :cond_6
    return-void
.end method
