.class public Lio/fabric/sdk/android/services/network/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;,
        Lio/fabric/sdk/android/services/network/HttpRequest$FlushOperation;,
        Lio/fabric/sdk/android/services/network/HttpRequest$CloseOperation;,
        Lio/fabric/sdk/android/services/network/HttpRequest$Operation;,
        Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;,
        Lio/fabric/sdk/android/services/network/HttpRequest$Base64;,
        Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory; = null

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"


# instance fields
.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private form:Z

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

.field private final requestMethod:Ljava/lang/String;

.field private uncompress:Z

.field public final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/fabric/sdk/android/services/network/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 323
    sget-object v0, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;->DEFAULT:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    sput-object v0, Lio/fabric/sdk/android/services/network/HttpRequest;->CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/CharSequence;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    const/4 v1, 0x0

    iput-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    .line 1251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->uncompress:Z

    .line 1253
    const/16 v1, 0x2000

    iput v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    .line 1268
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    iput-object p2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 1273
    return-void

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    const/4 v0, 0x0

    iput-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->uncompress:Z

    .line 1253
    const/16 v0, 0x2000

    iput v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    .line 1283
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->url:Ljava/net/URL;

    .line 1284
    iput-object p2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 1285
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/fabric/sdk/android/services/network/HttpRequest;)I
    .locals 1
    .param p0, "x0"    # Lio/fabric/sdk/android/services/network/HttpRequest;

    .prologue
    .line 103
    iget v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    return v0
.end method

