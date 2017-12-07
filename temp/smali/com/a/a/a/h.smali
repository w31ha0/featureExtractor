.class public Lcom/a/a/a/h;
.super Ljava/io/FilterInputStream;


# instance fields
.field protected a:[B

.field private b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x2

    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/a/a/a/h;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/h;->b:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, -0x1

    const/16 v2, 0x20

    iget v0, p0, Lcom/a/a/a/h;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/a/a/a/h;->b:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/a/a/a/h;->b:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_3

    :cond_1
    iput v5, p0, Lcom/a/a/a/h;->b:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/a/a/a/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/h;->b:I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    check-cast p0, Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v0, 0x3d

    if-ne v1, v0, :cond_9

    iget-object v0, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/a/a/a/h;->read()I

    move-result v0

    goto :goto_0

    :cond_5
    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v4, :cond_6

    iget-object v0, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/a/a/a/h;->read()I

    move-result v0

    goto :goto_0

    :cond_7
    if-ne v0, v3, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/a/a/a/h;->a:[B

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    iget-object v0, p0, Lcom/a/a/a/h;->a:[B

    iget-object v2, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/h;->a:[B

    invoke-static {v0}, Lcom/a/a/a/g;->a([B)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/a/a/a/h;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lcom/a/a/a/h;->a:[B

    invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->unread([B)V

    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/h;->read()I

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
