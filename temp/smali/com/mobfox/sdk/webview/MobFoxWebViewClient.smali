.class public Lcom/mobfox/sdk/webview/MobFoxWebViewClient;
.super Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;
.source "MobFoxWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;
    }
.end annotation


# static fields
.field public static final MAX_AD_REQUEST_COUNT:I = 0x32


# instance fields
.field adRequestCount:I

.field listener:Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;


# direct methods
.method public constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;)V
    .locals 1
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "listener"    # Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebViewClient;->adRequestCount:I

    .line 43
    iput-object p2, p0, Lcom/mobfox/sdk/webview/MobFoxWebViewClient;->listener:Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;

    .line 44
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebViewClient;->listener:Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;->onError(Ljava/lang/Exception;)V

    .line 133
    const-string v0, "MobFoxWebView"

    const-string v1, "webview error: %s, req: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 142
    const-string v0, "MobFoxWebView"

    const-string v1, "webview error: %s, req: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 144
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 124
    const-string v0, "MobFoxWebView"

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 127
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 51
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 52
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "url":Ljava/lang/String;
    const-string v8, "sdk.starbolt.io"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 56
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 58
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "content_type":Ljava/lang/String;
    const-string v6, "; charset="

    .line 60
    .local v6, "separator":Ljava/lang/String;
    const-string v8, "; charset="

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 61
    .local v5, "pos":I
    if-ltz v5, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "mime_type":Ljava/lang/String;
    :goto_0
    if-ltz v5, :cond_1

    const-string v8, "; charset="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "encoding":Ljava/lang/String;
    :goto_1
    new-instance v8, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v4, v3, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 80
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "content_type":Ljava/lang/String;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "mime_type":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v6    # "separator":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :goto_2
    return-object v8

    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "content_type":Ljava/lang/String;
    .restart local v5    # "pos":I
    .restart local v6    # "separator":Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_0
    move-object v4, v1

    .line 61
    goto :goto_0

    .line 62
    .restart local v4    # "mime_type":Ljava/lang/String;
    :cond_1
    const-string v3, "UTF-8"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "content_type":Ljava/lang/String;
    .end local v4    # "mime_type":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v6    # "separator":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "MobFoxWebView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shouldInterceptRequest error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "url":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v7, "sdk.starbolt.io"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 88
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 90
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "content_type":Ljava/lang/String;
    const-string v6, "; charset="

    .line 92
    .local v6, "separator":Ljava/lang/String;
    const-string v7, "; charset="

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "pos":I
    if-ltz v5, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "mime_type":Ljava/lang/String;
    :goto_0
    if-ltz v5, :cond_1

    const-string v7, "; charset="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "encoding":Ljava/lang/String;
    :goto_1
    new-instance v7, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v4, v3, v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 101
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "content_type":Ljava/lang/String;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "mime_type":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v6    # "separator":Ljava/lang/String;
    :goto_2
    return-object v7

    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "content_type":Ljava/lang/String;
    .restart local v5    # "pos":I
    .restart local v6    # "separator":Ljava/lang/String;
    :cond_0
    move-object v4, v1

    .line 93
    goto :goto_0

    .line 94
    .restart local v4    # "mime_type":Ljava/lang/String;
    :cond_1
    const-string v3, "UTF-8"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "content_type":Ljava/lang/String;
    .end local v4    # "mime_type":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v6    # "separator":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MobFoxWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldInterceptRequest error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 107
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yy://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_1
    move-object v0, p1

    .line 110
    check-cast v0, Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-boolean v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->userInteraction:Z

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebViewClient;->listener:Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;

    invoke-interface {v0, p1, p2}, Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;->onAutoRedirect(Landroid/webkit/WebView;Ljava/lang/String;)V

    move v0, v1

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebViewClient;->listener:Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;

    invoke-interface {v0, p2}, Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;->onClick(Ljava/lang/String;)V

    move v0, v1

    .line 119
    goto :goto_0
.end method
