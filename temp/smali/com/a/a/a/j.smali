.class public final Lcom/a/a/a/j;
.super Lcom/a/a/a/h;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/a/h;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 4

    iget-object v0, p0, Lcom/a/a/a/j;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/j;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/a/j;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/a/a/a/j;->a:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/a/a/a/j;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/j;->a:[B

    invoke-static {v0}, Lcom/a/a/a/g;->a([B)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in QP stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
