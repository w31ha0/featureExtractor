.class public Lcom/google/chromecast/background/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# static fields
.field private static backgroundWebSocket:Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

.field private static final sendMessageLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/chromecast/background/Channel;->sendMessageLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/google/chromecast/background/Channel;->backgroundWebSocket:Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    return-void
.end method

.method static synthetic access$000()Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/chromecast/background/Channel;->backgroundWebSocket:Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;)Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/google/chromecast/background/Channel;->backgroundWebSocket:Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/chromecast/background/Channel;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static connectWebSocket(Ljava/lang/String;)Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 126
    const-string/jumbo v0, "Connect channel >>"

    invoke-static {v0}, Lcom/google/chromecast/background/Channel;->log(Ljava/lang/String;)V

    .line 129
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    new-instance v0, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    invoke-direct {v0, v2}, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;-><init>(Ljava/net/URI;)V

    .line 137
    :try_start_1
    const-string/jumbo v2, "Waiting for connection te be established"

    invoke-static {v2}, Lcom/google/chromecast/background/Channel;->log(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->connectBlocking()Z

    .line 139
    const-string/jumbo v2, "Web socket connection is established"

    invoke-static {v2}, Lcom/google/chromecast/background/Channel;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    const-string/jumbo v1, "Background"

    const-string/jumbo v2, "Background channel is established"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    .line 142
    goto :goto_0
.end method

.method private static getHttpResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 193
    const-string/jumbo v0, "get connection query response >>"

    invoke-static {v0}, Lcom/google/chromecast/background/Channel;->log(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 197
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 198
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 200
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 201
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 205
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 207
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 208
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 209
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 212
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 213
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 214
    const-string/jumbo v2, "Background"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed http request with response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 216
    const/4 v1, 0x0

    .line 227
    :goto_0
    return-object v1

    .line 219
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 221
    const-string/jumbo v1, ""

    .line 222
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
.end method

.method private static getWebSocket(Ljava/lang/String;)Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":8008/connection/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CAST.BACKGROUND.CHANNEL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "VERSION: 0.0.1"

    invoke-static {v2}, Lcom/google/chromecast/background/Channel;->log(Ljava/lang/String;)V

    .line 155
    :try_start_0
    invoke-static {v1}, Lcom/google/chromecast/background/Channel;->getWebSocketUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    :goto_0
    if-nez v1, :cond_0

    .line 161
    const-string/jumbo v1, "Background"

    const-string/jumbo v2, "Cannot get a connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_1
    return-object v0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {v1}, Lcom/google/chromecast/background/Channel;->connectWebSocket(Ljava/lang/String;)Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    move-result-object v0

    goto :goto_1
.end method

.method private static getWebSocketUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 232
    const-string/jumbo v1, "get connection url"

    invoke-static {v1}, Lcom/google/chromecast/background/Channel;->log(Ljava/lang/String;)V

    .line 235
    invoke-static {p0}, Lcom/google/chromecast/background/Channel;->getHttpResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    if-nez v1, :cond_0

    .line 237
    const-string/jumbo v1, "Background"

    const-string/jumbo v2, "getHttpResponse() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-object v0

    .line 242
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "URL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    const-string/jumbo v2, "Background"

    const-string/jumbo v3, "JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "Background"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static sendMessage(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getIpAddress()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0, p1}, Lcom/google/chromecast/background/Channel;->sendMessage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 181
    sget-object v1, Lcom/google/chromecast/background/Channel;->sendMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lcom/google/chromecast/background/Channel;->backgroundWebSocket:Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    if-nez v0, :cond_0

    .line 183
    invoke-static {p0}, Lcom/google/chromecast/background/Channel;->getWebSocket(Ljava/lang/String;)Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    move-result-object v0

    sput-object v0, Lcom/google/chromecast/background/Channel;->backgroundWebSocket:Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    .line 184
    sget-object v0, Lcom/google/chromecast/background/Channel;->backgroundWebSocket:Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    monitor-exit v1

    .line 188
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/chromecast/background/Channel;->backgroundWebSocket:Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->sendAndWaitAck(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
