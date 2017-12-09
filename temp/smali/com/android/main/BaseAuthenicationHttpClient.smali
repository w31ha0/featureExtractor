.class public Lcom/android/main/BaseAuthenicationHttpClient;
.super Ljava/lang/Object;
.source "BaseAuthenicationHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCodeByURL(Ljava/lang/String;I)I
    .locals 8
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    const/4 v7, 0x1

    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, "responseCode":I
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 62
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 64
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 66
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 67
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 72
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    const/16 v4, 0xc8

    if-eq v2, v4, :cond_0

    if-ge p1, v7, :cond_0

    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    invoke-static {p0, p1}, Lcom/android/main/BaseAuthenicationHttpClient;->getCodeByURL(Ljava/lang/String;I)I

    move-result v2

    .line 76
    :cond_0
    return v2

    .line 68
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    const-string v4, "info"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCodeByURL:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStringByURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v5, 0x0

    .line 29
    .local v5, "responseCode":I
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 30
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 32
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 34
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 35
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 36
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 37
    new-instance v2, Ljava/io/InputStreamReader;

    .line 38
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    .line 37
    invoke-direct {v2, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    .local v2, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v0, "buffer":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 41
    .local v3, "inputData":Ljava/lang/String;
    const/4 v4, 0x0

    .line 42
    .local v4, "inputLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 45
    const-string v7, "info"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "test:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 49
    :cond_0
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move-object v7, v3

    .line 54
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputData":Ljava/lang/String;
    .end local v4    # "inputLine":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 43
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "inputData":Ljava/lang/String;
    .restart local v4    # "inputLine":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 54
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputData":Ljava/lang/String;
    .end local v4    # "inputLine":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getXboxStrByURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "gzip, deflate"

    const-string v9, "Accept-Encoding"

    .line 80
    const/4 v5, 0x0

    .line 81
    .local v5, "responseCode":I
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 82
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 84
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    const/16 v7, 0x2710

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 87
    const-string v7, "User-Agent"

    .line 88
    const-string v8, "NokiaN7610-1/4.0850.43.1.1 Series60/3.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"

    .line 86
    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v7, "Accept"

    const-string v8, "*/*"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v7, "Accept-Encoding"

    const-string v7, "gzip, deflate"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v7, "Accept-Charset"

    const-string v8, "UTF-8"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v7, "Accept-Encoding"

    const-string v7, "gzip, deflate"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v7, "info"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 99
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 100
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 101
    new-instance v2, Ljava/io/InputStreamReader;

    .line 102
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 101
    invoke-direct {v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 103
    .local v2, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    .local v0, "buffer":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 105
    .local v3, "inputData":Ljava/lang/String;
    const/4 v4, 0x0

    .line 106
    .local v4, "inputLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 109
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 112
    :cond_0
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move-object v7, v3

    .line 117
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputData":Ljava/lang/String;
    .end local v4    # "inputLine":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 107
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "inputData":Ljava/lang/String;
    .restart local v4    # "inputLine":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 117
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputData":Ljava/lang/String;
    .end local v4    # "inputLine":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method
