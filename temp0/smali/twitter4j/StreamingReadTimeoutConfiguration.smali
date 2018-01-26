.class Ltwitter4j/StreamingReadTimeoutConfiguration;
.super Ljava/lang/Object;
.source "TwitterStream.java"

# interfaces
.implements Ltwitter4j/internal/http/HttpClientWrapperConfiguration;


# instance fields
.field nestedConf:Ltwitter4j/conf/Configuration;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 0
    .param p1, "httpConf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    .line 443
    return-void
.end method


# virtual methods
.method public getHttpConnectionTimeout()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpConnectionTimeout()I

    move-result v0

    return v0
.end method

.method public getHttpProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpProxyPort()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpProxyPort()I

    move-result v0

    return v0
.end method

.method public getHttpProxyUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpReadTimeout()I
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpStreamingReadTimeout()I

    move-result v0

    return v0
.end method

.method public getHttpRetryCount()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpRetryCount()I

    move-result v0

    return v0
.end method

.method public getHttpRetryIntervalSeconds()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpRetryIntervalSeconds()I

    move-result v0

    return v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Ltwitter4j/StreamingReadTimeoutConfiguration;->nestedConf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
