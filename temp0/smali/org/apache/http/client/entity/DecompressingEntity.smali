.class abstract Lorg/apache/http/client/entity/DecompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "DecompressingEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private content:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "wrapped"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lorg/apache/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/apache/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/entity/DecompressingEntity;->getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 76
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/entity/DecompressingEntity;->getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method abstract getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output stream may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 90
    .local v1, "instream":Ljava/io/InputStream;
    const/16 v3, 0x800

    :try_start_0
    new-array v0, v3, [B

    .line 94
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "l":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 95
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "buffer":[B
    .end local v2    # "l":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v0    # "buffer":[B
    .restart local v2    # "l":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 100
    return-void
.end method
