.class public Ltwitter4j/Twitter;
.super Ltwitter4j/TwitterOAuthSupportBase;
.source "Twitter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/api/SearchMethods;
.implements Ltwitter4j/api/TimelineMethods;
.implements Ltwitter4j/api/StatusMethods;
.implements Ltwitter4j/api/UserMethods;
.implements Ltwitter4j/api/ListMethods;
.implements Ltwitter4j/api/ListMembersMethods;
.implements Ltwitter4j/api/ListSubscribersMethods;
.implements Ltwitter4j/api/DirectMessageMethods;
.implements Ltwitter4j/api/FriendshipMethods;
.implements Ltwitter4j/api/SocialGraphMethods;
.implements Ltwitter4j/api/AccountMethods;
.implements Ltwitter4j/api/FavoriteMethods;
.implements Ltwitter4j/api/NotificationMethods;
.implements Ltwitter4j/api/BlockMethods;
.implements Ltwitter4j/api/SpamReportingMethods;
.implements Ltwitter4j/api/SavedSearchesMethods;
.implements Ltwitter4j/api/LocalTrendsMethods;
.implements Ltwitter4j/api/GeoMethods;
.implements Ltwitter4j/api/HelpMethods;


# static fields
.field private static final serialVersionUID:J = -0x14a09c9e28673704L


# instance fields
.field private transient id:I

.field private transient screenName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/Twitter;->id:I

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/Twitter;->id:I

    .line 100
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/Twitter;->id:I

    .line 79
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/Twitter;->id:I

    .line 105
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/http/Authorization;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/Twitter;->id:I

    .line 110
    return-void
.end method

.method private addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1204
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p3, :cond_0

    .line 1205
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_0
    return-void
.end method

.method private checkFileValidity(Ljava/io/File;)V
    .locals 4
    .param p1, "image"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1241
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1245
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1247
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not a file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1249
    :cond_1
    return-void
.end method

.method private getOAuth()Ltwitter4j/http/OAuthSupport;
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/OAuthSupport;

    if-nez v0, :cond_0

    .line 1574
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth consumer key/secret combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1577
    :cond_0
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    check-cast v0, Ltwitter4j/http/OAuthSupport;

    return-object v0
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 4
    .param p1, "params1"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p2, "params2"    # [Ltwitter4j/internal/http/HttpParameter;

    .prologue
    const/4 v3, 0x0

    .line 113
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 114
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 115
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .end local v0    # "params":[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    return-object v0

    .line 119
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 120
    new-array v0, v3, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0

    .line 122
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 123
    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 125
    goto :goto_0
.end method

