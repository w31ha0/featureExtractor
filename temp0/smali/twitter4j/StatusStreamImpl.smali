.class Ltwitter4j/StatusStreamImpl;
.super Ljava/lang/Object;
.source "StatusStreamImpl.java"

# interfaces
.implements Ltwitter4j/StatusStream;


# static fields
.field static class$twitter4j$StatusStreamImpl:Ljava/lang/Class;

.field private static final logger:Ltwitter4j/internal/logging/Logger;


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private is:Ljava/io/InputStream;

.field private response:Ltwitter4j/internal/http/HttpResponse;

.field private streamAlive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Ltwitter4j/StatusStreamImpl;->class$twitter4j$StatusStreamImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.StatusStreamImpl"

    invoke-static {v0}, Ltwitter4j/StatusStreamImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusStreamImpl;->class$twitter4j$StatusStreamImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusStreamImpl;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/StatusStreamImpl;->class$twitter4j$StatusStreamImpl:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/StatusStreamImpl;->streamAlive:Z

    .line 55
    iput-object p1, p0, Ltwitter4j/StatusStreamImpl;->is:Ljava/io/InputStream;

    .line 56
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Ltwitter4j/StatusStreamImpl;->br:Ljava/io/BufferedReader;

    .line 57
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/StatusStreamImpl;-><init>(Ljava/io/InputStream;)V

    .line 62
    iput-object p1, p0, Ltwitter4j/StatusStreamImpl;->response:Ltwitter4j/internal/http/HttpResponse;

    .line 63
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
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


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 110
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 111
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpResponse;->disconnect()V

    .line 114
    :cond_0
    return-void
.end method

.method public next(Ltwitter4j/StatusListener;)V
    .locals 6
    .param p1, "listener"    # Ltwitter4j/StatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 69
    iget-boolean v4, p0, Ltwitter4j/StatusStreamImpl;->streamAlive:Z

    if-nez v4, :cond_0

    .line 70
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Stream already closed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :cond_0
    :try_start_0
    iget-object v4, p0, Ltwitter4j/StatusStreamImpl;->br:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 77
    new-instance v4, Ljava/io/IOException;

    const-string v5, "the end of the stream has been reached"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Ltwitter4j/StatusStreamImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Ltwitter4j/StatusStreamImpl;->streamAlive:Z

    .line 100
    new-instance v4, Ltwitter4j/TwitterException;

    const-string v5, "Stream closed."

    invoke-direct {v4, v5, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 79
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 80
    sget-object v4, Ltwitter4j/StatusStreamImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v5, "received:"

    invoke-virtual {v4, v5, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :try_start_3
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "text"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 84
    new-instance v4, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v4, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {p1, v4}, Ltwitter4j/StatusListener;->onStatus(Ltwitter4j/Status;)V

    .line 103
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :cond_2
    :goto_1
    return-void

    .line 85
    .restart local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :cond_3
    const-string v4, "delete"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 86
    new-instance v4, Ltwitter4j/StatusDeletionNoticeImpl;

    invoke-direct {v4, v1}, Ltwitter4j/StatusDeletionNoticeImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {p1, v4}, Ltwitter4j/StatusListener;->onDeletionNotice(Ltwitter4j/StatusDeletionNotice;)V
    :try_end_3
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 90
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :catch_1
    move-exception v2

    .line 91
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    :try_start_4
    invoke-interface {p1, v2}, Ltwitter4j/StatusListener;->onException(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 87
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :cond_4
    :try_start_5
    const-string v4, "limit"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    const-string v4, "track"

    const-string v5, "limit"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v4

    invoke-interface {p1, v4}, Ltwitter4j/StatusListener;->onTrackLimitationNotice(I)V
    :try_end_5
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 97
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_0
.end method
