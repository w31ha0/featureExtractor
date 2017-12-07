.class public final Lcom/a/a/a/b;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final h:[C

.field private static final i:[B


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/a/b;->h:[C

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/a/a/a/b;->i:[B

    move v0, v3

    :goto_0
    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    move v0, v3

    :goto_1
    sget-object v1, Lcom/a/a/a/b;->h:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    sget-object v1, Lcom/a/a/a/b;->i:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/a/a/a/b;->i:[B

    sget-object v2, Lcom/a/a/a/b;->h:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :array_0
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

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/a/b;->a:[B

    iput v2, p0, Lcom/a/a/a/b;->b:I

    iput v2, p0, Lcom/a/a/a/b;->c:I

    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/a/b;->d:[B

    iput v2, p0, Lcom/a/a/a/b;->e:I

    iput v2, p0, Lcom/a/a/a/b;->f:I

    iput-boolean v2, p0, Lcom/a/a/a/b;->g:Z

    :try_start_0
    const-string v0, "mail.mime.base64.ignoreerrors"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/a/a/a/b;->g:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a()I
    .locals 4

    const/4 v3, -0x1

    :cond_0
    iget v0, p0, Lcom/a/a/a/b;->e:I

    iget v1, p0, Lcom/a/a/a/b;->f:I

    if-lt v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/b;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/a/a/a/b;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/b;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/a/a/a/b;->f:I

    if-gtz v0, :cond_1

    move v0, v3

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/b;->e:I

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/b;->d:[B

    iget v1, p0, Lcom/a/a/a/b;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/b;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_3

    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/a/a/a/b;->i:[B

    aget-byte v0, v1, v0

    if-eq v0, v3, :cond_0

    goto :goto_0
.end method

.method private a([BII)I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v0, p3

    move v1, p2

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    sub-int v0, v1, p2

    :goto_1
    return v0

    :cond_0
    move v2, v5

    move v3, v5

    :goto_2
    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, -0x3

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/b;->a()I

    move-result v4

    if-eq v4, v6, :cond_2

    if-ne v4, v8, :cond_d

    :cond_2
    if-ne v4, v6, :cond_7

    if-nez v3, :cond_3

    sub-int v0, v1, p2

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/a/a/a/b;->g:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before EOF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v7

    :goto_3
    sub-int v4, v3, v7

    if-nez v4, :cond_5

    move v4, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x6

    :goto_4
    const/4 v5, 0x4

    if-lt v3, v5, :cond_a

    shr-int/lit8 v0, v2, 0x8

    if-ne v4, v9, :cond_6

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    :cond_6
    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    add-int v0, v1, v4

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_7
    if-ge v3, v9, :cond_8

    iget-boolean v0, p0, Lcom/a/a/a/b;->g:Z

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before padding character (=)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v3, :cond_9

    sub-int v0, v1, p2

    goto/16 :goto_1

    :cond_9
    move v0, v5

    goto :goto_3

    :cond_a
    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/a/a/a/b;->a()I

    move-result v5

    if-ne v5, v6, :cond_b

    iget-boolean v5, p0, Lcom/a/a/a/b;->g:Z

    if-nez v5, :cond_c

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eq v5, v8, :cond_c

    iget-boolean v5, p0, Lcom/a/a/a/b;->g:Z

    if-nez v5, :cond_c

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_d
    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v4

    goto/16 :goto_2
.end method

.method private b()Ljava/lang/String;
    .locals 5

    const/16 v2, 0xa

    const-string v0, ""

    iget v1, p0, Lcom/a/a/a/b;->e:I

    if-le v1, v2, :cond_1

    move v1, v2

    :goto_0
    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", the "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " most recent characters were: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/a/a/a/b;->e:I

    sub-int v1, v2, v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    iget v2, p0, Lcom/a/a/a/b;->e:I

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/a/a/a/b;->e:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/a/a/a/b;->d:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final available()I
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/a/a/a/b;->b:I

    iget v2, p0, Lcom/a/a/a/b;->c:I

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
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/a/a/a/b;->c:I

    iget v1, p0, Lcom/a/a/a/b;->b:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    iget-object v1, p0, Lcom/a/a/a/b;->a:[B

    array-length v1, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/a/a/a/b;->a([BII)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/b;->b:I

    iget v0, p0, Lcom/a/a/a/b;->b:I

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iput v2, p0, Lcom/a/a/a/b;->c:I

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    iget v1, p0, Lcom/a/a/a/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/b;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 7

    const/4 v6, -0x1

    move v0, p3

    move v1, p2

    :goto_0
    iget v2, p0, Lcom/a/a/a/b;->c:I

    iget v3, p0, Lcom/a/a/a/b;->b:I

    if-ge v2, v3, :cond_0

    if-gtz v0, :cond_2

    :cond_0
    iget v2, p0, Lcom/a/a/a/b;->c:I

    iget v3, p0, Lcom/a/a/a/b;->b:I

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/a/a/a/b;->c:I

    iput v2, p0, Lcom/a/a/a/b;->b:I

    :cond_1
    div-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x3

    if-lez v2, :cond_5

    invoke-direct {p0, p1, v1, v2}, Lcom/a/a/a/b;->a([BII)I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v3

    if-eq v3, v2, :cond_5

    if-ne v1, p2, :cond_3

    move v0, v6

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/a/a/a/b;->a:[B

    iget v4, p0, Lcom/a/a/a/b;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/a/a/a/b;->c:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v1

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_0

    :cond_3
    sub-int v0, v1, p2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/a/a/a/b;->read()I

    move-result v2

    if-eq v2, v6, :cond_6

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :cond_5
    if-gtz v0, :cond_4

    :cond_6
    if-ne v1, p2, :cond_7

    move v0, v6

    goto :goto_1

    :cond_7
    sub-int v0, v1, p2

    goto :goto_1
.end method