.method private toDateStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance p1, Ljava/util/Date;

    .end local p1    # "date":Ljava/util/Date;
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 245
    .restart local p1    # "date":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addUserListMember(II)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 816
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/members.json?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public checkUserListMembership(Ljava/lang/String;II)Ltwitter4j/User;
    .locals 4
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 834
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/members/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public checkUserListSubscription(Ljava/lang/String;II)Ltwitter4j/User;
    .locals 4
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 872
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 873
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/subscribers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createBlock(I)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1349
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1350
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/create.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1341
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1342
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/create.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createFavorite(J)Ltwitter4j/Status;
    .locals 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1291
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1292
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "favorites/create/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createFriendship(I)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 960
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/create.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createFriendship(IZ)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "follow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 976
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 977
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/create.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&follow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 952
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/create.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;Z)Ltwitter4j/User;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "follow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 968
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/create.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&follow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1471
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1472
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "saved_searches/create.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "query"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createUserList(Ljava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listName"    # Ljava/lang/String;
    .param p2, "isPublicList"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v0, "httpParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "mode"

    if-eqz p2, :cond_1

    const-string v1, "public"

    :goto_0
    invoke-direct {v2, v3, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    if-eqz p3, :cond_0

    .line 721
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "description"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_0
    new-instance v2, Ltwitter4j/UserListJSONImpl;

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "/lists.json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v5, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v1, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v2, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v2

    .line 719
    :cond_1
    const-string v1, "private"

    goto :goto_0
.end method

.method public deleteUserListMember(II)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 825
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/members.json?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->delete(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroyBlock(I)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1366
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/destroy.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroyBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "screen_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1358
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/destroy.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroyDirectMessage(I)Ltwitter4j/DirectMessage;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 943
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "direct_messages/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroyFavorite(J)Ltwitter4j/Status;
    .locals 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1299
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1300
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "favorites/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroyFriendship(I)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 995
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/destroy.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroyFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 985
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 986
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/destroy.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroySavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1480
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1481
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "saved_searches/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroyStatus(J)Ltwitter4j/Status;
    .locals 4
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 510
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public destroyUserList(I)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 769
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/lists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->delete(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public disableNotification(I)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1332
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "notifications/leave.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public disableNotification(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1323
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1324
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "notifications/leave.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public enableNotification(I)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1316
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "notifications/follow.json?userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public enableNotification(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1307
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1308
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "notifications/follow.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public existsBlock(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1390
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1392
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "blocks/exists.json?user_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<error>You are not blocking this user.</error>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1396
    :cond_0
    return v1

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_0

    .line 1398
    throw v0
.end method

.method public existsBlock(Ljava/lang/String;)Z
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1373
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1376
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "blocks/exists.json?screen_name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<error>You are not blocking this user.</error>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1380
    :cond_0
    return v1

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_0

    .line 1382
    throw v0
.end method

.method public existsFriendship(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "userA"    # Ljava/lang/String;
    .param p2, "userB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1003
    const/4 v0, -0x1

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/exists.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_a"

    const-string v4, "user_b"

    invoke-static {v3, p1, v4, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableTrends()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1490
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends/available.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableTrends(Ltwitter4j/GeoLocation;)Ltwitter4j/ResponseList;
    .locals 8
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoLocation;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1498
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends/available.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "lat"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "long"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v4, v2, v3

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsers()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1408
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/blocking.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsers(I)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1417
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1418
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/blocking.json?page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsersIDs()Ltwitter4j/IDs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1426
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1427
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/blocking/ids.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getBlockIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrends()Ltwitter4j/Trends;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends/current.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Trends;

    return-object v0
.end method

.method public getCurrentTrends(Z)Ltwitter4j/Trends;
    .locals 3
    .param p1, "excludeHashTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "trends/current.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "?exclude=hashtags"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Trends;

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDailyTrends()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends/daily.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDailyTrends(Ljava/util/Date;Z)Ljava/util/List;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "excludeHashTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "trends/daily.json?date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Ltwitter4j/Twitter;->toDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "&exclude=hashtags"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDirectMessages()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 883
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 884
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 892
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1255
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1256
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "favorites.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(I)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1264
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1265
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "favorites.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "page"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1274
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "favorites/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;I)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1282
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1283
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "favorites/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-static {v2, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs()Ltwitter4j/IDs;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1091
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Twitter;->getFollowersIDs(J)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(I)Ltwitter4j/IDs;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1106
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFollowersIDs(IJ)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(IJ)Ltwitter4j/IDs;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1121
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFollowersIDs(Ljava/lang/String;J)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses()Ltwitter4j/PagableResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 668
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Twitter;->getFollowersStatuses(J)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(I)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 690
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFollowersStatuses(IJ)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(IJ)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/followers.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/followers.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(Ljava/lang/String;)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 683
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFollowersStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/followers.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs()Ltwitter4j/IDs;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1047
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Twitter;->getFriendsIDs(J)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(I)Ltwitter4j/IDs;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1061
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFriendsIDs(IJ)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(IJ)Ltwitter4j/IDs;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1054
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1076
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFriendsIDs(Ljava/lang/String;J)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses()Ltwitter4j/PagableResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 621
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Twitter;->getFriendsStatuses(J)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(I)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 643
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFriendsStatuses(IJ)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(IJ)Ltwitter4j/PagableResponseList;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/friends.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/friends.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(Ljava/lang/String;)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 636
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFriendsStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/friends.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 301
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/friends_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 310
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/friends_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getGeoDetails(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1556
    new-instance v0, Ltwitter4j/PlaceJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "geo/id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public getHomeTimeline()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 283
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/home_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 292
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/home_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget v0, p0, Ltwitter4j/Twitter;->id:I

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    .line 184
    :cond_1
    iget v0, p0, Ltwitter4j/Twitter;->id:I

    return v0
.end method

.method public getIncomingFriendships(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1029
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1030
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/incoming.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTrends(I)Ltwitter4j/Trends;
    .locals 5
    .param p1, "woeid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1510
    :try_start_0
    iget-object v2, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "trends/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    .line 1512
    .local v1, "res":Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v1}, Ltwitter4j/TrendsJSONImpl;->createTrends(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Trends;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1513
    .end local v1    # "res":Ltwitter4j/internal/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getMentions()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 374
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/mentions.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getMentions(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 383
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/mentions.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getNearbyPlaces(Ltwitter4j/GeoQuery;)Ltwitter4j/ResponseList;
    .locals 5
    .param p1, "query"    # Ltwitter4j/GeoQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoQuery;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1525
    :try_start_0
    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "geo/nearby_places.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/GeoQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1529
    :goto_0
    return-object v1

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1529
    new-instance v1, Ltwitter4j/ResponseList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0

    .line 1531
    :cond_0
    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1617
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/Twitter;->getAuthorization()Ltwitter4j/http/Authorization;

    move-result-object v1

    .line 1619
    .local v1, "auth":Ltwitter4j/http/Authorization;
    instance-of v5, v1, Ltwitter4j/http/BasicAuthorization;

    if-eqz v5, :cond_1

    .line 1620
    move-object v0, v1

    check-cast v0, Ltwitter4j/http/BasicAuthorization;

    move-object v2, v0

    .line 1621
    .local v2, "basicAuth":Ltwitter4j/http/BasicAuthorization;
    iget-object v5, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ltwitter4j/http/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;Z)Ltwitter4j/http/Authorization;

    move-result-object v1

    .line 1622
    instance-of v5, v1, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v5, :cond_0

    .line 1623
    iput-object v1, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    .line 1624
    move-object v0, v1

    check-cast v0, Ltwitter4j/http/OAuthAuthorization;

    move-object v4, v0

    .line 1625
    .local v4, "oauthAuth":Ltwitter4j/http/OAuthAuthorization;
    invoke-virtual {v2}, Ltwitter4j/http/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ltwitter4j/http/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ltwitter4j/http/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v3

    .line 1632
    .end local v2    # "basicAuth":Ltwitter4j/http/BasicAuthorization;
    .end local v4    # "oauthAuth":Ltwitter4j/http/OAuthAuthorization;
    .local v3, "oauthAccessToken":Ltwitter4j/http/AccessToken;
    :goto_0
    invoke-virtual {v3}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 1633
    invoke-virtual {v3}, Ltwitter4j/http/AccessToken;->getUserId()I

    move-result v5

    iput v5, p0, Ltwitter4j/Twitter;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    monitor-exit p0

    return-object v3

    .line 1627
    .end local v3    # "oauthAccessToken":Ltwitter4j/http/AccessToken;
    .restart local v2    # "basicAuth":Ltwitter4j/http/BasicAuthorization;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "consumer key / secret combination not supplied."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1617
    .end local v1    # "auth":Ltwitter4j/http/Authorization;
    .end local v2    # "basicAuth":Ltwitter4j/http/BasicAuthorization;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1630
    .restart local v1    # "auth":Ltwitter4j/http/Authorization;
    :cond_1
    :try_start_2
    invoke-direct {p0}, Ltwitter4j/Twitter;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v5

    invoke-interface {v5}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .restart local v3    # "oauthAccessToken":Ltwitter4j/http/AccessToken;
    goto :goto_0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 2
    .param p1, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1642
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/Twitter;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v1

    invoke-interface {v1, p1}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    .line 1643
    .local v0, "oauthAccessToken":Ltwitter4j/http/AccessToken;
    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    monitor-exit p0

    return-object v0

    .line 1642
    .end local v0    # "oauthAccessToken":Ltwitter4j/http/AccessToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1679
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/Twitter;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    new-instance v1, Ltwitter4j/http/RequestToken;

    invoke-direct {v1, p1, p2}, Ltwitter4j/http/RequestToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1687
    monitor-enter p0

    :try_start_0
    new-instance v0, Ltwitter4j/http/RequestToken;

    invoke-direct {v0, p1, p2}, Ltwitter4j/http/RequestToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .locals 3
    .param p1, "requestToken"    # Ltwitter4j/http/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1652
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/Twitter;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    .line 1653
    .local v0, "oauth":Ltwitter4j/http/OAuthSupport;
    invoke-interface {v0, p1}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;

    move-result-object v1

    .line 1654
    .local v1, "oauthAccessToken":Ltwitter4j/http/AccessToken;
    invoke-virtual {v1}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    monitor-exit p0

    return-object v1

    .line 1652
    .end local v0    # "oauth":Ltwitter4j/http/OAuthSupport;
    .end local v1    # "oauthAccessToken":Ltwitter4j/http/AccessToken;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .param p1, "requestToken"    # Ltwitter4j/http/RequestToken;
    .param p2, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1663
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/Twitter;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1598
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .locals 1
    .param p1, "callbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1605
    invoke-direct {p0}, Ltwitter4j/Twitter;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/http/OAuthSupport;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingFriendships(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1037
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1038
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/outgoing.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/IDsJSONImpl;->getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getPublicTimeline()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/public_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1163
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/rate_limit_status.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromJSONResponse(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByMe()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 392
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweeted_by_me.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 401
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweeted_by_me.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToMe()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 410
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweeted_to_me.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 419
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweeted_to_me.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweets(J)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 528
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 428
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweets_of_me.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 437
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweets_of_me.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSavedSearches()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1454
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1455
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "saved_searches.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/SavedSearchJSONImpl;->createSavedSearchList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/BasicAuthorization;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    check-cast v0, Ltwitter4j/http/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/http/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 152
    const/4 v0, -0x1

    iget-object v1, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 156
    :cond_1
    iget-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p0}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    .line 161
    :cond_2
    iget-object v0, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSentDirectMessages()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 902
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/sent.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 911
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 912
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/sent.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedUserCategories()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/suggestions.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/CategoryJSONImpl;->createCategoriesList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getTrends()Ltwitter4j/Trends;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->createTrends(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Trends;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMembers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 807
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/members.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMemberships(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 785
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 786
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/lists/memberships.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserListJSONImpl;->createUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/lists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/statuses.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltwitter4j/Paging;->SMCP:[C

    const-string v3, "per_page"

    invoke-virtual {p3, v2, v3}, Ltwitter4j/Paging;->asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscribers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 846
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/subscribers.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscriptions(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 795
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/lists/subscriptions.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserListJSONImpl;->createUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserLists(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 751
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/lists.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserListJSONImpl;->createUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 5
    .param p1, "categorySlug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 608
    iget-object v2, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "users/suggestions/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    .line 611
    .local v1, "res":Ltwitter4j/internal/http/HttpResponse;
    :try_start_0
    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    invoke-static {v2, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getUserTimeline()Ltwitter4j/ResponseList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getUserTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(I)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/Twitter;->getUserTimeline(ILtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(ILtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/user_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/Twitter;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/Twitter;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/user_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/Twitter;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 365
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/user_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyTrends()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends/weekly.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyTrends(Ljava/util/Date;Z)Ljava/util/List;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "excludeHashTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "trends/weekly.json?date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Ltwitter4j/Twitter;->toDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "&exclude=hashtags"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .locals 0
    .param p1, "x0"    # Ltwitter4j/internal/http/HttpResponseEvent;

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V

    return-void
.end method

.method public isOAuthEnabled()Z
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

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

.method public lookupUsers([I)Ltwitter4j/ResponseList;
    .locals 12
    .param p1, "ids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 572
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 573
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, v0, v2

    .line 574
    .local v3, "id":I
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 575
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    .end local v3    # "id":I
    :cond_1
    iget-object v5, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "users/lookup.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v8, 0x0

    new-instance v9, Ltwitter4j/internal/http/HttpParameter;

    const-string v10, "user_id"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v8

    iget-object v8, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v5, v6, v7, v8}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v5

    return-object v5
.end method

.method public lookupUsers([Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 12
    .param p1, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 555
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 556
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 557
    .local v4, "screenName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 558
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v4    # "screenName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "users/lookup.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v8, 0x0

    new-instance v9, Ltwitter4j/internal/http/HttpParameter;

    const-string v10, "screen_name"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v8

    iget-object v8, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v5, v6, v7, v8}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v5

    return-object v5
.end method

.method public reportSpam(I)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1436
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1437
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "report_spam.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public reportSpam(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1444
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1445
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "report_spam.json?screenName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public retweetStatus(J)Ltwitter4j/Status;
    .locals 8
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 519
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/retweet/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "source"

    iget-object v7, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public reverseGeoCode(Ltwitter4j/GeoQuery;)Ltwitter4j/ResponseList;
    .locals 5
    .param p1, "query"    # Ltwitter4j/GeoQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoQuery;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1541
    :try_start_0
    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "geo/reverse_geocode.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/GeoQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1545
    :goto_0
    return-object v1

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1545
    new-instance v1, Ltwitter4j/ResponseList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0

    .line 1547
    :cond_0
    throw v0
.end method

.method public search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;
    .locals 6
    .param p1, "query"    # Ltwitter4j/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    new-instance v1, Ltwitter4j/QueryResultJSONImpl;

    iget-object v2, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "search.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ltwitter4j/Query;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/QueryResultJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "te":Ltwitter4j/TwitterException;
    const/16 v1, 0x194

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 196
    new-instance v1, Ltwitter4j/QueryResultJSONImpl;

    invoke-direct {v1, p1}, Ltwitter4j/QueryResultJSONImpl;-><init>(Ltwitter4j/Query;)V

    goto :goto_0

    .line 198
    :cond_0
    throw v0
.end method

.method public searchUsers(Ljava/lang/String;I)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 589
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/search.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "q"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "per_page"

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "page"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public sendDirectMessage(ILjava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 931
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 932
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "direct_messages/new.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "user_id"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "text"

    invoke-direct {v5, v6, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 920
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 921
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "direct_messages/new.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "screen_name"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "text"

    invoke-direct {v5, v6, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 1700
    invoke-direct {p0}, Ltwitter4j/Twitter;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    new-instance v1, Ltwitter4j/http/AccessToken;

    invoke-direct {v1, p1, p2}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/http/OAuthSupport;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 1701
    return-void
.end method

.method public declared-synchronized setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 1
    .param p1, "accessToken"    # Ltwitter4j/http/AccessToken;

    .prologue
    .line 1671
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/Twitter;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/http/OAuthSupport;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    monitor-exit p0

    return-void

    .line 1671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 1584
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/NullAuthorization;

    if-eqz v0, :cond_1

    .line 1585
    new-instance v0, Ltwitter4j/http/OAuthAuthorization;

    iget-object v1, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, p1, p2}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    :cond_0
    monitor-exit p0

    return-void

    .line 1586
    :cond_1
    :try_start_1
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/BasicAuthorization;

    if-eqz v0, :cond_2

    .line 1587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Basic authenticated instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1588
    :cond_2
    :try_start_2
    iget-object v0, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v0, :cond_0

    .line 1589
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "consumer key/secret pair already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V
    .locals 0
    .param p1, "x0"    # Ltwitter4j/RateLimitStatusListener;

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V

    return-void
.end method

.method public showFriendship(II)Ltwitter4j/Relationship;
    .locals 5
    .param p1, "sourceId"    # I
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1021
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/show.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_id"

    const-string v4, "target_id"

    invoke-static {v3, p1, v4, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;ILjava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public showFriendship(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 5
    .param p1, "sourceScreenName"    # Ljava/lang/String;
    .param p2, "targetScreenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1012
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/show.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_screen_name"

    const-string v4, "target_screen_name"

    invoke-static {v3, p1, v4, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public showSavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1462
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1463
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "saved_searches/show/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public showStatus(J)Ltwitter4j/Status;
    .locals 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/show/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public showUser(I)Ltwitter4j/User;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "users/show.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public showUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "users/show.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public showUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 760
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/lists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public subscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 855
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/subscribers.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public test()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1566
    const/4 v0, -0x1

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "help/test.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1714
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Twitter{auth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 863
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 864
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/subscribers.json?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v3}, Ltwitter4j/User;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->delete(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public updateDeliveryDevice(Ltwitter4j/Device;)Ltwitter4j/User;
    .locals 8
    .param p1, "device"    # Ltwitter4j/Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1170
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1171
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account/update_delivery_device.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "device"

    invoke-virtual {p1}, Ltwitter4j/Device;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1150
    .local v0, "profile":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v1, "name"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v1, "email"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v1, "url"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const-string v1, "location"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v1, "description"

    invoke-direct {p0, v0, v1, p5}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance v2, Ltwitter4j/UserJSONImpl;

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "account/update_profile.json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v5, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v1, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v2, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v2
.end method

.method public updateProfileBackgroundImage(Ljava/io/File;Z)Ltwitter4j/User;
    .locals 7
    .param p1, "image"    # Ljava/io/File;
    .param p2, "tile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1225
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1226
    invoke-direct {p0, p1}, Ltwitter4j/Twitter;->checkFileValidity(Ljava/io/File;)V

    .line 1227
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account/update_profile_background_image.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "image"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "tile"

    invoke-direct {v5, v6, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 6
    .param p1, "profileBackgroundColor"    # Ljava/lang/String;
    .param p2, "profileTextColor"    # Ljava/lang/String;
    .param p3, "profileLinkColor"    # Ljava/lang/String;
    .param p4, "profileSidebarFillColor"    # Ljava/lang/String;
    .param p5, "profileSidebarBorderColor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1185
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1187
    .local v0, "colors":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v1, "profile_background_color"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v1, "profile_text_color"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v1, "profile_link_color"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v1, "profile_sidebar_fill_color"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v1, "profile_sidebar_border_color"

    invoke-direct {p0, v0, v1, p5}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    new-instance v2, Ltwitter4j/UserJSONImpl;

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "account/update_profile_colors.json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v5, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v1, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v2, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v2
.end method

.method public updateProfileImage(Ljava/io/File;)Ltwitter4j/User;
    .locals 7
    .param p1, "image"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1213
    invoke-direct {p0, p1}, Ltwitter4j/Twitter;->checkFileValidity(Ljava/io/File;)V

    .line 1214
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 1215
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account/update_profile_image.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "image"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 8
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 453
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "source"

    iget-object v7, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;J)Ltwitter4j/Status;
    .locals 8
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "inReplyToStatusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 474
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "in_reply_to_status_id"

    invoke-direct {v5, v6, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "source"

    iget-object v7, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;JLtwitter4j/GeoLocation;)Ltwitter4j/Status;
    .locals 9
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "inReplyToStatusId"    # J
    .param p4, "location"    # Ltwitter4j/GeoLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 484
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "lat"

    invoke-virtual {p4}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "long"

    invoke-virtual {p4}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "in_reply_to_status_id"

    invoke-direct {v5, v6, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "source"

    iget-object v7, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;Ltwitter4j/GeoLocation;)Ltwitter4j/Status;
    .locals 9
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "location"    # Ltwitter4j/GeoLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 462
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "lat"

    invoke-virtual {p2}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "long"

    invoke-virtual {p2}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "source"

    iget-object v7, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    .locals 6
    .param p1, "latestStatus"    # Ltwitter4j/StatusUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 496
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 497
    invoke-virtual {p1}, Ltwitter4j/StatusUpdate;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    .line 498
    .local v0, "array":[Ltwitter4j/internal/http/HttpParameter;
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 499
    .local v1, "combined":[Ltwitter4j/internal/http/HttpParameter;
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "source"

    iget-object v5, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 501
    new-instance v2, Ltwitter4j/StatusJSONImpl;

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "statuses/update.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v1, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v2
.end method

.method public updateUserList(ILjava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .param p2, "newListName"    # Ljava/lang/String;
    .param p3, "isPublicList"    # Z
    .param p4, "newDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-virtual {p0}, Ltwitter4j/Twitter;->ensureAuthorizationEnabled()V

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v0, "httpParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 736
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_0
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "mode"

    if-eqz p3, :cond_2

    const-string v1, "public"

    :goto_0
    invoke-direct {v2, v3, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    if-eqz p4, :cond_1

    .line 740
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "description"

    invoke-direct {v1, v2, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_1
    new-instance v2, Ltwitter4j/UserListJSONImpl;

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "/lists/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ".json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v5, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v1, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v2, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v2

    .line 738
    :cond_2
    const-string v1, "private"

    goto :goto_0
.end method

.method public verifyCredentials()Ltwitter4j/User;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1136
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account/verify_credentials.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 1138
    .local v0, "user":Ltwitter4j/User;
    invoke-interface {v0}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Twitter;->screenName:Ljava/lang/String;

    .line 1139
    invoke-interface {v0}, Ltwitter4j/User;->getId()I

    move-result v1

    iput v1, p0, Ltwitter4j/Twitter;->id:I

    .line 1140
    return-object v0
.end method
