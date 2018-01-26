.class public Lorg/apache/http/impl/client/DefaultRedirectStrategy;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategy.java"

# interfaces
.implements Lorg/apache/http/client/RedirectStrategy;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->log:Lorg/apache/commons/logging/Log;

    .line 68
    return-void
.end method


# virtual methods
.method protected createLocationURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid redirect URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocationURI(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 14
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP response may not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 104
    :cond_0
    const-string v11, "location"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 105
    .local v4, "locationHeader":Lorg/apache/http/Header;
    if-nez v4, :cond_1

    .line 107
    new-instance v11, Lorg/apache/http/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received redirect response "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but no location header"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 111
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "location":Ljava/lang/String;
    iget-object v11, p0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 113
    iget-object v11, p0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->log:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Redirect requested to location \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 116
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->createLocationURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    .line 118
    .local v10, "uri":Ljava/net/URI;
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 121
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {v10}, Ljava/net/URI;->isAbsolute()Z

    move-result v11

    if-nez v11, :cond_5

    .line 122
    const-string v11, "http.protocol.reject-relative-redirect"

    invoke-interface {v5, v11}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 123
    new-instance v11, Lorg/apache/http/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Relative redirect location \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' not allowed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 127
    :cond_3
    const-string v11, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/HttpHost;

    .line 129
    .local v9, "target":Lorg/apache/http/HttpHost;
    if-nez v9, :cond_4

    .line 130
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Target host not available in the HTTP context"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 134
    :cond_4
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 135
    .local v8, "requestURI":Ljava/net/URI;
    const/4 v11, 0x1

    invoke-static {v8, v9, v11}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    .line 136
    .local v1, "absoluteRequestURI":Ljava/net/URI;
    invoke-static {v1, v10}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 142
    .end local v1    # "absoluteRequestURI":Ljava/net/URI;
    .end local v8    # "requestURI":Ljava/net/URI;
    .end local v9    # "target":Lorg/apache/http/HttpHost;
    :cond_5
    const-string v11, "http.protocol.allow-circular-redirects"

    invoke-interface {v5, v11}, Lorg/apache/http/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 144
    const-string v11, "http.protocol.redirect-locations"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/impl/client/RedirectLocations;

    .line 147
    .local v6, "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    if-nez v6, :cond_6

    .line 148
    new-instance v6, Lorg/apache/http/impl/client/RedirectLocations;

    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    invoke-direct {v6}, Lorg/apache/http/impl/client/RedirectLocations;-><init>()V

    .line 149
    .restart local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    const-string v11, "http.protocol.redirect-locations"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :cond_6
    invoke-virtual {v10}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 155
    :try_start_1
    new-instance v9, Lorg/apache/http/HttpHost;

    invoke-virtual {v10}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/net/URI;->getPort()I

    move-result v12

    invoke-virtual {v10}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    .restart local v9    # "target":Lorg/apache/http/HttpHost;
    const/4 v11, 0x1

    invoke-static {v10, v9, v11}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 167
    .end local v9    # "target":Lorg/apache/http/HttpHost;
    .local v7, "redirectURI":Ljava/net/URI;
    :goto_0
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 168
    new-instance v11, Lorg/apache/http/client/CircularRedirectException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Circular redirect to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 137
    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    .restart local v9    # "target":Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "ex":Ljava/net/URISyntaxException;
    new-instance v11, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 160
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .end local v9    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    :catch_1
    move-exception v2

    .line 161
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v11, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 164
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    :cond_7
    move-object v7, v10

    .restart local v7    # "redirectURI":Ljava/net/URI;
    goto :goto_0

    .line 171
    :cond_8
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    .line 175
    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    :cond_9
    return-object v10
.end method

.method public getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->getLocationURI(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 194
    .local v1, "uri":Ljava/net/URI;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "method":Ljava/lang/String;
    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    new-instance v2, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    .line 198
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method public isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    if-nez p2, :cond_0

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HTTP response may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 79
    .local v2, "statusCode":I
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "method":Ljava/lang/String;
    const-string v5, "location"

    invoke-interface {p2, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 81
    .local v0, "locationHeader":Lorg/apache/http/Header;
    packed-switch v2, :pswitch_data_0

    .line 92
    :cond_1
    :goto_0
    :pswitch_0
    return v3

    .line 83
    :pswitch_1
    const-string v5, "GET"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "HEAD"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    if-eqz v0, :cond_1

    move v3, v4

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v5, "GET"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "HEAD"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move v3, v4

    goto :goto_0

    :pswitch_3
    move v3, v4

    .line 90
    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
