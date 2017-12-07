.class public final Lcom/a/a/a/c;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/a/a/a/a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Lcom/a/a/a/c;->d:I

    iput v0, p0, Lcom/a/a/a/c;->e:I

    iput-boolean v0, p0, Lcom/a/a/a/c;->f:Z

    iput-boolean v0, p0, Lcom/a/a/a/c;->g:Z

    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0, p1}, Lcom/a/a/a/a;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/a/a/a/c;->h:Lcom/a/a/a/a;

    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/a/c;->c:[B

    return-void
.end method

.method private a()Z
    .locals 10

    const/4 v5, 0x3

    const/16 v9, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/a/a/a/c;->g:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iput v2, p0, Lcom/a/a/a/c;->d:I

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c;->h:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Lcom/a/a/a/c;->g:Z

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v9, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer format error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sub-int/2addr v3, v9

    and-int/lit8 v3, v3, 0x3f

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/a/a/a/c;->h:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-boolean v1, p0, Lcom/a/a/a/c;->g:Z

    move v0, v2

    goto :goto_0

    :cond_7
    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    if-ge v4, v2, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short buffer error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, v1

    :goto_1
    iget v4, p0, Lcom/a/a/a/c;->d:I

    if-lt v4, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v9

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    iget-object v6, p0, Lcom/a/a/a/c;->c:[B

    iget v7, p0, Lcom/a/a/a/c;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/a/a/a/c;->d:I

    shl-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xfc

    ushr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    iget v2, p0, Lcom/a/a/a/c;->d:I

    if-ge v2, v3, :cond_b

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v9

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    iget-object v6, p0, Lcom/a/a/a/c;->c:[B

    iget v7, p0, Lcom/a/a/a/c;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/a/a/a/c;->d:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v8, v5, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    move v4, v2

    move v2, v5

    :goto_2
    iget v5, p0, Lcom/a/a/a/c;->d:I

    if-ge v5, v3, :cond_a

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    iget-object v6, p0, Lcom/a/a/a/c;->c:[B

    iget v7, p0, Lcom/a/a/a/c;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/a/a/a/c;->d:I

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0xc0

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    move v2, v5

    goto :goto_1

    :cond_a
    move v2, v4

    goto :goto_1

    :cond_b
    move v2, v4

    move v4, v5

    goto :goto_2
.end method


# virtual methods
.method public final available()I
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/c;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/a/a/a/c;->d:I

    iget v2, p0, Lcom/a/a/a/c;->e:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/a/a/a/c;->e:I

    iget v3, p0, Lcom/a/a/a/c;->d:I

    if-lt v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/a/a/a/c;->f:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c;->h:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "UUDecoder error: No Begin"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v3, "begin"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/a/a/a/c;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/a/a/a/c;->f:Z

    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput v2, p0, Lcom/a/a/a/c;->e:I

    :cond_4
    iget-object v0, p0, Lcom/a/a/a/c;->c:[B

    iget v1, p0, Lcom/a/a/a/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/c;->read()I

    move-result v1

    if-ne v1, v3, :cond_2

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    add-int v2, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
