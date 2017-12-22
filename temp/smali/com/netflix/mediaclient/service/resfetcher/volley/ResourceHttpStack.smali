.class public Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "ResourceHttpStack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_resourcefetcher"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p2, p3}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->useAndroidHttpStack(Landroid/content/Context;)Z

    move-result v1

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
    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/volley/toolbox/HurlStack;->openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Lcom/android/volley/Request;->setHttpURLConnection(Ljava/net/HttpURLConnection;)V

    .line 49
    return-object v0
.end method
