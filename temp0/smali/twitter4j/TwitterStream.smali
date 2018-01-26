.class public final Ltwitter4j/TwitterStream;
.super Ltwitter4j/TwitterBase;
.source "TwitterStream.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/TwitterStream$StreamHandlingThread;
    }
.end annotation


# static fields
.field private static final HTTP_ERROR_INITIAL_WAIT:I = 0x2710

.field private static final HTTP_ERROR_WAIT_CAP:I = 0x3a980

.field private static final NO_WAIT:I = 0x0

.field private static final TCP_ERROR_INITIAL_WAIT:I = 0xfa

.field private static final TCP_ERROR_WAIT_CAP:I = 0x3e80

.field static class$twitter4j$TwitterStream:Ljava/lang/Class; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field private static final serialVersionUID:J = -0xa96122766a19599L


# instance fields
.field private handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

.field private final http:Ltwitter4j/internal/http/HttpClientWrapper;

.field private statusListener:Ltwitter4j/StatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.TwitterStream"

    invoke-static {v0}, Ltwitter4j/TwitterStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/TwitterStream;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 63
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ltwitter4j/StreamingReadTimeoutConfiguration;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/StreamingReadTimeoutConfiguration;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 64
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 76
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ltwitter4j/StreamingReadTimeoutConfiguration;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/StreamingReadTimeoutConfiguration;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 77
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/StatusListener;)V
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "listener"    # Ltwitter4j/StatusListener;

    .prologue
    .line 89
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 90
    iput-object p3, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    .line 91
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ltwitter4j/StreamingReadTimeoutConfiguration;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/StreamingReadTimeoutConfiguration;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 92
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 93
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/StatusListener;)V
    .locals 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/http/Authorization;
    .param p3, "listener"    # Ltwitter4j/StatusListener;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 98
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ltwitter4j/StreamingReadTimeoutConfiguration;

    invoke-direct {v1, p1}, Ltwitter4j/StreamingReadTimeoutConfiguration;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 99
    iput-object p3, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    .line 100
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 101
    return-void
.end method

.method static access$000(Ltwitter4j/TwitterStream;)Ltwitter4j/StatusListener;
    .locals 1
    .param p0, "x0"    # Ltwitter4j/TwitterStream;

    .prologue
    .line 47
    iget-object v0, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    return-object v0
.end method

.method static access$100()Ltwitter4j/internal/logging/Logger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ltwitter4j/TwitterStream;->logger:Ltwitter4j/internal/logging/Logger;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
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

.method private declared-synchronized startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V
    .locals 2
    .param p1, "handler"    # Ltwitter4j/TwitterStream$StreamHandlingThread;

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->cleanup()V

    .line 330
    iget-object v0, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StatusListener is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 333
    :cond_0
    :try_start_1
    iput-object p1, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 334
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    invoke-virtual {v0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 1

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 340
    :try_start_1
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    invoke-virtual {v0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-super {p0, p1}, Ltwitter4j/TwitterBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public filter(I[I[Ljava/lang/String;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "follow"    # [I
    .param p3, "track"    # [Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Ltwitter4j/TwitterStream$6;

    invoke-direct {v0, p0, p1, p2, p3}, Ltwitter4j/TwitterStream$6;-><init>(Ltwitter4j/TwitterStream;I[I[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 308
    return-void
.end method

.method public filter(Ltwitter4j/FilterQuery;)V
    .locals 1
    .param p1, "query"    # Ltwitter4j/FilterQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ltwitter4j/TwitterStream$5;

    invoke-direct {v0, p0, p1}, Ltwitter4j/TwitterStream$5;-><init>(Ltwitter4j/TwitterStream;Ltwitter4j/FilterQuery;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 264
    return-void
.end method

.method public firehose(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 114
    new-instance v0, Ltwitter4j/TwitterStream$1;

    invoke-direct {v0, p0, p1}, Ltwitter4j/TwitterStream$1;-><init>(Ltwitter4j/TwitterStream;I)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 119
    return-void
.end method

.method public getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;
    .locals 2
    .param p1, "count"    # I
    .param p2, "follow"    # [I
    .param p3, "track"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v1, Ltwitter4j/FilterQuery;

    const/4 v0, 0x0

    check-cast v0, [[D

    invoke-direct {v1, p1, p2, p3, v0}, Ltwitter4j/FilterQuery;-><init>(I[I[Ljava/lang/String;[[D)V

    invoke-virtual {p0, v1}, Ltwitter4j/TwitterStream;->getFilterStream(Ltwitter4j/FilterQuery;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getFilterStream(Ltwitter4j/FilterQuery;)Ltwitter4j/StatusStream;
    .locals 6
    .param p1, "query"    # Ltwitter4j/FilterQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 281
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "statuses/filter.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ltwitter4j/FilterQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getFirehoseStream(I)Ltwitter4j/StatusStream;
    .locals 9
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 134
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "statuses/firehose.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v5, 0x0

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    iget-object v5, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getLinksStream(I)Ltwitter4j/StatusStream;
    .locals 9
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 171
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "statuses/links.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v5, 0x0

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    iget-object v5, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRetweetStream()Ltwitter4j/StatusStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 207
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "statuses/retweet.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v5, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSampleStream()Ltwitter4j/StatusStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 242
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "statuses/sample.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Ltwitter4j/TwitterBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public links(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 151
    new-instance v0, Ltwitter4j/TwitterStream$2;

    invoke-direct {v0, p0, p1}, Ltwitter4j/TwitterStream$2;-><init>(Ltwitter4j/TwitterStream;I)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 156
    return-void
.end method

.method public retweet()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 188
    new-instance v0, Ltwitter4j/TwitterStream$3;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterStream$3;-><init>(Ltwitter4j/TwitterStream;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 193
    return-void
.end method

.method public sample()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureBasicEnabled()V

    .line 223
    new-instance v0, Ltwitter4j/TwitterStream$4;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterStream$4;-><init>(Ltwitter4j/TwitterStream;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 228
    return-void
.end method

.method public setStatusListener(Ltwitter4j/StatusListener;)V
    .locals 0
    .param p1, "statusListener"    # Ltwitter4j/StatusListener;

    .prologue
    .line 347
    iput-object p1, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    .line 348
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Ltwitter4j/TwitterBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
