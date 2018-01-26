.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 66
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 67
    return-void
.end method

.method private handleAsIdempotent(Lorg/apache/http/HttpRequest;)Z
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 146
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 6
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Exception parameter may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    if-nez p3, :cond_1

    .line 87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HTTP context may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_1
    iget v5, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    if-le p2, v5, :cond_3

    .line 127
    :cond_2
    :goto_0
    return v3

    .line 93
    :cond_3
    instance-of v5, p1, Ljava/io/InterruptedIOException;

    if-nez v5, :cond_2

    .line 97
    instance-of v5, p1, Ljava/net/UnknownHostException;

    if-nez v5, :cond_2

    .line 101
    instance-of v5, p1, Ljava/net/ConnectException;

    if-nez v5, :cond_2

    .line 105
    instance-of v5, p1, Ljavax/net/ssl/SSLException;

    if-nez v5, :cond_2

    .line 110
    const-string v5, "http.request"

    invoke-interface {p3, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    .line 112
    .local v1, "request":Lorg/apache/http/HttpRequest;
    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->handleAsIdempotent(Lorg/apache/http/HttpRequest;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 114
    goto :goto_0

    .line 117
    :cond_4
    const-string v5, "http.request_sent"

    invoke-interface {p3, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 119
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v4

    .line 121
    .local v2, "sent":Z
    :goto_1
    if-eqz v2, :cond_5

    iget-boolean v5, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v5, :cond_2

    :cond_5
    move v3, v4

    .line 124
    goto :goto_0

    .end local v2    # "sent":Z
    :cond_6
    move v2, v3

    .line 119
    goto :goto_1
.end method
