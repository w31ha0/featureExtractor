.class abstract Ltwitter4j/TwitterOAuthSupportBase;
.super Ltwitter4j/TwitterBase;
.source "TwitterOAuthSupportBase.java"

# interfaces
.implements Ltwitter4j/internal/http/HttpResponseCode;
.implements Ltwitter4j/internal/http/HttpResponseListener;
.implements Ltwitter4j/http/OAuthSupport;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x60993f027bbf9372L


# instance fields
.field protected transient http:Ltwitter4j/internal/http/HttpClientWrapper;

.field protected rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 28
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBase;->init()V

    .line 29
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 33
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBase;->init()V

    .line 34
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/http/Authorization;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 37
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBase;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    .line 41
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->auth:Ltwitter4j/http/Authorization;

    instance-of v5, v5, Ltwitter4j/http/NullAuthorization;

    if-eqz v5, :cond_1

    .line 43
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "consumerKey":Ljava/lang/String;
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "consumerSecret":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 47
    new-instance v4, Ltwitter4j/http/OAuthAuthorization;

    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v4, v5, v2, v3}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v4, "oauth":Ltwitter4j/http/OAuthAuthorization;
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "accessToken":Ljava/lang/String;
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "accessTokenSecret":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 51
    new-instance v5, Ltwitter4j/http/AccessToken;

    invoke-direct {v5, v0, v1}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ltwitter4j/http/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 53
    :cond_0
    iput-object v4, p0, Ltwitter4j/TwitterOAuthSupportBase;->auth:Ltwitter4j/http/Authorization;

    .line 56
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "accessTokenSecret":Ljava/lang/String;
    .end local v2    # "consumerKey":Ljava/lang/String;
    .end local v3    # "consumerSecret":Ljava/lang/String;
    .end local v4    # "oauth":Ltwitter4j/http/OAuthAuthorization;
    :cond_1
    new-instance v5, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v5, v6}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 57
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v5, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V

    .line 58
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/RateLimitStatusListener;

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 70
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v1, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 71
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V

    .line 72
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    if-ne p0, p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    instance-of v3, p1, Ltwitter4j/TwitterOAuthSupportBase;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 151
    :cond_2
    invoke-super {p0, p1}, Ltwitter4j/TwitterBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 153
    check-cast v0, Ltwitter4j/TwitterOAuthSupportBase;

    .line 155
    .local v0, "that":Ltwitter4j/TwitterOAuthSupportBase;
    iget-object v3, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    iget-object v4, v0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 156
    goto :goto_0

    .line 155
    :cond_4
    iget-object v3, v0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public abstract getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Ltwitter4j/TwitterBase;->hashCode()I

    move-result v0

    .line 164
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 165
    return v0

    .line 164
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .locals 5
    .param p1, "event"    # Ltwitter4j/internal/http/HttpResponseEvent;

    .prologue
    .line 169
    iget-object v3, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->getResponse()Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    .line 171
    .local v1, "res":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {v1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    .line 172
    .local v0, "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    const/4 v2, 0x0

    .line 173
    .local v2, "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    if-eqz v0, :cond_1

    .line 174
    new-instance v2, Ltwitter4j/RateLimitStatusEvent;

    .end local v2    # "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->isAuthenticated()Z

    move-result v3

    invoke-direct {v2, p0, v0, v3}, Ltwitter4j/RateLimitStatusEvent;-><init>(Ljava/lang/Object;Ltwitter4j/RateLimitStatus;Z)V

    .line 175
    .restart local v2    # "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v3

    const/16 v4, 0x1a4

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v3

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_2

    .line 179
    :cond_0
    iget-object v3, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-interface {v3, v2}, Ltwitter4j/RateLimitStatusListener;->onRateLimitStatus(Ltwitter4j/RateLimitStatusEvent;)V

    .line 180
    iget-object v3, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-interface {v3, v2}, Ltwitter4j/RateLimitStatusListener;->onRateLimitReached(Ltwitter4j/RateLimitStatusEvent;)V

    .line 186
    .end local v0    # "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    .end local v1    # "res":Ltwitter4j/internal/http/HttpResponse;
    .end local v2    # "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    :cond_1
    :goto_0
    return-void

    .line 182
    .restart local v0    # "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    .restart local v1    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v2    # "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    :cond_2
    iget-object v3, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-interface {v3, v2}, Ltwitter4j/RateLimitStatusListener;->onRateLimitStatus(Ltwitter4j/RateLimitStatusEvent;)V

    goto :goto_0
.end method

.method public isOAuthEnabled()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->auth:Ltwitter4j/http/Authorization;

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
.end method

.method public abstract setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V
    .locals 0
    .param p1, "listener"    # Ltwitter4j/RateLimitStatusListener;

    .prologue
    .line 144
    iput-object p1, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 145
    return-void
.end method
