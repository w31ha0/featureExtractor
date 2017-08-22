.class public Lcom/mopub/common/util/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 12
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to copy from or to a null stream."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_1
    const/16 v2, 0x4000

    new-array v0, v2, [B

    .line 18
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "length":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 19
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 21
    :cond_2
    return-void
.end method

.method public static copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "maxBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 25
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to copy from or to a null stream."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 28
    :cond_1
    const/16 v4, 0x4000

    new-array v0, v4, [B

    .line 30
    .local v0, "buffer":[B
    const-wide/16 v2, 0x0

    .line 32
    .local v2, "totalRead":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "length":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 33
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 34
    cmp-long v4, v2, p2

    if-ltz v4, :cond_2

    .line 35
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error copying content: attempted to copy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maximum."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 41
    :cond_3
    return-void
.end method

.method public static readStream(Ljava/io/InputStream;[B)V
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "offset":I
    const/4 v0, 0x0

    .line 46
    .local v0, "bytesRead":I
    array-length v1, p1

    .line 47
    .local v1, "maxBytes":I
    :cond_0
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 48
    add-int/2addr v2, v0

    .line 49
    sub-int/2addr v1, v0

    .line 50
    if-gtz v1, :cond_0

    .line 54
    :cond_1
    return-void
.end method
