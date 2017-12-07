.class public Lcom/a/a/a/d;
.super Ljava/io/FilterOutputStream;


# static fields
.field private static h:[B

.field private static final i:[C


# instance fields
.field private a:[B

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/a/d;->h:[B

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/a/a/a/d;->i:[C

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    const/16 v2, 0x4c

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput v0, p0, Lcom/a/a/a/d;->b:I

    iput v0, p0, Lcom/a/a/a/d;->d:I

    iput-boolean v0, p0, Lcom/a/a/a/d;->g:Z

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/a/d;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/d;->g:Z

    iput v2, p0, Lcom/a/a/a/d;->e:I

    const/16 v0, 0x39

    iput v0, p0, Lcom/a/a/a/d;->f:I

    iget-boolean v0, p0, Lcom/a/a/a/d;->g:Z

    if-eqz v0, :cond_0

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/a/a/a/d;->c:[B

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x4e

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/a/d;->c:[B

    iget-object v0, p0, Lcom/a/a/a/d;->c:[B

    const/16 v1, 0xd

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/a/a/a/d;->c:[B

    const/16 v1, 0x4d

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/a/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/a/a/a/d;->a:[B

    iget v3, p0, Lcom/a/a/a/d;->b:I

    iget-object v4, p0, Lcom/a/a/a/d;->c:[B

    invoke-static {v2, v5, v3, v4}, Lcom/a/a/a/d;->a([BII[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    iget v1, p0, Lcom/a/a/a/d;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/a/d;->d:I

    iget v0, p0, Lcom/a/a/a/d;->d:I

    iget v1, p0, Lcom/a/a/a/d;->e:I

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/a/a/a/d;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/a/a/a/d;->h:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iput v5, p0, Lcom/a/a/a/d;->d:I

    :cond_1
    return-void
.end method

.method private static a([BII[B)[B
    .locals 9

    const/16 v8, 0x3d

    if-nez p3, :cond_3

    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    move v2, p2

    move v3, p1

    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x3

    aput-byte v8, v0, v3

    add-int/lit8 v3, v1, 0x2

    aput-byte v8, v0, v3

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v5, v2, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    shr-int/lit8 v2, v2, 0x6

    add-int/lit8 v1, v1, 0x0

    sget-object v3, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v3, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    add-int/lit8 v5, v1, 0x3

    sget-object v6, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v7, v3, 0x3f

    aget-char v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v5, v1, 0x2

    sget-object v6, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v7, v3, 0x3f

    aget-char v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v7, v3, 0x3f

    aget-char v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v5, v1, 0x0

    sget-object v6, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    add-int/lit8 v2, v2, -0x3

    add-int/lit8 v1, v1, 0x4

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v1, 0x3

    aput-byte v8, v0, v3

    add-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v5, v2, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    shr-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v5, v2, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    shr-int/lit8 v2, v2, 0x6

    add-int/lit8 v1, v1, 0x0

    sget-object v3, Lcom/a/a/a/d;->i:[C

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v3, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_2

    :cond_3
    move-object v0, p3

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a/d;->flush()V

    iget v0, p0, Lcom/a/a/a/d;->d:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/a/d;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/a/a/a/d;->h:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/a/a/a/d;->b:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/d;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/d;->b:I

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/d;->a:[B

    iget v1, p0, Lcom/a/a/a/d;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/d;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/a/a/a/d;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/d;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/a/d;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 7

    monitor-enter p0

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/a/a/a/d;->b:I

    if-eqz v2, :cond_0

    if-lt v1, v0, :cond_4

    :cond_0
    iget v2, p0, Lcom/a/a/a/d;->e:I

    iget v3, p0, Lcom/a/a/a/d;->d:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    add-int v3, v1, v2

    if-ge v3, v0, :cond_2

    add-int/lit8 v3, v2, 0x2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    iget-boolean v4, p0, Lcom/a/a/a/d;->g:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/a/a/a/d;->c:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0xd

    aput-byte v6, v4, v3

    iget-object v3, p0, Lcom/a/a/a/d;->c:[B

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0xa

    aput-byte v6, v3, v5

    move v3, v4

    :cond_1
    iget-object v4, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/a/a/a/d;->c:[B

    invoke-static {p1, v1, v2, v5}, Lcom/a/a/a/d;->a([BII[B)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v2

    const/4 v2, 0x0

    iput v2, p0, Lcom/a/a/a/d;->d:I

    :cond_2
    :goto_1
    iget v2, p0, Lcom/a/a/a/d;->f:I

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_5

    add-int/lit8 v2, v1, 0x3

    if-ge v2, v0, :cond_3

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v2, 0x2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/a/a/a/d;->c:[B

    invoke-static {p1, v1, v2, v5}, Lcom/a/a/a/d;->a([BII[B)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v2

    iget v2, p0, Lcom/a/a/a/d;->d:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/a/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    if-lt v1, v0, :cond_6

    monitor-exit p0

    return-void

    :cond_4
    add-int/lit8 v2, v1, 0x1

    :try_start_1
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/a/a/a/d;->write(I)V

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/a/a/a/d;->out:Ljava/io/OutputStream;

    iget v3, p0, Lcom/a/a/a/d;->f:I

    iget-object v4, p0, Lcom/a/a/a/d;->c:[B

    invoke-static {p1, v1, v3, v4}, Lcom/a/a/a/d;->a([BII[B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget v2, p0, Lcom/a/a/a/d;->f:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_6
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/a/a/a/d;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