.method private static addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x3f

    const/16 v3, 0x26

    .line 282
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 283
    .local v1, "queryStart":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 284
    .local v0, "lastChar":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 285
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    :goto_0
    return-object p1

    .line 286
    :cond_1
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    .line 287
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2f

    .line 275
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/16 v6, 0x3d

    .line 754
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 783
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 758
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/network/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/network/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 765
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 766
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 767
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 770
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 771
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 774
    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 776
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 778
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 779
    if-eqz v4, :cond_2

    .line 780
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 783
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/CharSequence;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/16 v5, 0x3d

    .line 797
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 825
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 801
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    array-length v4, p1

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 802
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must specify an even number of parameter names/values"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 804
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 807
    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 810
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    const/4 v4, 0x1

    aget-object v3, p1, v4

    .line 813
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 814
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 816
    :cond_3
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 817
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    add-int/lit8 v4, v1, 0x1

    aget-object v3, p1, v4

    .line 821
    if-eqz v3, :cond_4

    .line 822
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 816
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 825
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .locals 5

    .prologue
    .line 1294
    :try_start_0
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1295
    sget-object v2, Lio/fabric/sdk/android/services/network/HttpRequest;->CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    iget-object v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->url:Ljava/net/URL;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->createProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1298
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :goto_0
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1299
    return-object v0

    .line 1297
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    sget-object v2, Lio/fabric/sdk/android/services/network/HttpRequest;->CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    iget-object v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->url:Ljava/net/URL;

    invoke-interface {v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 1300
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 1301
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method private createProxy()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 1288
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->httpProxyHost:Ljava/lang/String;

    iget v4, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->httpProxyPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1004
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1031
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->delete(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs delete(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1048
    invoke-static {p0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->delete(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static delete(Ljava/net/URL;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1015
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 719
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .local v10, "parsed":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v11

    .line 726
    .local v11, "port":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 730
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    .line 731
    .local v7, "encoded":Ljava/lang/String;
    const/16 v0, 0x3f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 732
    .local v9, "paramsStart":I
    if-lez v9, :cond_1

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "+"

    const-string v4, "%2B"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 735
    :cond_1
    return-object v7

    .line 720
    .end local v2    # "host":Ljava/lang/String;
    .end local v7    # "encoded":Ljava/lang/String;
    .end local v9    # "paramsStart":I
    .end local v10    # "parsed":Ljava/net/URL;
    .end local v11    # "port":I
    :catch_0
    move-exception v6

    .line 721
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v0, v6}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 736
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v10    # "parsed":Ljava/net/URL;
    .restart local v11    # "port":I
    :catch_1
    move-exception v6

    .line 737
    .local v6, "e":Ljava/net/URISyntaxException;
    new-instance v8, Ljava/io/IOException;

    const-string v0, "Parsing URI failed"

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 738
    .local v8, "io":Ljava/io/IOException;
    invoke-virtual {v8, v6}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 739
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v0, v8}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 836
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->get(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs get(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 880
    invoke-static {p0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->get(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/net/URL;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 847
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    .end local p0    # "charset":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "charset":Ljava/lang/String;
    :cond_0
    const-string p0, "UTF-8"

    goto :goto_0
.end method

.method public static head(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1060
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1087
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->head(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs head(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1104
    invoke-static {p0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->head(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static head(Ljava/net/URL;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1071
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static keepAlive(Z)V
    .locals 2
    .param p0, "keepAlive"    # Z

    .prologue
    .line 1160
    const-string v0, "http.keepAlive"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1161
    return-void
.end method

.method public static varargs nonProxyHosts([Ljava/lang/String;)V
    .locals 5
    .param p0, "hosts"    # [Ljava/lang/String;

    .prologue
    .line 1198
    if-eqz p0, :cond_1

    array-length v3, p0

    if-lez v3, :cond_1

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1200
    .local v2, "separated":Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1201
    .local v1, "last":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1202
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    const-string v3, "http.nonProxyHosts"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1207
    .end local v0    # "i":I
    .end local v1    # "last":I
    .end local v2    # "separated":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 1206
    :cond_1
    const-string v3, "http.nonProxyHosts"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static options(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1116
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URL;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1127
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 892
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 919
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->post(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs post(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 936
    invoke-static {p0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->post(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static post(Ljava/net/URL;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static proxyHost(Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 1171
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1172
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1173
    return-void
.end method

.method public static proxyPort(I)V
    .locals 2
    .param p0, "port"    # I

    .prologue
    .line 1183
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "portValue":Ljava/lang/String;
    const-string v1, "http.proxyPort"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1185
    const-string v1, "https.proxyPort"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    return-void
.end method

.method public static put(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 948
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 975
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->put(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs put(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 992
    invoke-static {p0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->put(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static put(Ljava/net/URL;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 959
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setConnectionFactory(Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;)V
    .locals 1
    .param p0, "connectionFactory"    # Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    .prologue
    .line 329
    if-nez p0, :cond_0

    .line 330
    sget-object v0, Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;->DEFAULT:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    sput-object v0, Lio/fabric/sdk/android/services/network/HttpRequest;->CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    sput-object p0, Lio/fabric/sdk/android/services/network/HttpRequest;->CONNECTION_FACTORY:Lio/fabric/sdk/android/services/network/HttpRequest$ConnectionFactory;

    goto :goto_0
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1220
    if-eqz p1, :cond_0

    .line 1221
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$1;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    .local v0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    :goto_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1228
    .end local v0    # "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$2;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/network/HttpRequest$2;-><init>(Ljava/lang/String;)V

    .restart local v0    # "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static trace(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1138
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URL;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 2343
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptCharset(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "acceptCharset"    # Ljava/lang/String;

    .prologue
    .line 2134
    const-string v0, "Accept-Charset"

    invoke-virtual {p0, v0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptEncoding(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 2114
    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptGzipEncoding()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1

    .prologue
    .line 2124
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->acceptEncoding(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptJson()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1

    .prologue
    .line 2352
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->accept(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public authorization(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "authorization"    # Ljava/lang/String;

    .prologue
    .line 2216
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public badRequest()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1407
    const/16 v0, 0x190

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public basic(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->authorization(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1564
    .local p1, "output":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1565
    return-object p0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1578
    .local p1, "output":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1579
    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1553
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1539
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1540
    invoke-static {p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1616
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize()I
    .locals 1

    .prologue
    .line 1491
    iget v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    return v0
.end method

.method public bufferSize(I)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 1477
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1479
    :cond_0
    iput p1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    .line 1480
    return-object p0
.end method

.method public bufferedReader()Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1702
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1690
    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v1

    iget v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .prologue
    .line 1520
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->contentLength()I

    move-result v0

    .line 1521
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 1522
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1524
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0
.end method

.method public bytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1599
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1601
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public cacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2170
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2073
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunk(I)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1462
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1463
    return-object p0
.end method

.method protected closeOutput()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2407
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    if-nez v0, :cond_0

    .line 2420
    :goto_0
    return-object p0

    .line 2409
    :cond_0
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->multipart:Z

    if-eqz v0, :cond_1

    .line 2410
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    .line 2411
    :cond_1
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_2

    .line 2413
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2419
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    goto :goto_0

    .line 2418
    :cond_2
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->close()V

    goto :goto_1

    .line 2414
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected closeOutputQuietly()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2432
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutput()Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1351
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1352
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code(Ljava/util/concurrent/atomic/AtomicInteger;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "output"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1366
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1367
    return-object p0
.end method

.method public connectTimeout(I)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 1815
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1816
    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2143
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .locals 1

    .prologue
    .line 2312
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->intHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contentLength(I)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 2332
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 2333
    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 2322
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->contentLength(I)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 2279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 2290
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2291
    const-string v0, "; charset="

    .line 2292
    .local v0, "separator":Ljava/lang/String;
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    .line 2294
    .end local v0    # "separator":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    goto :goto_0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2303
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2364
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$6;

    iget-boolean v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/network/HttpRequest$6;-><init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$6;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object v0
.end method

.method protected copy(Ljava/io/Reader;Ljava/io/Writer;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 6
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2386
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$7;

    iget-boolean v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/network/HttpRequest$7;-><init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$7;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object v0
.end method

.method public created()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1387
    const/16 v0, 0xc9

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public date()J
    .locals 2

    .prologue
    .line 2161
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1898
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->dateHeader(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1911
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutputQuietly()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1912
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public disconnect()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1

    .prologue
    .line 1451
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1452
    return-object p0
.end method

.method public eTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2179
    const-string v0, "ETag"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expires()J
    .locals 2

    .prologue
    .line 2188
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public followRedirects(Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 2952
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 2953
    return-object p0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2837
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2853
    iget-boolean v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->form:Z

    if-nez v3, :cond_3

    move v1, v2

    .line 2854
    .local v1, "first":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2855
    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v3, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2856
    iput-boolean v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->form:Z

    .line 2858
    :cond_0
    invoke-static {p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2860
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2861
    if-nez v1, :cond_1

    .line 2862
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(I)V

    .line 2863
    :cond_1
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    .line 2864
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(I)V

    .line 2865
    if-eqz p2, :cond_2

    .line 2866
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2870
    :cond_2
    return-object p0

    .line 2853
    .end local v1    # "first":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2867
    .restart local v1    # "first":Z
    :catch_0
    move-exception v0

    .line 2868
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public form(Ljava/util/Map$Entry;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2807
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map$Entry;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2822
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2793
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->form(Ljava/util/Map;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2882
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2883
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2884
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0, v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    goto :goto_0

    .line 2885
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1317
    invoke-direct {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1318
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x22

    const/4 v6, 0x0

    const/16 v9, 0x3b

    const/4 v8, -0x1

    .line 2034
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v3, v6

    .line 2064
    :cond_1
    :goto_0
    return-object v3

    .line 2037
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2038
    .local v1, "length":I
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 2039
    .local v4, "start":I
    if-eqz v4, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    move-object v3, v6

    .line 2040
    goto :goto_0

    .line 2042
    :cond_4
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2043
    .local v0, "end":I
    if-ne v0, v8, :cond_5

    .line 2044
    move v0, v1

    .line 2046
    :cond_5
    :goto_1
    if-ge v4, v0, :cond_7

    .line 2047
    const/16 v7, 0x3d

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2048
    .local v2, "nameEnd":I
    if-eq v2, v8, :cond_6

    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2049
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2050
    .local v3, "paramValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 2051
    .local v5, "valueLength":I
    if-eqz v5, :cond_6

    .line 2052
    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_1

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_1

    .line 2053
    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2058
    .end local v3    # "paramValue":Ljava/lang/String;
    .end local v5    # "valueLength":I
    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 2059
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2060
    if-ne v0, v8, :cond_5

    .line 2061
    move v0, v1

    goto :goto_1

    .end local v2    # "nameEnd":I
    :cond_7
    move-object v3, v6

    .line 2064
    goto :goto_0
.end method

.method protected getParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x22

    const/16 v11, 0x3b

    const/4 v10, -0x1

    .line 1989
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 1990
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 2023
    :cond_1
    :goto_0
    return-object v5

    .line 1992
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1993
    .local v1, "headerLength":I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1994
    .local v6, "start":I
    if-eqz v6, :cond_3

    if-ne v6, v1, :cond_4

    .line 1995
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    .line 1997
    :cond_4
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1998
    .local v0, "end":I
    if-ne v0, v10, :cond_5

    .line 1999
    move v0, v1

    .line 2001
    :cond_5
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2002
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_1
    if-ge v6, v0, :cond_1

    .line 2003
    const/16 v8, 0x3d

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2004
    .local v4, "nameEnd":I
    if-eq v4, v10, :cond_7

    if-ge v4, v0, :cond_7

    .line 2005
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2006
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 2007
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2008
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 2009
    .local v2, "length":I
    if-eqz v2, :cond_7

    .line 2010
    const/4 v8, 0x2

    if-le v2, v8, :cond_8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v12, v8, :cond_8

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v12, v8, :cond_8

    .line 2011
    const/4 v8, 0x1

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    .end local v2    # "length":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v6, v0, 0x1

    .line 2018
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2019
    if-ne v0, v10, :cond_6

    .line 2020
    move v0, v1

    goto :goto_1

    .line 2013
    .restart local v2    # "length":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_8
    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public header(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 1839
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1827
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1863
    .local p1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1874
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutputQuietly()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1875
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1850
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1851
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1852
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/util/Map$Entry;)Lio/fabric/sdk/android/services/network/HttpRequest;

    goto :goto_0

    .line 1853
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1885
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutputQuietly()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1886
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1948
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->headers()Ljava/util/Map;

    move-result-object v0

    .line 1949
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1950
    :cond_0
    sget-object v2, Lio/fabric/sdk/android/services/network/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 1956
    :goto_0
    return-object v2

    .line 1952
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1953
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1954
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    .line 1956
    :cond_2
    sget-object v2, Lio/fabric/sdk/android/services/network/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    goto :goto_0
.end method

.method public ifModifiedSince(J)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "ifModifiedSince"    # J

    .prologue
    .line 2258
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 2259
    return-object p0
.end method

.method public ifNoneMatch(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "ifNoneMatch"    # Ljava/lang/String;

    .prologue
    .line 2269
    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public ignoreCloseExceptions(Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 1330
    iput-boolean p1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    .line 1331
    return-object p0
.end method

.method public ignoreCloseExceptions()Z
    .locals 1

    .prologue
    .line 1340
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    return v0
.end method

.method public intHeader(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1924
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public intHeader(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1937
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutputQuietly()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1938
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->contentLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 2197
    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2206
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1438
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->closeOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 1439
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2924
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notFound()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1417
    const/16 v0, 0x194

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notModified()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1427
    const/16 v0, 0x130

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ok()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1377
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2445
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    if-eqz v1, :cond_0

    .line 2450
    :goto_0
    return-object p0

    .line 2447
    :cond_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2448
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "charset"

    invoke-virtual {p0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2449
    .local v0, "charset":Ljava/lang/String;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    goto :goto_0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    .line 1967
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1979
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2638
    invoke-virtual {p0, p1, v0, v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/String;

    .prologue
    .line 2511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2598
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2573
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2613
    const/4 v1, 0x0

    .line 2615
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2616
    .end local v1    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 2620
    if-eqz v2, :cond_0

    .line 2622
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2624
    :cond_0
    :goto_0
    return-object v3

    .line 2617
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2618
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v3, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v3, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2620
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 2622
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2624
    :cond_1
    :goto_3
    throw v3

    .line 2623
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 2620
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_2

    .line 2617
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2654
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->startPart()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2655
    invoke-virtual {p0, p1, p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2656
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p4, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2660
    return-object p0

    .line 2657
    :catch_0
    move-exception v0

    .line 2658
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2541
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->startPart()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2542
    invoke-virtual {p0, p1, p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2543
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {v1, p4}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    return-object p0

    .line 2544
    :catch_0
    move-exception v0

    .line 2545
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2672
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public proxyAuthorization(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "proxyAuthorization"    # Ljava/lang/String;

    .prologue
    .line 2226
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public proxyBasic(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->proxyAuthorization(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public readTimeout(I)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 1804
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1805
    return-object p0
.end method

.method public reader()Ljava/io/InputStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1677
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 4
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1664
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1715
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    .local v1, "output":Ljava/io/OutputStream;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$3;

    iget-boolean v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    invoke-direct {v2, p0, v1, v3, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$3;-><init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/network/HttpRequest$3;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object v2

    .line 1716
    .end local v1    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public receive(Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1737
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/PrintStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "output"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1751
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->receive(Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public receive(Ljava/io/Writer;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1787
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    .line 1788
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$5;

    iget-boolean v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/network/HttpRequest$5;-><init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$5;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object v0
.end method

.method public receive(Ljava/lang/Appendable;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 6
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1762
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    .line 1763
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$4;

    iget-boolean v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/network/HttpRequest$4;-><init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$4;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object v0
.end method

.method public referer(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "referer"    # Ljava/lang/String;

    .prologue
    .line 2093
    const-string v0, "Referer"

    invoke-virtual {p0, v0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3
    .param p1, "input"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2685
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2689
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v2

    return-object v2

    .line 2686
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2687
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public send(Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2714
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2715
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p1, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2719
    return-object p0

    .line 2716
    :catch_0
    move-exception v0

    .line 2717
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/io/Reader;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 4
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2733
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2737
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    iget-object v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-static {v3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->access$200(Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2738
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$8;

    invoke-direct {v2, p0, v1, p1, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$8;-><init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/network/HttpRequest$8;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object v2

    .line 2734
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 2735
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2759
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2760
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2764
    return-object p0

    .line 2761
    :catch_0
    move-exception v0

    .line 2762
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send([B)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2700
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2152
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serverError()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1397
    const/16 v0, 0x1f4

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startPart()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2460
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->multipart:Z

    if-nez v0, :cond_0

    .line 2461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->multipart:Z

    .line 2462
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->contentType(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2463
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    .line 2466
    :goto_0
    return-object p0

    .line 2465
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    goto :goto_0
.end method

.method public stream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1627
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_2

    .line 1629
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1643
    .local v1, "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->uncompress:Z

    if-eqz v2, :cond_1

    const-string v2, "gzip"

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1647
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v1

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1634
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1635
    .restart local v1    # "stream":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 1637
    :try_start_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1638
    :catch_1
    move-exception v0

    .line 1639
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1647
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_1

    .line 1648
    :catch_2
    move-exception v0

    .line 1649
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustAllCerts()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2896
    return-object p0
.end method

.method public trustAllHosts()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 0

    .prologue
    .line 2906
    return-object p0
.end method

.method public uncompress(Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 0
    .param p1, "uncompress"    # Z

    .prologue
    .line 1510
    iput-boolean p1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->uncompress:Z

    .line 1511
    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 2915
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public useCaches(Z)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "useCaches"    # Z

    .prologue
    .line 2103
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2104
    return-object p0
.end method

.method public useProxy(Ljava/lang/String;I)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I

    .prologue
    .line 2936
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2937
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection has already been created. This method must be called before reading or writing to the request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2940
    :cond_0
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->httpProxyHost:Ljava/lang/String;

    .line 2941
    iput p2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->httpProxyPort:I

    .line 2942
    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 2083
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2478
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2493
    .local v0, "partBuffer":Ljava/lang/StringBuilder;
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    if-eqz p2, :cond_0

    .line 2495
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2496
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2497
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2498
    if-eqz p3, :cond_1

    .line 2499
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2500
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->send(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public writer()Ljava/io/OutputStreamWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2775
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest;->openOutput()Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 2776
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    iget-object v3, p0, Lio/fabric/sdk/android/services/network/HttpRequest;->output:Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;

    invoke-static {v3}, Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;->access$200(Lio/fabric/sdk/android/services/network/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2777
    :catch_0
    move-exception v0

    .line 2778
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
