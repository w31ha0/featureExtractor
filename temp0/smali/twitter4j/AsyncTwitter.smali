.class public Ltwitter4j/AsyncTwitter;
.super Ltwitter4j/TwitterOAuthSupportBase;
.source "AsyncTwitter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/api/SearchMethodsAsync;
.implements Ltwitter4j/api/TimelineMethodsAsync;
.implements Ltwitter4j/api/StatusMethodsAsync;
.implements Ltwitter4j/api/UserMethodsAsync;
.implements Ltwitter4j/api/ListMethodsAsync;
.implements Ltwitter4j/api/ListMembersMethodsAsync;
.implements Ltwitter4j/api/ListSubscribersMethodsAsync;
.implements Ltwitter4j/api/DirectMessageMethodsAsync;
.implements Ltwitter4j/api/FriendshipMethodsAsync;
.implements Ltwitter4j/api/SocialGraphMethodsAsync;
.implements Ltwitter4j/api/AccountMethodsAsync;
.implements Ltwitter4j/api/FavoriteMethodsAsync;
.implements Ltwitter4j/api/NotificationMethodsAsync;
.implements Ltwitter4j/api/BlockMethodsAsync;
.implements Ltwitter4j/api/SpamReportingMethodsAsync;
.implements Ltwitter4j/api/SavedSearchesMethodsAsync;
.implements Ltwitter4j/api/LocalTrendsMethodsAsync;
.implements Ltwitter4j/api/GeoMethodsAsync;
.implements Ltwitter4j/api/HelpMethodsAsync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/AsyncTwitter$AsyncTask;
    }
.end annotation


# static fields
.field static class$twitter4j$AsyncTwitter:Ljava/lang/Class; = null

.field private static transient dispatcher:Ltwitter4j/internal/async/Dispatcher; = null

.field private static final serialVersionUID:J = -0x1be038d7c798e703L


# instance fields
.field private listener:Ltwitter4j/TwitterListener;

.field private shutdown:Z

.field private twitter:Ltwitter4j/Twitter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "listener"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 83
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 84
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0}, Ltwitter4j/TwitterFactory;-><init>()V

    iget-object v1, p0, Ltwitter4j/AsyncTwitter;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    .line 85
    iput-object p3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    .line 86
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/TwitterListener;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/http/Authorization;
    .param p3, "listener"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    .line 1636
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 91
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v0, p2}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    .line 92
    iput-object p3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    .line 93
    return-void
.end method

.method static access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;
    .locals 1
    .param p0, "x0"    # Ltwitter4j/AsyncTwitter;

    .prologue
    .line 51
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 1644
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

.method private getDispatcher()Ltwitter4j/internal/async/Dispatcher;
    .locals 2

    .prologue
    .line 1654
    iget-boolean v0, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    if-eqz v0, :cond_0

    .line 1655
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1657
    :cond_0
    sget-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-nez v0, :cond_1

    .line 1658
    new-instance v0, Ltwitter4j/internal/async/DispatcherFactory;

    iget-object v1, p0, Ltwitter4j/AsyncTwitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/internal/async/DispatcherFactory;-><init>(Ltwitter4j/internal/async/DispatcherConfiguration;)V

    invoke-virtual {v0}, Ltwitter4j/internal/async/DispatcherFactory;->getInstance()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 1660
    :cond_1
    sget-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    return-object v0
.end method


# virtual methods
.method public addUserListMember(II)V
    .locals 7
    .param p1, "listId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 822
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$58;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$58;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;II)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 827
    return-void
.end method

.method public checkUserListMembership(Ljava/lang/String;II)V
    .locals 8
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 844
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$60;

    sget-object v2, Ltwitter4j/TwitterMethod;->CHECK_LIST_MEMBERSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$60;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;II)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 849
    return-void
.end method

.method public checkUserListSubscription(Ljava/lang/String;II)V
    .locals 8
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 890
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$64;

    sget-object v2, Ltwitter4j/TwitterMethod;->CHECK_LIST_SUBSCRIPTION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$64;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;II)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 895
    return-void
.end method

