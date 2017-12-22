.class public Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "MSLSimplelUrlStack.java"


# static fields
.field protected static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field protected static final TAG:Ljava/lang/String; = "nf_msl_volley"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mTimeoutInMs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;-><init>(Landroid/content/Context;Lcom/android/volley/toolbox/HurlStack$UrlRewriter;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/toolbox/HurlStack$UrlRewriter;I)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;-><init>(Landroid/content/Context;Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;I)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p2, p3}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "If context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;->mContext:Landroid/content/Context;

    .line 77
    iput p4, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;->mTimeoutInMs:I

    .line 78
    return-void
.end method

.method private static entityFromResponse([B)Lorg/apache/http/HttpEntity;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 132
    const-string/jumbo v1, "identity"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 134
    return-object v0
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/util/net/HttpURLConnectionUtils;->createHttpURLConnection(Landroid/content/Context;ZLjava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/volley/toolbox/HurlStack;->openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 109
    invoke-virtual {p2, v0}, Lcom/android/volley/Request;->setHttpURLConnection(Ljava/net/HttpURLConnection;)V

    .line 110
    return-object v0
.end method

.method protected performPostRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->execute(Ljava/util/Map;)[B

    move-result-object v0

    .line 96
    new-instance v1, Lorg/apache/http/ProtocolVersion;

    const-string/jumbo v2, "HTTP"

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 97
    new-instance v2, Lorg/apache/http/message/BasicStatusLine;

    const/16 v3, 0xc8

    const-string/jumbo v4, "OK"

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 98
    new-instance v1, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v1, v2}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 100
    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;->entityFromResponse([B)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 101
    return-object v1
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    .line 83
    instance-of v0, p1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;->performPostRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/volley/toolbox/HurlStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method
