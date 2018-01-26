.class public Ltwitter4j/internal/http/HttpClientImpl;
.super Ljava/lang/Object;
.source "HttpClientImpl.java"

# interfaces
.implements Ltwitter4j/internal/http/HttpClient;
.implements Ltwitter4j/internal/http/HttpResponseCode;
.implements Ljava/io/Serializable;


# static fields
.field static class$twitter4j$internal$http$HttpClientImpl:Ljava/lang/Class; = null

.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/internal/http/HttpClientConfiguration;",
            "Ltwitter4j/internal/http/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static isJDK14orEarlier:Z = false

.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field private static final serialVersionUID:J = -0x7a63fdacd4e632ffL


# instance fields
.field private connectionTimeout:I

.field private proxyAuthPassword:Ljava/lang/String;

.field private proxyAuthUser:Ljava/lang/String;

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private readTimeout:I

.field private retryCount:I

.field private retryIntervalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->class$twitter4j$internal$http$HttpClientImpl:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "twitter4j.internal.http.HttpClientImpl"

    invoke-static {v2}, Ltwitter4j/internal/http/HttpClientImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ltwitter4j/internal/http/HttpClientImpl;->class$twitter4j$internal$http$HttpClientImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v2}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v2

    sput-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    .line 67
    sput-boolean v4, Ltwitter4j/internal/http/HttpClientImpl;->isJDK14orEarlier:Z

    .line 72
    :try_start_0
    const-string v2, "java.specification.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "versionStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 74
    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v2, v5, v7

    if-lez v2, :cond_3

    move v2, v3

    :goto_1
    sput-boolean v2, Ltwitter4j/internal/http/HttpClientImpl;->isJDK14orEarlier:Z

    .line 76
    :cond_0
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v2

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isDalvik()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v2, "http.keepAlive"

    const-string v4, "false"

    invoke-static {v2, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_1
    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    return-void

    .line 57
    .end local v1    # "versionStr":Ljava/lang/String;
    :cond_2
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->class$twitter4j$internal$http$HttpClientImpl:Ljava/lang/Class;

    goto :goto_0

    .restart local v1    # "versionStr":Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 74
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ace":Ljava/security/AccessControlException;
    sput-boolean v3, Ltwitter4j/internal/http/HttpClientImpl;->isJDK14orEarlier:Z

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    .line 61
    iput-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    .line 63
    const/16 v0, 0x4e20

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    .line 64
    const v0, 0x1d4c0

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    .line 66
    const/16 v0, 0x1388

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    .line 87
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V
    .locals 2
    .param p1, "conf"    # Ltwitter4j/internal/http/HttpClientConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    .line 61
    iput-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    .line 63
    const/16 v0, 0x4e20

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    .line 64
    const v0, 0x1d4c0

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    .line 66
    const/16 v0, 0x1388

    iput v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    .line 89
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->setProxyHost(Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->setProxyPort(I)V

    .line 91
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->setProxyAuthUser(Ljava/lang/String;)V

    .line 92
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->setProxyAuthPassword(Ljava/lang/String;)V

    .line 93
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->setConnectionTimeout(I)V

    .line 94
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->setReadTimeout(I)V

    .line 95
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->setRetryCount(I)V

    .line 96
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->setRetryIntervalSeconds(I)V

    .line 97
    return-void
.end method

.method static access$000(Ltwitter4j/internal/http/HttpClientImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltwitter4j/internal/http/HttpClientImpl;

    .prologue
    .line 56
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method static access$100(Ltwitter4j/internal/http/HttpClientImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltwitter4j/internal/http/HttpClientImpl;

    .prologue
    .line 56
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 339
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "neverHappen":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "will never happen"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "con":Ljava/net/HttpURLConnection;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 370
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Proxy AuthUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 372
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Proxy AuthPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 373
    new-instance v2, Ltwitter4j/internal/http/HttpClientImpl$1;

    invoke-direct {v2, p0}, Ltwitter4j/internal/http/HttpClientImpl$1;-><init>(Ltwitter4j/internal/http/HttpClientImpl;)V

    invoke-static {v2}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 388
    :cond_0
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    iget v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    invoke-static {v3, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 390
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v2}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Opening proxied connection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 393
    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "con":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 397
    .end local v1    # "proxy":Ljava/net/Proxy;
    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    :goto_0
    iget v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    if-lez v2, :cond_2

    sget-boolean v2, Ltwitter4j/internal/http/HttpClientImpl;->isJDK14orEarlier:Z

    if-nez v2, :cond_2

    .line 398
    iget v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 400
    :cond_2
    iget v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    if-lez v2, :cond_3

    sget-boolean v2, Ltwitter4j/internal/http/HttpClientImpl;->isJDK14orEarlier:Z

    if-nez v2, :cond_3

    .line 401
    iget v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 403
    :cond_3
    return-object v0

    .line 395
    :cond_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "con":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    goto :goto_0
.end method

.method public static getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;
    .locals 2
    .param p0, "conf"    # Ltwitter4j/internal/http/HttpClientConfiguration;

    .prologue
    .line 102
    sget-object v1, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/internal/http/HttpClient;

    .line 103
    .local v0, "client":Ltwitter4j/internal/http/HttpClient;
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ltwitter4j/internal/http/HttpClientImpl;

    .end local v0    # "client":Ltwitter4j/internal/http/HttpClient;
    invoke-direct {v0, p0}, Ltwitter4j/internal/http/HttpClientImpl;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V

    .line 105
    .restart local v0    # "client":Ltwitter4j/internal/http/HttpClient;
    sget-object v1, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    return-object v0
.end method

.method private setHeaders(Ltwitter4j/internal/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 351
    sget-object v3, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v4, "Request: "

    invoke-virtual {v3, v4}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 352
    sget-object v3, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v5

    invoke-virtual {v5}, Ltwitter4j/internal/http/RequestMethod;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/http/Authorization;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/http/Authorization;

    move-result-object v3

    invoke-interface {v3, p1}, Ltwitter4j/http/Authorization;->getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .local v0, "authorizationHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 356
    sget-object v3, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v4, "Authorization: "

    invoke-virtual {v3, v4, v0}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v3, "Authorization"

    invoke-virtual {p2, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v0    # "authorizationHeader":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 360
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 361
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v4, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private write(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "outStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 334
    sget-object v0, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0, p2}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 335
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    if-ne p0, p1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v1

    .line 409
    :cond_1
    instance-of v3, p1, Ltwitter4j/internal/http/HttpClientImpl;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 411
    check-cast v0, Ltwitter4j/internal/http/HttpClientImpl;

    .line 413
    .local v0, "that":Ltwitter4j/internal/http/HttpClientImpl;
    iget v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    iget v4, v0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 414
    :cond_3
    iget v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    iget v4, v0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 415
    :cond_4
    iget v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    iget v4, v0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 416
    :cond_5
    iget v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    iget v4, v0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 417
    :cond_6
    iget v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    iget v4, v0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 418
    :cond_7
    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    .line 419
    goto :goto_0

    .line 418
    :cond_9
    iget-object v3, v0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 420
    :cond_a
    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 421
    goto :goto_0

    .line 420
    :cond_c
    iget-object v3, v0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 422
    :cond_d
    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 423
    goto :goto_0

    .line 422
    :cond_e
    iget-object v3, v0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
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

    .line 211
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    return v0
.end method

.method public getProxyAuthPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 431
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    add-int v0, v2, v3

    .line 432
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 433
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 434
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    add-int v0, v1, v2

    .line 435
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    add-int v0, v1, v2

    .line 436
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    add-int v0, v1, v2

    .line 437
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    add-int v0, v1, v2

    .line 438
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 430
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 432
    goto :goto_1
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 215
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
    .locals 29
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    move/from16 v26, v0

    add-int/lit8 v23, v26, 0x1

    .line 221
    .local v23, "retry":I
    const/16 v18, 0x0

    .line 222
    .local v18, "res":Ltwitter4j/internal/http/HttpResponse;
    const/16 v22, 0x0

    .local v22, "retriedCount":I
    move-object/from16 v19, v18

    .end local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    .local v19, "res":Ltwitter4j/internal/http/HttpResponse;
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 223
    const/16 v20, -0x1

    .line 225
    .local v20, "responseCode":I
    const/4 v7, 0x0

    .line 226
    .local v7, "con":Ljava/net/HttpURLConnection;
    const/4 v14, 0x0

    .line 228
    .local v14, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 229
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Ltwitter4j/internal/http/HttpClientImpl;->setHeaders(Ltwitter4j/internal/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ltwitter4j/internal/http/RequestMethod;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v26

    sget-object v27, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 233
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ltwitter4j/internal/http/HttpParameter;->containsFile([Ltwitter4j/internal/http/HttpParameter;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 234
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "----Twitter4J-upload"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "boundary":Ljava/lang/String;
    const-string v26, "Content-Type"

    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string v28, "multipart/form-data; boundary="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 238
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 239
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 240
    .local v15, "out":Ljava/io/DataOutputStream;
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    .local v3, "arr$":[Ltwitter4j/internal/http/HttpParameter;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v13, :cond_2

    aget-object v16, v3, v8

    .line 241
    .local v16, "param":Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 242
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\r\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 243
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\"; filename=\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/http/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\"\r\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 244
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "Content-Type: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/http/HttpParameter;->getContentType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\r\n\r\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 245
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v26, Ljava/io/FileInputStream;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/http/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    .local v10, "in":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 247
    .local v5, "buff":I
    :goto_2
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v5, v0, :cond_0

    .line 248
    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 308
    .end local v3    # "arr$":[Ltwitter4j/internal/http/HttpParameter;
    .end local v4    # "boundary":Ljava/lang/String;
    .end local v5    # "buff":I
    .end local v8    # "i$":I
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .end local v13    # "len$":I
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "param":Ltwitter4j/internal/http/HttpParameter;
    :catchall_0
    move-exception v26

    move-object/from16 v18, v19

    .line 309
    .end local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    :goto_3
    :try_start_1
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :goto_4
    :try_start_2
    throw v26
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 313
    :catch_0
    move-exception v11

    .line 315
    .local v11, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 316
    new-instance v26, Ltwitter4j/TwitterException;

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-direct {v0, v1, v11, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v26

    .line 250
    .end local v11    # "ioe":Ljava/io/IOException;
    .end local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v3    # "arr$":[Ltwitter4j/internal/http/HttpParameter;
    .restart local v4    # "boundary":Ljava/lang/String;
    .restart local v5    # "buff":I
    .restart local v8    # "i$":I
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    .restart local v13    # "len$":I
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "param":Ltwitter4j/internal/http/HttpParameter;
    .restart local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    :cond_0
    :try_start_3
    const-string v26, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    .end local v5    # "buff":I
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 253
    :cond_1
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\r\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 254
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\"\r\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 255
    const-string v26, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 256
    sget-object v26, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/http/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/http/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ltwitter4j/internal/http/HttpClientImpl;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "UTF-8"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 258
    const-string v26, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_5

    .line 261
    .end local v16    # "param":Ltwitter4j/internal/http/HttpParameter;
    :cond_2
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "--\r\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 262
    const-string v26, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 276
    .end local v3    # "arr$":[Ltwitter4j/internal/http/HttpParameter;
    .end local v4    # "boundary":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "out":Ljava/io/DataOutputStream;
    :goto_6
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 277
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 279
    :cond_3
    new-instance v18, Ltwitter4j/internal/http/HttpResponseImpl;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ltwitter4j/internal/http/HttpResponseImpl;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    .end local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    :try_start_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 281
    sget-object v26, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual/range {v26 .. v26}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 282
    sget-object v26, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v27, "Response: "

    invoke-virtual/range {v26 .. v27}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v21

    .line 284
    .local v21, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 285
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 286
    .local v25, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 287
    .local v24, "value":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 288
    sget-object v26, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 308
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    .end local v21    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v24    # "value":Ljava/lang/String;
    .end local v25    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v26

    goto/16 :goto_3

    .line 265
    .end local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    :cond_5
    :try_start_5
    const-string v26, "Content-Type"

    const-string v27, "application/x-www-form-urlencoded"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ltwitter4j/internal/http/HttpParameter;->encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v17

    .line 268
    .local v17, "postParam":Ljava/lang/String;
    sget-object v26, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v27, "Post Params: "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v26, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 270
    .local v6, "bytes":[B
    const-string v26, "Content-Length"

    array-length v0, v6

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 273
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 274
    invoke-virtual {v14, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 290
    .end local v6    # "bytes":[B
    .end local v17    # "postParam":Ljava/lang/String;
    .end local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v21    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v24    # "value":Ljava/lang/String;
    .restart local v25    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :try_start_6
    sget-object v26, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 295
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    .end local v21    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v24    # "value":Ljava/lang/String;
    .end local v25    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const/16 v26, 0xc8

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 296
    const/16 v26, 0x1a4

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v26, 0x1f7

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v26, 0x190

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v26, 0x1f4

    move/from16 v0, v20

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 301
    :cond_8
    new-instance v26, Ltwitter4j/TwitterException;

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 309
    :cond_9
    :try_start_7
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 329
    .end local v7    # "con":Ljava/net/HttpURLConnection;
    .end local v14    # "os":Ljava/io/OutputStream;
    .end local v20    # "responseCode":I
    :goto_8
    return-object v18

    .line 309
    .restart local v7    # "con":Ljava/net/HttpURLConnection;
    .restart local v14    # "os":Ljava/io/OutputStream;
    .restart local v20    # "responseCode":I
    :cond_a
    :try_start_8
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 320
    :cond_b
    :goto_9
    :try_start_9
    sget-object v26, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual/range {v26 .. v26}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_c

    if-eqz v18, :cond_c

    .line 321
    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    .line 323
    :cond_c
    sget-object v26, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string v28, "Sleeping "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string v28, " seconds until the next retry."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    move/from16 v26, v0

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    .line 222
    :goto_a
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v19, v18

    .end local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    goto/16 :goto_0

    .line 310
    .end local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    :catch_1
    move-exception v26

    goto :goto_8

    :catch_2
    move-exception v26

    goto :goto_9

    :catch_3
    move-exception v27

    goto/16 :goto_4

    .line 325
    :catch_4
    move-exception v26

    goto :goto_a

    .end local v7    # "con":Ljava/net/HttpURLConnection;
    .end local v14    # "os":Ljava/io/OutputStream;
    .end local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    .end local v20    # "responseCode":I
    .restart local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    :cond_d
    move-object/from16 v18, v19

    .end local v19    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v18    # "res":Ltwitter4j/internal/http/HttpResponse;
    goto :goto_8
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 175
    iput p1, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    .line 177
    return-void
.end method

.method public setProxyAuthPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyAuthPassword"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setProxyAuthUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyAuthUser"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setProxyPort(I)V
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 134
    iput p1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    .line 135
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 189
    iput p1, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    .line 190
    return-void
.end method

.method public setRetryCount(I)V
    .locals 2
    .param p1, "retryCount"    # I

    .prologue
    .line 193
    if-ltz p1, :cond_0

    .line 194
    iput p1, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    .line 198
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RetryCount cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetryIntervalSeconds(I)V
    .locals 2
    .param p1, "retryIntervalSeconds"    # I

    .prologue
    .line 201
    if-ltz p1, :cond_0

    .line 202
    iput p1, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    .line 207
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RetryInterval cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 443
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpClientImpl{proxyHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", proxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", proxyAuthUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", proxyAuthPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", connectionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->connectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", readTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retryIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/http/HttpClientImpl;->retryIntervalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