.method public createBlock(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1433
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$111;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$111;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1438
    return-void
.end method

.method public createBlockAsync(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1444
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$112;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$112;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1449
    return-void
.end method

.method public createFavorite(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 1365
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$105;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FAVORITE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$105;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1370
    return-void
.end method

.method public createFriendship(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 991
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$73;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$73;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 996
    return-void
.end method

.method public createFriendship(IZ)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "follow"    # Z

    .prologue
    .line 1013
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$75;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$75;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IZ)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1018
    return-void
.end method

.method public createFriendship(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 980
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$72;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$72;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 985
    return-void
.end method

.method public createFriendship(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "follow"    # Z

    .prologue
    .line 1002
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$74;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$74;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1007
    return-void
.end method

.method public createUserList(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "listName"    # Ljava/lang/String;
    .param p2, "isPublicList"    # Z
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 722
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$49;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$49;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 727
    return-void
.end method

.method public deleteUserListMember(II)V
    .locals 7
    .param p1, "listId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 833
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$59;

    sget-object v2, Ltwitter4j/TwitterMethod;->DELETE_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$59;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;II)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 838
    return-void
.end method

.method public destroyBlock(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1466
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$114;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$114;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1471
    return-void
.end method

.method public destroyBlock(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1455
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$113;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$113;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1460
    return-void
.end method

.method public destroyDirectMessage(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 969
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$71;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$71;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 974
    return-void
.end method

.method public destroyFavorite(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 1376
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$106;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FAVORITE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$106;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1381
    return-void
.end method

.method public destroyFriendship(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1035
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$77;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$77;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1040
    return-void
.end method

.method public destroyFriendship(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1024
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$76;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$76;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1029
    return-void
.end method

.method public destroyStatus(J)V
    .locals 7
    .param p1, "statusId"    # J

    .prologue
    .line 496
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$32;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$32;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method

.method public destroyUserList(I)V
    .locals 4
    .param p1, "listId"    # I

    .prologue
    .line 766
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$53;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$53;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 771
    return-void
.end method

.method public disableNotification(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1420
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$110;

    sget-object v2, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$110;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1425
    return-void
.end method

.method public disableNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1409
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$109;

    sget-object v2, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$109;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1414
    return-void
.end method

.method public enableNotification(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1398
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$108;

    sget-object v2, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$108;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1403
    return-void
.end method

.method public enableNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1387
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$107;

    sget-object v2, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$107;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1392
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public existsBlock(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1488
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$116;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$116;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1493
    return-void
.end method

.method public existsBlock(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1477
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$115;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$115;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1482
    return-void
.end method

.method public existsFriendship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "userA"    # Ljava/lang/String;
    .param p2, "userB"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$78;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$78;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1051
    return-void
.end method

.method public getAvailableTrends()V
    .locals 4

    .prologue
    .line 1558
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$122;

    sget-object v2, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$122;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1563
    return-void
.end method

.method public getAvailableTrends(Ltwitter4j/GeoLocation;)V
    .locals 4
    .param p1, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    .line 1569
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$123;

    sget-object v2, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$123;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/GeoLocation;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1574
    return-void
.end method

.method public getBlockingUsers()V
    .locals 4

    .prologue
    .line 1499
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$117;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$117;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1504
    return-void
.end method

.method public getBlockingUsers(I)V
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 1510
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$118;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$118;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1515
    return-void
.end method

.method public getBlockingUsersIDs()V
    .locals 4

    .prologue
    .line 1521
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$119;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$119;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1526
    return-void
.end method

.method public getCurrentTrends()V
    .locals 4

    .prologue
    .line 153
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$3;

    sget-object v2, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$3;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public getCurrentTrends(Z)V
    .locals 4
    .param p1, "excludeHashTags"    # Z

    .prologue
    .line 165
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$4;

    sget-object v2, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$4;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Z)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method public getDailyTrends()V
    .locals 4

    .prologue
    .line 177
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$5;

    sget-object v2, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$5;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public getDailyTrends(Ljava/util/Date;Z)V
    .locals 7
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "excludeHashTags"    # Z

    .prologue
    .line 189
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$6;

    sget-object v2, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$6;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/util/Date;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method public getDirectMessages()V
    .locals 4

    .prologue
    .line 903
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$65;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$65;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 908
    return-void
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 914
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$66;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$66;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 919
    return-void
.end method

.method public getFavorites()V
    .locals 4

    .prologue
    .line 1321
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$101;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$101;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1326
    return-void
.end method

.method public getFavorites(I)V
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 1332
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$102;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$102;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1337
    return-void
.end method

.method public getFavorites(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1343
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$103;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$103;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1348
    return-void
.end method

.method public getFavorites(Ljava/lang/String;I)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "page"    # I

    .prologue
    .line 1354
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$104;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$104;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1359
    return-void
.end method

.method public getFollowersIDs()V
    .locals 4

    .prologue
    .line 1172
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$89;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$89;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1177
    return-void
.end method

.method public getFollowersIDs(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1194
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$91;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$91;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1199
    return-void
.end method

.method public getFollowersIDs(IJ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "cursor"    # J

    .prologue
    .line 1205
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$92;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$92;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1210
    return-void
.end method

.method public getFollowersIDs(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 1183
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$90;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$90;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1188
    return-void
.end method

.method public getFollowersIDs(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1216
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$93;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$93;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1221
    return-void
.end method

.method public getFollowersIDs(Ljava/lang/String;J)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 1227
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$94;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$94;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1232
    return-void
.end method

.method public getFollowersStatuses()V
    .locals 2

    .prologue
    .line 667
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/AsyncTwitter;->getFollowersStatuses(J)V

    .line 668
    return-void
.end method

.method public getFollowersStatuses(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 692
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/AsyncTwitter;->getFollowersStatuses(IJ)V

    .line 693
    return-void
.end method

.method public getFollowersStatuses(IJ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "cursor"    # J

    .prologue
    .line 710
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$48;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$48;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method

.method public getFollowersStatuses(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 674
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$46;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$46;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 679
    return-void
.end method

.method public getFollowersStatuses(Ljava/lang/String;)V
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 685
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/AsyncTwitter;->getFollowersStatuses(Ljava/lang/String;J)V

    .line 686
    return-void
.end method

.method public getFollowersStatuses(Ljava/lang/String;J)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 699
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$47;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$47;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public getFriendsIDs()V
    .locals 4

    .prologue
    .line 1104
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$83;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$83;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1109
    return-void
.end method

.method public getFriendsIDs(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1127
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$85;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$85;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1132
    return-void
.end method

.method public getFriendsIDs(IJ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "cursor"    # J

    .prologue
    .line 1138
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$86;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$86;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1143
    return-void
.end method

.method public getFriendsIDs(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 1115
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$84;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$84;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1121
    return-void
.end method

.method public getFriendsIDs(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1149
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$87;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$87;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1154
    return-void
.end method

.method public getFriendsIDs(Ljava/lang/String;J)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 1160
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$88;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$88;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1166
    return-void
.end method

.method public getFriendsStatuses()V
    .locals 4

    .prologue
    .line 609
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$42;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$42;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 614
    return-void
.end method

.method public getFriendsStatuses(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 638
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/AsyncTwitter;->getFriendsStatuses(IJ)V

    .line 639
    return-void
.end method

.method public getFriendsStatuses(IJ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "cursor"    # J

    .prologue
    .line 656
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$45;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$45;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 661
    return-void
.end method

.method public getFriendsStatuses(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 620
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$43;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$43;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public getFriendsStatuses(Ljava/lang/String;)V
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 631
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/AsyncTwitter;->getFriendsStatuses(Ljava/lang/String;J)V

    .line 632
    return-void
.end method

.method public getFriendsStatuses(Ljava/lang/String;J)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 645
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$44;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$44;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

.method public getFriendsTimeline()V
    .locals 4

    .prologue
    .line 258
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$12;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$12;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public getFriendsTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 269
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$13;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$13;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public getGeoDetails(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1615
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$127;

    sget-object v2, Ltwitter4j/TwitterMethod;->GEO_DETAILS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$127;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1620
    return-void
.end method

.method public getHomeTimeline()V
    .locals 4

    .prologue
    .line 236
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$10;

    sget-object v2, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$10;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 247
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$11;

    sget-object v2, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$11;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0}, Ltwitter4j/Twitter;->getId()I

    move-result v0

    return v0
.end method

.method public getIncomingFriendships(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 1079
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$81;

    sget-object v2, Ltwitter4j/TwitterMethod;->INCOMING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$81;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method

.method public getLocationTrends(I)V
    .locals 4
    .param p1, "woeid"    # I

    .prologue
    .line 1580
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$124;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOCATION_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$124;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1585
    return-void
.end method

.method public getMentions()V
    .locals 4

    .prologue
    .line 342
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$18;

    sget-object v2, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$18;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public getMentions(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 353
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$19;

    sget-object v2, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$19;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public getNearbyPlaces(Ltwitter4j/GeoQuery;)V
    .locals 4
    .param p1, "query"    # Ltwitter4j/GeoQuery;

    .prologue
    .line 1593
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$125;

    sget-object v2, Ltwitter4j/TwitterMethod;->NEAR_BY_PLACES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$125;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1598
    return-void
.end method

.method public getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1697
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .param p1, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1706
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1742
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
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
    .line 1750
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2, p3}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .locals 1
    .param p1, "requestToken"    # Ltwitter4j/http/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1715
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .param p1, "requestToken"    # Ltwitter4j/http/RequestToken;
    .param p2, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1724
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1676
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0}, Ltwitter4j/Twitter;->getOAuthRequestToken()Ltwitter4j/http/RequestToken;

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
    .line 1684
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingFriendships(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 1090
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$82;

    sget-object v2, Ltwitter4j/TwitterMethod;->OUTGOING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$82;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1095
    return-void
.end method

.method public getPublicTimeline()V
    .locals 4

    .prologue
    .line 225
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$9;

    sget-object v2, Ltwitter4j/TwitterMethod;->PUBLIC_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$9;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public getRateLimitStatus()V
    .locals 4

    .prologue
    .line 1251
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$96;

    sget-object v2, Ltwitter4j/TwitterMethod;->RATE_LIMIT_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$96;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1256
    return-void
.end method

.method public getRetweetedByMe()V
    .locals 4

    .prologue
    .line 364
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$20;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$20;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method public getRetweetedByMe(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 375
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$21;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$21;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method public getRetweetedToMe()V
    .locals 4

    .prologue
    .line 386
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$22;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$22;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method

.method public getRetweetedToMe(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 397
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$23;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$23;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public getRetweets(J)V
    .locals 7
    .param p1, "statusId"    # J

    .prologue
    .line 518
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$34;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$34;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 523
    return-void
.end method

.method public getRetweetsOfMe()V
    .locals 4

    .prologue
    .line 408
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$24;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$24;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 419
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$25;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$25;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0}, Ltwitter4j/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages()V
    .locals 4

    .prologue
    .line 925
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$67;

    sget-object v2, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$67;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 930
    return-void
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 936
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$68;

    sget-object v2, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$68;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 941
    return-void
.end method

.method public getSuggestedUserCategories()V
    .locals 4

    .prologue
    .line 586
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$40;

    sget-object v2, Ltwitter4j/TwitterMethod;->SUGGESTED_USER_CATEGORIES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$40;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 591
    return-void
.end method

.method public getTrends()V
    .locals 4

    .prologue
    .line 141
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$2;

    sget-object v2, Ltwitter4j/TwitterMethod;->TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$2;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public getUserListMembers(Ljava/lang/String;IJ)V
    .locals 9
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "cursor"    # J

    .prologue
    .line 811
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$57;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$57;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 816
    return-void
.end method

.method public getUserListMemberships(Ljava/lang/String;J)V
    .locals 8
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 788
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$55;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_MEMBERSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$55;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 793
    return-void
.end method

.method public getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)V
    .locals 8
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 777
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$54;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$54;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;ILtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 782
    return-void
.end method

.method public getUserListSubscribers(Ljava/lang/String;IJ)V
    .locals 9
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "cursor"    # J

    .prologue
    .line 857
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$61;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_SUBSCRIBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$61;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 862
    return-void
.end method

.method public getUserListSubscriptions(Ljava/lang/String;J)V
    .locals 8
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 799
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$56;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_SUBSCRIPTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$56;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 804
    return-void
.end method

.method public getUserLists(Ljava/lang/String;J)V
    .locals 8
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 744
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$51;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$51;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 749
    return-void
.end method

.method public getUserSuggestions(Ljava/lang/String;)V
    .locals 4
    .param p1, "categorySlug"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$41;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$41;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method public getUserTimeline()V
    .locals 4

    .prologue
    .line 331
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$17;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$17;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method public getUserTimeline(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 324
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->getUserTimeline(ILtwitter4j/Paging;)V

    .line 325
    return-void
.end method

.method public getUserTimeline(ILtwitter4j/Paging;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 293
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$15;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$15;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILtwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public getUserTimeline(Ljava/lang/String;)V
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)V

    .line 318
    return-void
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 280
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$14;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$14;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 305
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$16;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$16;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public getWeeklyTrends()V
    .locals 4

    .prologue
    .line 201
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$7;

    sget-object v2, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$7;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public getWeeklyTrends(Ljava/util/Date;Z)V
    .locals 7
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "excludeHashTags"    # Z

    .prologue
    .line 213
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$8;

    sget-object v2, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$8;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/util/Date;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .locals 0
    .param p1, "x0"    # Ltwitter4j/internal/http/HttpResponseEvent;

    .prologue
    .line 51
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V

    return-void
.end method

.method public isOAuthEnabled()Z
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->isOAuthEnabled()Z

    move-result v0

    return v0
.end method

.method public lookupUsers([I)V
    .locals 4
    .param p1, "ids"    # [I

    .prologue
    .line 564
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$38;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$38;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;[I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public lookupUsers([Ljava/lang/String;)V
    .locals 4
    .param p1, "screenNames"    # [Ljava/lang/String;

    .prologue
    .line 553
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$37;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$37;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 558
    return-void
.end method

.method public reportSpam(I)V
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1534
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$120;

    sget-object v2, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$120;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1539
    return-void
.end method

.method public reportSpam(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1545
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$121;

    sget-object v2, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$121;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1550
    return-void
.end method

.method public retweetStatus(J)V
    .locals 7
    .param p1, "statusId"    # J

    .prologue
    .line 507
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$33;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEET_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$33;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 512
    return-void
.end method

.method public reverseGeoCode(Ltwitter4j/GeoQuery;)V
    .locals 4
    .param p1, "query"    # Ltwitter4j/GeoQuery;

    .prologue
    .line 1604
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$126;

    sget-object v2, Ltwitter4j/TwitterMethod;->REVERSE_GEO_CODE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$126;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1609
    return-void
.end method

.method public search(Ltwitter4j/Query;)V
    .locals 4
    .param p1, "query"    # Ltwitter4j/Query;

    .prologue
    .line 130
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$1;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$1;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Query;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public searchUsers(Ljava/lang/String;I)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I

    .prologue
    .line 575
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$39;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$39;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public sendDirectMessage(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 958
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$70;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$70;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 947
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$69;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$69;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method

.method public setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 1764
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    return-void
.end method

.method public setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 1
    .param p1, "accessToken"    # Ltwitter4j/http/AccessToken;

    .prologue
    .line 1733
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 1734
    return-void
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 1668
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    return-void
.end method

.method public setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V
    .locals 0
    .param p1, "x0"    # Ltwitter4j/RateLimitStatusListener;

    .prologue
    .line 51
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V

    return-void
.end method

.method public showFriendship(II)V
    .locals 7
    .param p1, "sourceId"    # I
    .param p2, "targetId"    # I

    .prologue
    .line 1068
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$80;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$80;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;II)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1073
    return-void
.end method

.method public showFriendship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "sourceScreenName"    # Ljava/lang/String;
    .param p2, "targetScreenName"    # Ljava/lang/String;

    .prologue
    .line 1057
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$79;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$79;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1062
    return-void
.end method

.method public showStatus(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 430
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$26;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$26;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 435
    return-void
.end method

.method public showUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 542
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$36;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$36;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public showUser(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$35;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$35;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method public showUserList(Ljava/lang/String;I)V
    .locals 7
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 755
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$52;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$52;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 760
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 1644
    sget-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.AsyncTwitter"

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 1645
    :try_start_0
    iget-boolean v1, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    if-eqz v1, :cond_1

    .line 1646
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already shut down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1651
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1644
    :cond_0
    sget-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    goto :goto_0

    .line 1648
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v1

    invoke-interface {v1}, Ltwitter4j/internal/async/Dispatcher;->shutdown()V

    .line 1649
    const/4 v1, 0x0

    sput-object v1, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 1650
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 1651
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    return-void
.end method

.method public subscribeUserList(Ljava/lang/String;I)V
    .locals 7
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I

    .prologue
    .line 868
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$62;

    sget-object v2, Ltwitter4j/TwitterMethod;->SUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$62;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 873
    return-void
.end method

.method public test()V
    .locals 4

    .prologue
    .line 1628
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$128;

    sget-object v2, Ltwitter4j/TwitterMethod;->TEST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$128;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1633
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeUserList(Ljava/lang/String;I)V
    .locals 7
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I

    .prologue
    .line 879
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$63;

    sget-object v2, Ltwitter4j/TwitterMethod;->UNSUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$63;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 884
    return-void
.end method

.method public updateDeliveryDevice(Ltwitter4j/Device;)V
    .locals 4
    .param p1, "device"    # Ltwitter4j/Device;

    .prologue
    .line 1262
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$97;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_DELIVERY_DEVICE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$97;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Device;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1267
    return-void
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    .line 1239
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitter$95;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitter$95;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1245
    return-void
.end method

.method public updateProfileBackgroundImage(Ljava/io/File;Z)V
    .locals 7
    .param p1, "image"    # Ljava/io/File;
    .param p2, "tile"    # Z

    .prologue
    .line 1306
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$100;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$100;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/io/File;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1315
    return-void
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "profileBackgroundColor"    # Ljava/lang/String;
    .param p2, "profileTextColor"    # Ljava/lang/String;
    .param p3, "profileLinkColor"    # Ljava/lang/String;
    .param p4, "profileSidebarFillColor"    # Ljava/lang/String;
    .param p5, "profileSidebarBorderColor"    # Ljava/lang/String;

    .prologue
    .line 1276
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitter$98;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_COLORS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitter$98;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1286
    return-void
.end method

.method public updateProfileImage(Ljava/io/File;)V
    .locals 4
    .param p1, "image"    # Ljava/io/File;

    .prologue
    .line 1292
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$99;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$99;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1299
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$27;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$27;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 446
    return-void
.end method

.method public updateStatus(Ljava/lang/String;J)V
    .locals 8
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "inReplyToStatusId"    # J

    .prologue
    .line 463
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$29;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$29;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method public updateStatus(Ljava/lang/String;JLtwitter4j/GeoLocation;)V
    .locals 9
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "inReplyToStatusId"    # J
    .param p4, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    .line 474
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$30;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$30;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;JLtwitter4j/GeoLocation;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 479
    return-void
.end method

.method public updateStatus(Ljava/lang/String;Ltwitter4j/GeoLocation;)V
    .locals 7
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    .line 452
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$28;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$28;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ltwitter4j/GeoLocation;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public updateStatus(Ltwitter4j/StatusUpdate;)V
    .locals 4
    .param p1, "latestStatus"    # Ltwitter4j/StatusUpdate;

    .prologue
    .line 485
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$31;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$31;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/StatusUpdate;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 490
    return-void
.end method

.method public updateUserList(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p1, "listId"    # I
    .param p2, "newListName"    # Ljava/lang/String;
    .param p3, "isPublicList"    # Z
    .param p4, "newDescription"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$50;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$50;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method
