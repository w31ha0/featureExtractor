.class public final Ltwitter4j/TwitterFactory;
.super Ljava/lang/Object;
.source "TwitterFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x481470a850d0e763L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "configTreePath"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 65
    return-void
.end method

.method private getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/http/Authorization;

    .prologue
    .line 150
    new-instance v0, Ltwitter4j/Twitter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/Twitter;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    return-object v0
.end method


# virtual methods
.method public getInstance()Ltwitter4j/Twitter;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ltwitter4j/http/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;Z)Ltwitter4j/http/Authorization;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/Twitter;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ltwitter4j/http/BasicAuthorization;

    invoke-direct {v0, p1, p2}, Ltwitter4j/http/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;
    .locals 1
    .param p1, "auth"    # Ltwitter4j/http/Authorization;

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthorizedInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/Twitter;
    .locals 3
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Consumer key and Consumer secret not supplied."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    new-instance v0, Ltwitter4j/http/OAuthAuthorization;

    iget-object v1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, p1, p2}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, "oauth":Ltwitter4j/http/OAuthAuthorization;
    invoke-virtual {p0, v0}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v1

    return-object v1
.end method

.method public getOAuthAuthorizedInstance(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/AccessToken;)Ltwitter4j/Twitter;
    .locals 3
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ltwitter4j/http/AccessToken;

    .prologue
    .line 125
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Consumer key and Consumer secret not supplied."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    new-instance v0, Ltwitter4j/http/OAuthAuthorization;

    iget-object v1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, p1, p2}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v0, "oauth":Ltwitter4j/http/OAuthAuthorization;
    invoke-virtual {v0, p3}, Ltwitter4j/http/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 130
    invoke-virtual {p0, v0}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v1

    return-object v1
.end method

.method public getOAuthAuthorizedInstance(Ltwitter4j/http/AccessToken;)Ltwitter4j/Twitter;
    .locals 5
    .param p1, "accessToken"    # Ltwitter4j/http/AccessToken;

    .prologue
    .line 141
    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "consumerKey":Ljava/lang/String;
    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "consumerSecret":Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 144
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Consumer key and Consumer secret not supplied."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_0
    new-instance v2, Ltwitter4j/http/OAuthAuthorization;

    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v3, v0, v1, p1}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/AccessToken;)V

    .line 147
    .local v2, "oauth":Ltwitter4j/http/OAuthAuthorization;
    invoke-virtual {p0, v2}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v3

    return-object v3
.end method
