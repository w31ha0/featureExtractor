.class Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"

# interfaces
.implements Ltwitter4j/conf/Configuration;
.implements Ljava/io/Serializable;


# static fields
.field public static final DALVIK:Ljava/lang/String; = "twitter4j.dalvik"

.field private static final DEFAULT_REST_BASE_URL:Ljava/lang/String; = "http://api.twitter.com/1/"

.field private static final serialVersionUID:J = -0x5bbd3477f3537f08L


# instance fields
.field private IS_DALVIK:Z

.field private asyncNumThreads:I

.field private clientURL:Ljava/lang/String;

.field private clientVersion:Ljava/lang/String;

.field private debug:Z

.field private dispatcherImpl:Ljava/lang/String;

.field private httpConnectionTimeout:I

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPassword:Ljava/lang/String;

.field private httpProxyPort:I

.field private httpProxyUser:Ljava/lang/String;

.field private httpReadTimeout:I

.field private httpRetryCount:I

.field private httpRetryIntervalSeconds:I

.field private httpStreamingReadTimeout:I

.field private oAuthAccessToken:Ljava/lang/String;

.field private oAuthAccessTokenSecret:Ljava/lang/String;

.field private oAuthAccessTokenURL:Ljava/lang/String;

.field private oAuthAuthenticationURL:Ljava/lang/String;

.field private oAuthAuthorizationURL:Ljava/lang/String;

.field private oAuthConsumerKey:Ljava/lang/String;

.field private oAuthConsumerSecret:Ljava/lang/String;

.field private oAuthRequestTokenURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field requestHeaders:Ljava/util/Map;
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

.field private restBaseURL:Ljava/lang/String;

.field private searchBaseURL:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private streamBaseURL:Ljava/lang/String;

.field private useSSL:Z

.field private user:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V

    .line 86
    const-string v2, "Twitter4J"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setSource(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V

    .line 90
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 93
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V

    .line 94
    const/16 v2, 0x4e20

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V

    .line 95
    const v2, 0x1d4c0

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V

    .line 96
    const v2, 0x493e0

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V

    .line 97
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V

    .line 98
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V

    .line 99
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V

    .line 104
    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http://twitter4j.org/en/twitter4j-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "twitter4j http://twitter4j.org/ /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setUserAgent(Ljava/lang/String;)V

    .line 109
    const-string v2, "https://twitter.com/oauth/request_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 110
    const-string v2, "https://twitter.com/oauth/authorize"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 111
    const-string v2, "https://twitter.com/oauth/access_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 112
    const-string v2, "https://twitter.com/oauth/authenticate"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 114
    const-string v2, "http://api.twitter.com/1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V

    .line 117
    const-string v2, "http://search.twitter.com/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setSearchBaseURL(Ljava/lang/String;)V

    .line 120
    const-string v2, "http://stream.twitter.com/1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V

    .line 122
    const-string v2, "twitter4j.internal.async.DispatcherImpl"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V

    .line 129
    :try_start_0
    const-string v2, "dalvik.system.VMRuntime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 130
    const-string v1, "true"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v1, "dalvikDetected":Ljava/lang/String;
    :goto_0
    const-string v2, "twitter4j.dalvik"

    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    .line 135
    return-void

    .line 131
    .end local v1    # "dalvikDetected":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v1, "false"

    .restart local v1    # "dalvikDetected":Ljava/lang/String;
    goto :goto_0
.end method

.method private fixRestBaseURL()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    const-string v0, "http://api.twitter.com/1/"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v2, v0}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    goto :goto_0
.end method

