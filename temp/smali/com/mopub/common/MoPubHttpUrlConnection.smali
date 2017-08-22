.class public abstract Lcom/mopub/common/MoPubHttpUrlConnection;
.super Ljava/net/HttpURLConnection;
.source "MoPubHttpUrlConnection.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final READ_TIMEOUT:I = 0x2710


# direct methods
.method private constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 22
    return-void
.end method

.method static encodeUrl(Ljava/lang/String;)Ljava/net/URI;
    .locals 10
    .param p0, "urlString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    .local v9, "url":Ljava/net/URL;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 112
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .local v0, "uri":Ljava/net/URI;
    return-object v0

    .line 113
    .end local v0    # "uri":Ljava/net/URI;
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 114
    .local v8, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encode url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 115
    throw v8
.end method

.method public static getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2710

    .line 26
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->isUrlImproperlyEncoded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL is improperly encoded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    .local v1, "getUrl":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 45
    .local v2, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v3, "User-Agent"

    invoke-static {}, Lcom/mopub/network/Networking;->getCachedUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 47
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 49
    return-object v2

    .line 39
    .end local v1    # "getUrl":Ljava/lang/String;
    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, p0

    .restart local v1    # "getUrl":Ljava/lang/String;
    goto :goto_0
.end method

.method static isUrlImproperlyEncoded(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Url is improperly encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static isUrlUnencoded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/net/URISyntaxException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->isUrlImproperlyEncoded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL is improperly encoded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->isUrlUnencoded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->encodeUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 74
    .local v0, "uri":Ljava/net/URI;
    :goto_0
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    .end local v0    # "uri":Ljava/net/URI;
    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .restart local v0    # "uri":Ljava/net/URI;
    goto :goto_0
.end method
