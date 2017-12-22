.class Lcom/netflix/falkor/cache/lru/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_1
    if-gez p2, :cond_2

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    sget-object v0, Lcom/netflix/falkor/cache/lru/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    iput-object p1, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->in:Ljava/io/InputStream;

    .line 100
    iput-object p3, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 101
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/falkor/cache/lru/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/falkor/cache/lru/StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    iget-object v2, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 194
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 195
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 197
    :cond_0
    iput v3, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    .line 198
    iput v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->end:I

    .line 199
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    .line 114
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 116
    :cond_0
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasUnterminatedLine()Z
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0xa

    .line 128
    iget-object v3, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v3

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 136
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    iget v1, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->end:I

    if-lt v0, v1, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->fillBuf()V

    .line 140
    :cond_1
    iget v2, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    :goto_0
    iget v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->end:I

    if-eq v2, v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    aget-byte v0, v0, v2

    if-ne v0, v7, :cond_3

    .line 142
    iget v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    .line 143
    :goto_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    iget v5, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    iget v6, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 144
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    .line 145
    monitor-exit v3

    .line 176
    :goto_2
    return-object v0

    :cond_2
    move v1, v2

    .line 142
    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_4
    new-instance v2, Lcom/netflix/falkor/cache/lru/StrictLineReader$1;

    iget v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->end:I

    iget v1, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v2, p0, v0}, Lcom/netflix/falkor/cache/lru/StrictLineReader$1;-><init>(Lcom/netflix/falkor/cache/lru/StrictLineReader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    const/4 v1, 0x0

    .line 165
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    iget v5, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->end:I

    iget v6, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->end:I

    .line 168
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->fillBuf()V

    .line 170
    iget v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    :goto_3
    iget v4, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->end:I

    if-eq v0, v4, :cond_5

    .line 171
    iget-object v4, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v7, :cond_9

    .line 172
    iget v4, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_6

    .line 173
    iget-object v4, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->buf:[B

    iget v5, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    iget v6, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    sub-int v6, v0, v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 175
    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/falkor/cache/lru/StrictLineReader;->pos:I

    .line 176
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 180
    if-eqz v2, :cond_7

    if-eqz v1, :cond_8

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_4
    :try_start_4
    monitor-exit v3

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 170
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 149
    :catch_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 180
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_5
    if-eqz v2, :cond_a

    if-eqz v1, :cond_b

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    :goto_6
    :try_start_7
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5
.end method
