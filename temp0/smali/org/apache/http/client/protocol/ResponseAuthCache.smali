.class public Lorg/apache/http/client/protocol/ResponseAuthCache;
.super Ljava/lang/Object;
.source "ResponseAuthCache.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/ResponseAuthCache;->log:Lorg/apache/commons/logging/Log;

    .line 62
    return-void
.end method

.method private cache(Lorg/apache/http/client/AuthCache;Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthState;)V
    .locals 4
    .param p1, "authCache"    # Lorg/apache/http/client/AuthCache;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "authState"    # Lorg/apache/http/auth/AuthState;

    .prologue
    .line 110
    invoke-virtual {p3}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 111
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    invoke-virtual {p3}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p3}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lorg/apache/http/client/protocol/ResponseAuthCache;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/apache/http/client/protocol/ResponseAuthCache;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-interface {p1, p2, v0}, Lorg/apache/http/client/AuthCache;->put(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-interface {p1, p2}, Lorg/apache/http/client/AuthCache;->remove(Lorg/apache/http/HttpHost;)V

    goto :goto_0
.end method

.method private isCachable(Lorg/apache/http/auth/AuthState;)Z
    .locals 4
    .param p1, "authState"    # Lorg/apache/http/auth/AuthState;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 101
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 104
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "schemeName":Ljava/lang/String;
    const-string v3, "Basic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Digest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP request may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP context may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_1
    const-string v5, "http.auth.auth-cache"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/AuthCache;

    .line 74
    .local v0, "authCache":Lorg/apache/http/client/AuthCache;
    const-string v5, "http.target_host"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpHost;

    .line 75
    .local v3, "target":Lorg/apache/http/HttpHost;
    const-string v5, "http.auth.target-scope"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/auth/AuthState;

    .line 76
    .local v4, "targetState":Lorg/apache/http/auth/AuthState;
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 77
    invoke-direct {p0, v4}, Lorg/apache/http/client/protocol/ResponseAuthCache;->isCachable(Lorg/apache/http/auth/AuthState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lorg/apache/http/impl/client/BasicAuthCache;

    .end local v0    # "authCache":Lorg/apache/http/client/AuthCache;
    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicAuthCache;-><init>()V

    .line 80
    .restart local v0    # "authCache":Lorg/apache/http/client/AuthCache;
    const-string v5, "http.auth.auth-cache"

    invoke-interface {p2, v5, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :cond_2
    invoke-direct {p0, v0, v3, v4}, Lorg/apache/http/client/protocol/ResponseAuthCache;->cache(Lorg/apache/http/client/AuthCache;Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthState;)V

    .line 86
    :cond_3
    const-string v5, "http.proxy_host"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    .line 87
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    const-string v5, "http.auth.proxy-scope"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/auth/AuthState;

    .line 88
    .local v2, "proxyState":Lorg/apache/http/auth/AuthState;
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 89
    invoke-direct {p0, v2}, Lorg/apache/http/client/protocol/ResponseAuthCache;->isCachable(Lorg/apache/http/auth/AuthState;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 90
    if-nez v0, :cond_4

    .line 91
    new-instance v0, Lorg/apache/http/impl/client/BasicAuthCache;

    .end local v0    # "authCache":Lorg/apache/http/client/AuthCache;
    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicAuthCache;-><init>()V

    .line 92
    .restart local v0    # "authCache":Lorg/apache/http/client/AuthCache;
    const-string v5, "http.auth.auth-cache"

    invoke-interface {p2, v5, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_4
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/client/protocol/ResponseAuthCache;->cache(Lorg/apache/http/client/AuthCache;Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthState;)V

    .line 97
    :cond_5
    return-void
.end method
