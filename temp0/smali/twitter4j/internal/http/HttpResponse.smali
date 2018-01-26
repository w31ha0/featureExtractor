.class public abstract Ltwitter4j/internal/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field private static builders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/xml/parsers/DocumentBuilder;",
            ">;"
        }
    .end annotation
.end field

.field static class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

.field private static final logger:Ltwitter4j/internal/logging/Logger;


# instance fields
.field protected is:Ljava/io/InputStream;

.field private responseAsDocument:Lorg/w3c/dom/Document;

.field protected responseAsString:Ljava/lang/String;

.field protected statusCode:I

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.internal.http.HttpResponseImpl"

    invoke-static {v0}, Ltwitter4j/internal/http/HttpResponse;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    .line 56
    new-instance v0, Ltwitter4j/internal/http/HttpResponse$1;

    invoke-direct {v0}, Ltwitter4j/internal/http/HttpResponse$1;-><init>()V

    sput-object v0, Ltwitter4j/internal/http/HttpResponse;->builders:Ljava/lang/ThreadLocal;

    return-void

    .line 54
    :cond_0
    sget-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsDocument:Lorg/w3c/dom/Document;

    .line 71
    iput-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
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
.method public final asDocument()Lorg/w3c/dom/Document;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsDocument:Lorg/w3c/dom/Document;

    if-nez v2, :cond_0

    .line 144
    :try_start_0
    sget-object v2, Ltwitter4j/internal/http/HttpResponse;->builders:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsDocument:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :cond_0
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsDocument:Lorg/w3c/dom/Document;

    return-object v2

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "saxe":Lorg/xml/sax/SAXException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The response body was not well-formed:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 147
    .end local v1    # "saxe":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ltwitter4j/TwitterException;

    const-string v3, "There\'s something with the connection."

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final asJSONArray()Ltwitter4j/internal/org/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    sget-object v1, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v1}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    new-instance v2, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asReader()Ljava/io/InputStreamReader;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    sget-object v1, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v1}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 193
    :cond_1
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final asJSONObject()Ltwitter4j/internal/org/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    sget-object v1, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v1}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    new-instance v2, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asReader()Ljava/io/InputStreamReader;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    sget-object v1, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v1}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 171
    :cond_1
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final asReader()Ljava/io/InputStreamReader;
    .locals 4

    .prologue
    .line 201
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public final asStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream has already been consumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 108
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asStream()Ljava/io/InputStream;

    move-result-object v5

    .line 109
    .local v5, "stream":Ljava/io/InputStream;
    if-nez v5, :cond_0

    .line 110
    const/4 v6, 0x0

    .line 130
    .end local v5    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v6

    .line 112
    .restart local v5    # "stream":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v1, "buf":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 123
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "npe":Ljava/lang/NullPointerException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 118
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 119
    sget-object v6, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    iget-object v7, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 121
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnect()V

    .line 122
    const/4 v6, 0x1

    iput-boolean v6, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_2
    iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    goto :goto_0

    .line 126
    :catch_1
    move-exception v2

    .line 127
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Ltwitter4j/internal/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpResponse{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/http/HttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", responseAsDocument="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsDocument:Lorg/w3c/dom/Document;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", responseAsString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", streamConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
