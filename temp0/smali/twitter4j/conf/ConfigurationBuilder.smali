.class public final Ltwitter4j/conf/ConfigurationBuilder;
.super Ljava/lang/Object;
.source "ConfigurationBuilder.java"


# instance fields
.field private configurationBean:Ltwitter4j/conf/ConfigurationBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ltwitter4j/conf/ConfigurationBase;

    invoke-direct {v0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    return-void
.end method

.method private checkNotBuilt()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this builder any longer, build() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Ltwitter4j/conf/Configuration;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 224
    :try_start_0
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    throw v0
.end method

.method public setAsyncNumThreads(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "asyncNumThreads"    # I

    .prologue
    .line 198
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 199
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V

    .line 200
    return-object p0
.end method

.method public setClientURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "clientURL"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 211
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V

    .line 212
    return-object p0
.end method

.method public setClientVersion(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "clientVersion"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 205
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V

    .line 206
    return-object p0
.end method

.method public setDebugEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "debugEnabled"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 49
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V

    .line 50
    return-object p0
.end method

.method public setDispatcherImpl(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "dispatcherImpl"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 217
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V

    .line 218
    return-object p0
.end method

.method public setHttpConnectionTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpConnectionTimeout"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 103
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V

    .line 104
    return-object p0
.end method

.method public setHttpProxyHost(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpProxyHost"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 79
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V

    .line 80
    return-object p0
.end method

.method public setHttpProxyPassword(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpProxyPassword"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 91
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 92
    return-object p0
.end method

.method public setHttpProxyPort(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpProxyPort"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 97
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V

    .line 98
    return-object p0
.end method

.method public setHttpProxyUser(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpProxyUser"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 85
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V

    .line 86
    return-object p0
.end method

.method public setHttpReadTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpReadTimeout"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 109
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V

    .line 110
    return-object p0
.end method

.method public setHttpRetryCount(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpRetryCount"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 121
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V

    .line 122
    return-object p0
.end method

.method public setHttpRetryIntervalSeconds(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpRetryIntervalSeconds"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 127
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V

    .line 128
    return-object p0
.end method

.method public setHttpStreamingReadTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "httpStreamingReadTimeout"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 115
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V

    .line 116
    return-object p0
.end method

.method public setOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "oAuthAccessToken"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 145
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 146
    return-object p0
.end method

.method public setOAuthAccessTokenSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "oAuthAccessTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 151
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 152
    return-object p0
.end method

.method public setOAuthAccessTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "oAuthAccessTokenURL"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 169
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 170
    return-object p0
.end method

.method public setOAuthAuthenticationURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "oAuthAuthenticationURL"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 175
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 176
    return-object p0
.end method

.method public setOAuthAuthorizationURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "oAuthAuthorizationURL"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 163
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 164
    return-object p0
.end method

.method public setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "oAuthConsumerKey"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 133
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 134
    return-object p0
.end method

.method public setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "oAuthConsumerSecret"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 139
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 140
    return-object p0
.end method

.method public setOAuthRequestTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "oAuthRequestTokenURL"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 157
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 158
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 73
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V

    .line 74
    return-object p0
.end method

.method public setRestBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "restBaseURL"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 181
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V

    .line 182
    return-object p0
.end method

.method public setSearchBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "searchBaseURL"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 187
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setSearchBaseURL(Ljava/lang/String;)V

    .line 188
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 55
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setSource(Ljava/lang/String;)V

    .line 56
    return-object p0
.end method

.method public setStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "streamBaseURL"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 193
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V

    .line 194
    return-object p0
.end method

.method public setUseSSL(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "useSSL"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 43
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V

    .line 44
    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 67
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V

    .line 68
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 61
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUserAgent(Ljava/lang/String;)V

    .line 62
    return-object p0
.end method
