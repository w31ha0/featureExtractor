.class public Lcom/mopub/common/DownloadResponse;
.super Ljava/lang/Object;
.source "DownloadResponse.java"


# instance fields
.field private mBytes:[B

.field private final mContentLength:J

.field private final mHeaders:[Lorg/apache/http/Header;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v4, 0x0

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/mopub/common/DownloadResponse;->mBytes:[B

    .line 20
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 23
    .local v1, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 24
    .local v0, "httpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 25
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .end local v1    # "inputStream":Ljava/io/BufferedInputStream;
    .local v2, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v2, v3}, Lcom/mopub/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 27
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/DownloadResponse;->mBytes:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 30
    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "inputStream":Ljava/io/BufferedInputStream;
    :cond_0
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 34
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    iput v4, p0, Lcom/mopub/common/DownloadResponse;->mStatusCode:I

    .line 35
    iget-object v4, p0, Lcom/mopub/common/DownloadResponse;->mBytes:[B

    array-length v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/mopub/common/DownloadResponse;->mContentLength:J

    .line 36
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/DownloadResponse;->mHeaders:[Lorg/apache/http/Header;

    .line 37
    return-void

    .line 30
    .end local v0    # "httpEntity":Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v4

    :goto_0
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v4

    .line 30
    .end local v1    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "inputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_0
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mopub/common/DownloadResponse;->mBytes:[B

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/mopub/common/DownloadResponse;->mContentLength:J

    return-wide v0
.end method

.method public getFirstHeader(Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 6
    .param p1, "responseHeader"    # Lcom/mopub/common/util/ResponseHeader;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/mopub/common/DownloadResponse;->mHeaders:[Lorg/apache/http/Header;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 53
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 57
    .end local v0    # "header":Lorg/apache/http/Header;
    :goto_1
    return-object v1

    .line 52
    .restart local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/mopub/common/DownloadResponse;->mStatusCode:I

    return v0
.end method