.method static fixURL(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "useSSL"    # Z
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    const/4 v2, 0x0

    .line 496
    :goto_0
    return-object v2

    .line 488
    :cond_0
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 489
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 490
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url should contain \'://\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_1
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "hostAndLater":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 494
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 496
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initRequestHeaders()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    .line 193
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-Version"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-URL"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    if-ne p0, p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v1

    .line 420
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 422
    check-cast v0, Ltwitter4j/conf/ConfigurationBase;

    .line 424
    .local v0, "that":Ltwitter4j/conf/ConfigurationBase;
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 425
    :cond_4
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 426
    :cond_5
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 427
    :cond_6
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 428
    :cond_7
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 429
    :cond_8
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 430
    :cond_9
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 431
    :cond_a
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 432
    goto :goto_0

    .line 433
    :cond_b
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    if-eq v3, v4, :cond_c

    move v1, v2

    .line 434
    goto :goto_0

    .line 435
    :cond_c
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    if-eq v3, v4, :cond_d

    move v1, v2

    goto :goto_0

    .line 436
    :cond_d
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    move v1, v2

    .line 437
    goto :goto_0

    .line 436
    :cond_f
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 438
    :cond_10
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_11
    move v1, v2

    .line 439
    goto/16 :goto_0

    .line 438
    :cond_12
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 440
    :cond_13
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_14
    move v1, v2

    .line 441
    goto/16 :goto_0

    .line 440
    :cond_15
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 442
    :cond_16
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_17
    move v1, v2

    .line 443
    goto/16 :goto_0

    .line 442
    :cond_18
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 444
    :cond_19
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1a
    move v1, v2

    .line 445
    goto/16 :goto_0

    .line 444
    :cond_1b
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 446
    :cond_1c
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1d
    move v1, v2

    .line 447
    goto/16 :goto_0

    .line 446
    :cond_1e
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-nez v3, :cond_1d

    .line 448
    :cond_1f
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_20
    move v1, v2

    .line 449
    goto/16 :goto_0

    .line 448
    :cond_21
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-nez v3, :cond_20

    .line 450
    :cond_22
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    :cond_23
    move v1, v2

    .line 451
    goto/16 :goto_0

    .line 450
    :cond_24
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-nez v3, :cond_23

    .line 452
    :cond_25
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    move v1, v2

    .line 453
    goto/16 :goto_0

    .line 452
    :cond_27
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 454
    :cond_28
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_29
    move v1, v2

    .line 455
    goto/16 :goto_0

    .line 454
    :cond_2a
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 456
    :cond_2b
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    :cond_2c
    move v1, v2

    .line 457
    goto/16 :goto_0

    .line 456
    :cond_2d
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-nez v3, :cond_2c

    .line 458
    :cond_2e
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v3, :cond_30

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    :cond_2f
    move v1, v2

    .line 459
    goto/16 :goto_0

    .line 458
    :cond_30
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-nez v3, :cond_2f

    .line 460
    :cond_31
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v3, :cond_33

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_32
    move v1, v2

    .line 461
    goto/16 :goto_0

    .line 460
    :cond_33
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 462
    :cond_34
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_36

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_35
    move v1, v2

    .line 463
    goto/16 :goto_0

    .line 462
    :cond_36
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-nez v3, :cond_35

    .line 464
    :cond_37
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v3, :cond_39

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    :cond_38
    move v1, v2

    .line 465
    goto/16 :goto_0

    .line 464
    :cond_39
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 466
    :cond_3a
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    :cond_3b
    move v1, v2

    .line 467
    goto/16 :goto_0

    .line 466
    :cond_3c
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-nez v3, :cond_3b

    .line 468
    :cond_3d
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_3e
    move v1, v2

    .line 469
    goto/16 :goto_0

    .line 468
    :cond_3f
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-nez v3, :cond_3e

    .line 470
    :cond_40
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_42

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    :cond_41
    move v1, v2

    .line 471
    goto/16 :goto_0

    .line 470
    :cond_42
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    if-nez v3, :cond_41

    .line 472
    :cond_43
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->source:Ljava/lang/String;

    if-eqz v3, :cond_45

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->source:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    :cond_44
    move v1, v2

    .line 473
    goto/16 :goto_0

    .line 472
    :cond_45
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->source:Ljava/lang/String;

    if-nez v3, :cond_44

    .line 474
    :cond_46
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_48

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    :cond_47
    move v1, v2

    .line 475
    goto/16 :goto_0

    .line 474
    :cond_48
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-nez v3, :cond_47

    .line 476
    :cond_49
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    :cond_4a
    move v1, v2

    .line 477
    goto/16 :goto_0

    .line 476
    :cond_4b
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-nez v3, :cond_4a

    .line 478
    :cond_4c
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 479
    goto/16 :goto_0

    .line 478
    :cond_4d
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getAsyncNumThreads()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return v0
.end method

.method public final getClientURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpConnectionTimeout()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    return v0
.end method

.method public final getHttpProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpProxyPort()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    return v0
.end method

.method public final getHttpProxyUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpReadTimeout()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    return v0
.end method

.method public final getHttpRetryCount()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return v0
.end method

.method public final getHttpRetryIntervalSeconds()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return v0
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    return-object v0
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
    .line 203
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public final isDalvik()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    return v0
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    return v0
.end method

.method protected final setAsyncNumThreads(I)V
    .locals 0
    .param p1, "asyncNumThreads"    # I

    .prologue
    .line 322
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    .line 323
    return-void
.end method

.method protected final setClientURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientURL"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 341
    return-void
.end method

.method protected final setClientVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientVersion"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 332
    return-void
.end method

.method protected final setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    .line 148
    return-void
.end method

.method protected final setDispatcherImpl(Ljava/lang/String;)V
    .locals 0
    .param p1, "dispatcherImpl"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    .line 415
    return-void
.end method

.method protected final setHttpConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 245
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    .line 246
    return-void
.end method

.method protected final setHttpProxyHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    .line 214
    return-void
.end method

.method protected final setHttpProxyPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyPassword"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    .line 230
    return-void
.end method

.method protected final setHttpProxyPort(I)V
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 237
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    .line 238
    return-void
.end method

.method protected final setHttpProxyUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyUser"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    .line 222
    return-void
.end method

.method protected final setHttpReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 253
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    .line 254
    return-void
.end method

.method protected final setHttpRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 270
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    .line 271
    return-void
.end method

.method protected final setHttpRetryIntervalSeconds(I)V
    .locals 0
    .param p1, "retryIntervalSeconds"    # I

    .prologue
    .line 278
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    .line 279
    return-void
.end method

.method protected final setHttpStreamingReadTimeout(I)V
    .locals 0
    .param p1, "httpStreamingReadTimeout"    # I

    .prologue
    .line 261
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    .line 262
    return-void
.end method

.method protected final setOAuthAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAccessToken"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    .line 307
    return-void
.end method

.method protected final setOAuthAccessTokenSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAccessTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    .line 315
    return-void
.end method

.method protected final setOAuthAccessTokenURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAccessTokenURL"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 399
    return-void
.end method

.method protected final setOAuthAuthenticationURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAuthenticationURL"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 407
    return-void
.end method

.method protected final setOAuthAuthorizationURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAuthorizationURL"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 391
    return-void
.end method

.method protected final setOAuthConsumerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthConsumerKey"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 290
    return-void
.end method

.method protected final setOAuthConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthConsumerSecret"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 299
    return-void
.end method

.method protected final setOAuthRequestTokenURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthRequestTokenURL"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 383
    return-void
.end method

.method protected final setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    .line 182
    return-void
.end method

.method protected final setRestBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "restBaseURL"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 350
    return-void
.end method

.method protected final setSearchBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchBaseURL"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    .line 367
    return-void
.end method

.method protected final setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->source:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 166
    return-void
.end method

.method protected final setStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamBaseURL"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    .line 375
    return-void
.end method

.method protected final setUseSSL(Z)V
    .locals 0
    .param p1, "useSSL"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    .line 186
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 187
    return-void
.end method

.method protected final setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    .line 174
    return-void
.end method

.method protected final setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 157
    return-void
.end method
