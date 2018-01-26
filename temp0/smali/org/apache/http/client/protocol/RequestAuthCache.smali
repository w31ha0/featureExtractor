.class public Lorg/apache/http/client/protocol/RequestAuthCache;
.super Ljava/lang/Object;
.source "RequestAuthCache.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


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

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAuthCache;->log:Lorg/apache/commons/logging/Log;

    .line 62
    return-void
.end method

.method private doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 6
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "authScheme"    # Lorg/apache/http/auth/AuthScheme;
    .param p3, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p4, "credsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .prologue
    .line 110
    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "schemeName":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/http/client/protocol/RequestAuthCache;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lorg/apache/http/client/protocol/RequestAuthCache;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-using cached \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' auth scheme for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 115
    :cond_0
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    sget-object v5, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v0, "authScope":Lorg/apache/http/auth/AuthScope;
    invoke-interface {p4, v0}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v1

    .line 119
    .local v1, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p3, p2}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 121
    invoke-virtual {p3, v1}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v3, p0, Lorg/apache/http/client/protocol/RequestAuthCache;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "No credentials for preemptive authentication"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
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
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "HTTP request may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "HTTP context may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 73
    :cond_1
    const-string v7, "http.auth.auth-cache"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/AuthCache;

    .line 74
    .local v0, "authCache":Lorg/apache/http/client/AuthCache;
    if-nez v0, :cond_3

    .line 75
    iget-object v7, p0, Lorg/apache/http/client/protocol/RequestAuthCache;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Auth cache not set in the context"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 103
    :cond_2
    :goto_0
    return-void

    .line 79
    :cond_3
    const-string v7, "http.auth.credentials-provider"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/CredentialsProvider;

    .line 81
    .local v2, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    if-nez v2, :cond_4

    .line 82
    iget-object v7, p0, Lorg/apache/http/client/protocol/RequestAuthCache;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Credentials provider not set in the context"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_4
    const-string v7, "http.target_host"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/HttpHost;

    .line 87
    .local v5, "target":Lorg/apache/http/HttpHost;
    const-string v7, "http.auth.target-scope"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/auth/AuthState;

    .line 88
    .local v6, "targetState":Lorg/apache/http/auth/AuthState;
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v7

    if-nez v7, :cond_5

    .line 89
    invoke-interface {v0, v5}, Lorg/apache/http/client/AuthCache;->get(Lorg/apache/http/HttpHost;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    .line 90
    .local v1, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v1, :cond_5

    .line 91
    invoke-direct {p0, v5, v1, v6, v2}, Lorg/apache/http/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/CredentialsProvider;)V

    .line 95
    .end local v1    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    :cond_5
    const-string v7, "http.proxy_host"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpHost;

    .line 96
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    const-string v7, "http.auth.proxy-scope"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/auth/AuthState;

    .line 97
    .local v4, "proxyState":Lorg/apache/http/auth/AuthState;
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v7

    if-nez v7, :cond_2

    .line 98
    invoke-interface {v0, v3}, Lorg/apache/http/client/AuthCache;->get(Lorg/apache/http/HttpHost;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    .line 99
    .restart local v1    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v1, :cond_2

    .line 100
    invoke-direct {p0, v3, v1, v4, v2}, Lorg/apache/http/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/CredentialsProvider;)V

    goto :goto_0
.end method
