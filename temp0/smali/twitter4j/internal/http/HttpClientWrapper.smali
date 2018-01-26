.class public final Ltwitter4j/internal/http/HttpClientWrapper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5a5f30acf4f34913L


# instance fields
.field private http:Ltwitter4j/internal/http/HttpClient;

.field private httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    .line 64
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-interface {v0}, Ltwitter4j/internal/http/HttpClientWrapperConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    .line 65
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-static {v0}, Ltwitter4j/internal/http/HttpClientFactory;->getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    .line 66
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V
    .locals 1
    .param p1, "wrapperConf"    # Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    .line 58
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientWrapperConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    .line 59
    invoke-static {p1}, Ltwitter4j/internal/http/HttpClientFactory;->getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    .line 60
    return-void
.end method

.method private request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
    .locals 3
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    invoke-interface {v1, p1}, Ltwitter4j/internal/http/HttpClient;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    .line 70
    .local v0, "res":Ltwitter4j/internal/http/HttpResponse;
    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    new-instance v2, Ltwitter4j/internal/http/HttpResponseEvent;

    invoke-direct {v2, p1, v0}, Ltwitter4j/internal/http/HttpResponseEvent;-><init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;)V

    invoke-interface {v1, v2}, Ltwitter4j/internal/http/HttpResponseListener;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V

    .line 73
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 164
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/http/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V
    .locals 0
    .param p1, "listener"    # Ltwitter4j/internal/http/HttpResponseListener;

    .prologue
    .line 77
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    .line 78
    return-void
.end method
