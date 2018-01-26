.class public Lorg/apache/http/client/protocol/RequestTargetAuthentication;
.super Ljava/lang/Object;
.source "RequestTargetAuthentication.java"

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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/apache/commons/logging/Log;

    .line 61
    return-void
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
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "HTTP request may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "HTTP context may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "method":Ljava/lang/String;
    const-string v6, "CONNECT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    const-string v6, "Authorization"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 83
    const-string v6, "http.auth.target-scope"

    invoke-interface {p2, v6}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/auth/AuthState;

    .line 85
    .local v1, "authState":Lorg/apache/http/auth/AuthState;
    if-nez v1, :cond_4

    .line 86
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Target auth state not set in the context"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 91
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 96
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_5

    .line 97
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "User credentials not available"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v6

    if-nez v6, :cond_2

    .line 104
    :cond_6
    :try_start_0
    instance-of v6, v0, Lorg/apache/http/auth/ContextAwareAuthScheme;

    if-eqz v6, :cond_7

    .line 105
    check-cast v0, Lorg/apache/http/auth/ContextAwareAuthScheme;

    .end local v0    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    invoke-interface {v0, v2, p1, p2}, Lorg/apache/http/auth/ContextAwareAuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v4

    .line 110
    .local v4, "header":Lorg/apache/http/Header;
    :goto_1
    invoke-interface {p1, v4}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v4    # "header":Lorg/apache/http/Header;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "ex":Lorg/apache/http/auth/AuthenticationException;
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestTargetAuthentication;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authentication error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    .end local v3    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .restart local v0    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    :cond_7
    :try_start_1
    invoke-interface {v0, v2, p1}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4    # "header":Lorg/apache/http/Header;
    goto :goto_1
.end method
