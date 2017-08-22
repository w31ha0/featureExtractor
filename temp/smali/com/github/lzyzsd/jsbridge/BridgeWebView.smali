.class public Lcom/github/lzyzsd/jsbridge/BridgeWebView;
.super Landroid/webkit/WebView;
.source "BridgeWebView.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/WebViewJavascriptBridge;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static final toLoadJs:Ljava/lang/String; = "WebViewJavascriptBridge.js"


# instance fields
.field private final TAG:Ljava/lang/String;

.field defaultHandler:Lcom/github/lzyzsd/jsbridge/BridgeHandler;

.field messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/github/lzyzsd/jsbridge/BridgeHandler;",
            ">;"
        }
    .end annotation
.end field

.field responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/github/lzyzsd/jsbridge/CallBackFunction;",
            ">;"
        }
    .end annotation
.end field

.field private startupMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/lzyzsd/jsbridge/Message;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "BridgeWebView"

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/github/lzyzsd/jsbridge/DefaultHandler;

    invoke-direct {v0}, Lcom/github/lzyzsd/jsbridge/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->defaultHandler:Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->startupMessage:Ljava/util/List;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->uniqueId:J

    .line 58
    invoke-direct {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string v0, "BridgeWebView"

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/github/lzyzsd/jsbridge/DefaultHandler;

    invoke-direct {v0}, Lcom/github/lzyzsd/jsbridge/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->defaultHandler:Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->startupMessage:Ljava/util/List;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->uniqueId:J

    .line 48
    invoke-direct {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const-string v0, "BridgeWebView"

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/github/lzyzsd/jsbridge/DefaultHandler;

    invoke-direct {v0}, Lcom/github/lzyzsd/jsbridge/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->defaultHandler:Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->startupMessage:Ljava/util/List;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->uniqueId:J

    .line 53
    invoke-direct {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/github/lzyzsd/jsbridge/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .param p1, "x1"    # Lcom/github/lzyzsd/jsbridge/Message;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->queueMessage(Lcom/github/lzyzsd/jsbridge/Message;)V

    return-void
.end method

.method private doSend(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 12
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "responseCallback"    # Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Lcom/github/lzyzsd/jsbridge/Message;

    invoke-direct {v1}, Lcom/github/lzyzsd/jsbridge/Message;-><init>()V

    .line 109
    .local v1, "m":Lcom/github/lzyzsd/jsbridge/Message;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    invoke-virtual {v1, p2}, Lcom/github/lzyzsd/jsbridge/Message;->setData(Ljava/lang/String;)V

    .line 112
    :cond_0
    if-eqz p3, :cond_1

    .line 113
    const-string v3, "JAVA_CB_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->uniqueId:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->uniqueId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "callbackStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v1, v0}, Lcom/github/lzyzsd/jsbridge/Message;->setCallbackId(Ljava/lang/String;)V

    .line 117
    .end local v0    # "callbackStr":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    invoke-virtual {v1, p1}, Lcom/github/lzyzsd/jsbridge/Message;->setHandlerName(Ljava/lang/String;)V

    .line 120
    :cond_2
    invoke-direct {p0, v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->queueMessage(Lcom/github/lzyzsd/jsbridge/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "m":Lcom/github/lzyzsd/jsbridge/Message;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "MobFoxWebView"

    const-string v4, "error on bridge send message"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setVerticalScrollBarEnabled(Z)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 76
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->generateBridgeWebViewClient()Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    return-void
.end method

.method private queueMessage(Lcom/github/lzyzsd/jsbridge/Message;)V
    .locals 1
    .param p1, "m"    # Lcom/github/lzyzsd/jsbridge/Message;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->startupMessage:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->startupMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->dispatchMessage(Lcom/github/lzyzsd/jsbridge/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 0
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->doSend(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    .line 236
    return-void
.end method

.method dispatchMessage(Lcom/github/lzyzsd/jsbridge/Message;)V
    .locals 5
    .param p1, "m"    # Lcom/github/lzyzsd/jsbridge/Message;

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/github/lzyzsd/jsbridge/Message;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "messageJson":Ljava/lang/String;
    const-string v2, "(\\\\)([^utrn])"

    const-string v3, "\\\\\\\\$1$2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "(?<=[^\\\\])(\")"

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "javascript:WebViewJavascriptBridge._handleMessageFromNative(\'%s\');"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "javascriptCommand":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method flushMessageQueue()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 148
    const-string v0, "javascript:WebViewJavascriptBridge._fetchQueue();"

    new-instance v1, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;

    invoke-direct {v1, p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    invoke-virtual {p0, v0, v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->loadUrl(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected generateBridgeWebViewClient()Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;

    invoke-direct {v0, p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    return-object v0
.end method

.method public getMessageHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/github/lzyzsd/jsbridge/BridgeHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->messageHandlers:Ljava/util/Map;

    return-object v0
.end method

.method public getStartupMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/lzyzsd/jsbridge/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->startupMessage:Ljava/util/List;

    return-object v0
.end method

.method handlerReturnData(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p1}, Lcom/github/lzyzsd/jsbridge/BridgeUtil;->getFunctionFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "functionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .line 88
    .local v1, "f":Lcom/github/lzyzsd/jsbridge/CallBackFunction;
    invoke-static {p1}, Lcom/github/lzyzsd/jsbridge/BridgeUtil;->getDataFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "data":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v1, v0}, Lcom/github/lzyzsd/jsbridge/CallBackFunction;->onCallBack(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 2
    .param p1, "jsUrl"    # Ljava/lang/String;
    .param p2, "returnCallback"    # Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-static {p1}, Lcom/github/lzyzsd/jsbridge/BridgeUtil;->parseFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    .prologue
    .line 222
    if-eqz p2, :cond_0

    .line 223
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->send(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    .line 99
    return-void
.end method

.method public send(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "responseCallback"    # Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->doSend(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    .line 104
    return-void
.end method

.method public setDefaultHandler(Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->defaultHandler:Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    .line 69
    return-void
.end method

.method public setStartupMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/lzyzsd/jsbridge/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "startupMessage":Ljava/util/List;, "Ljava/util/List<Lcom/github/lzyzsd/jsbridge/Message;>;"
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->startupMessage:Ljava/util/List;

    .line 42
    return-void
.end method
