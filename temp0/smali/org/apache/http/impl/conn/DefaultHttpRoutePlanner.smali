.class public Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field protected final schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SchemeRegistry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 80
    return-void
.end method


# virtual methods
.method public determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 9
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Request must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 93
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/conn/params/ConnRouteParams;->getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    .line 95
    .local v3, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 126
    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v4, "route":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_0
    return-object v4

    .line 101
    .end local v4    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_1
    if-nez p1, :cond_2

    .line 102
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Target host must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 106
    :cond_2
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v1

    .line 108
    .local v1, "local":Ljava/net/InetAddress;
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/conn/params/ConnRouteParams;->getDefaultProxy(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 113
    .local v2, "proxy":Lorg/apache/http/HttpHost;
    :try_start_0
    iget-object v7, p0, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 119
    .local v5, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->isLayered()Z

    move-result v6

    .line 121
    .local v6, "secure":Z
    if-nez v2, :cond_3

    .line 122
    new-instance v3, Lorg/apache/http/conn/routing/HttpRoute;

    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v3, p1, v1, v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    .restart local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_1
    move-object v4, v3

    .line 126
    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v4    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_0

    .line 114
    .end local v4    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v5    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .end local v6    # "secure":Z
    .restart local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v7, Lorg/apache/http/HttpException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 124
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    .restart local v5    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v6    # "secure":Z
    :cond_3
    new-instance v3, Lorg/apache/http/conn/routing/HttpRoute;

    .end local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v3, p1, v1, v2, v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    .restart local v3    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_1
.end method
