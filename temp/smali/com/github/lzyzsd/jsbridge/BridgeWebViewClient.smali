.class public Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BridgeWebViewClient.java"


# instance fields
.field private webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 0
    .param p1, "webView"    # Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 22
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getStartupMessage()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getStartupMessage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/lzyzsd/jsbridge/Message;

    .line 59
    .local v0, "m":Lcom/github/lzyzsd/jsbridge/Message;
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v2, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->dispatchMessage(Lcom/github/lzyzsd/jsbridge/Message;)V

    goto :goto_0

    .line 61
    .end local v0    # "m":Lcom/github/lzyzsd/jsbridge/Message;
    :cond_0
    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setStartupMessage(Ljava/util/List;)V

    .line 63
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 27
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 32
    :goto_0
    const-string v2, "yy://return/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v2, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->handlerReturnData(Ljava/lang/String;)V

    .line 39
    :goto_1
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v2, "yy://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->flushMessageQueue()V

    goto :goto_1

    .line 39
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method
