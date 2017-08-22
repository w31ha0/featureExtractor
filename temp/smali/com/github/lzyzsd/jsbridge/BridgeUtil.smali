.class public Lcom/github/lzyzsd/jsbridge/BridgeUtil;
.super Ljava/lang/Object;
.source "BridgeUtil.java"


# static fields
.field public static final CALLBACK_ID_FORMAT:Ljava/lang/String; = "JAVA_CB_%s"

.field public static final EMPTY_STR:Ljava/lang/String; = ""

.field public static final JAVASCRIPT_STR:Ljava/lang/String; = "javascript:"

.field public static final JS_FETCH_QUEUE_FROM_JAVA:Ljava/lang/String; = "javascript:WebViewJavascriptBridge._fetchQueue();"

.field public static final JS_HANDLE_MESSAGE_FROM_JAVA:Ljava/lang/String; = "javascript:WebViewJavascriptBridge._handleMessageFromNative(\'%s\');"

.field public static final SPLIT_MARK:Ljava/lang/String; = "/"

.field public static final UNDERLINE_STR:Ljava/lang/String; = "_"

.field public static final YY_FETCH_QUEUE:Ljava/lang/String; = "yy://return/_fetchQueue/"

.field public static final YY_OVERRIDE_SCHEMA:Ljava/lang/String; = "yy://"

.field public static final YY_RETURN_DATA:Ljava/lang/String; = "yy://return/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assetFile2Str(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 83
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 89
    :goto_0
    if-nez v2, :cond_0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 93
    :cond_0
    if-nez v2, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 99
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v5, "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_3

    const-string v6, "^\\s*\\/\\/.*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_3
    if-nez v4, :cond_2

    .line 107
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 108
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 116
    if-eqz v2, :cond_4

    .line 118
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-object v6

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string v6, "MobFoxWebView"

    const-string v7, "webViewLoadLocalJs not in assets, looking in resource loader"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 113
    const-string v6, "MobFoxWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :cond_5
    if-eqz v2, :cond_6

    .line 118
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 123
    :cond_6
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_7

    .line 118
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 120
    :cond_7
    :goto_3
    throw v6

    .line 119
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v7

    goto :goto_1

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_3
.end method

.method public static getDataFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v4, "yy://return/_fetchQueue/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    const-string v4, "yy://return/_fetchQueue/"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 48
    :goto_0
    return-object v4

    .line 38
    :cond_0
    const-string v4, "yy://return/"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "temp":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "functionAndData":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 44
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getFunctionFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v2, "yy://return/"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "temp":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "functionAndData":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 55
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 57
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parseFunctionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "jsUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "javascript:WebViewJavascriptBridge."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\(.*\\);"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static webViewLoadJs(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "var newscript = document.createElement(\"script\");"

    .line 69
    .local v0, "js":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newscript.src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "document.scripts[0].parentNode.insertBefore(newscript,document.scripts[0]);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static webViewLoadLocalJs(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/github/lzyzsd/jsbridge/BridgeUtil;->assetFile2Str(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "jsContent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 77
    return-void
.end method
