.class public Lcom/mobfox/sdk/webview/MobFoxWebView;
.super Lcom/github/lzyzsd/jsbridge/BridgeWebView;
.source "MobFoxWebView.java"


# static fields
.field public static final DEFAULT_WATERFALLS:Ljava/lang/String; = ""

.field public static final DOMAIN:Ljava/lang/String; = "sdk.starbolt.io"

.field private static final JS_READY_INTERVAL:I = 0x32

.field public static final LOAD_AD_LISTENER:Ljava/lang/String; = "loadAdListener"

.field public static final MOBFOX_BRIDGE:Ljava/lang/String; = "http://sdk.starbolt.io/dist/WebViewJavascriptBridge.js"

.field public static final MOBFOX_JS:Ljava/lang/String; = "http://sdk.starbolt.io/dist/sdk_videoAndroid.js"

.field public static final MOBFOX_URL:Ljava/lang/String; = "http://sdk.starbolt.io/dist/mobfox.html"

.field public static final MOBFOX_URL_HTTPS:Ljava/lang/String; = "https://sdk.starbolt.io/dist/mobfox.html"

.field public static final RENDER_AD_LISTENER:Ljava/lang/String; = "renderAdListener"

.field public static final WATERFALL_CONNECTION_EXCEPTION:Ljava/lang/String; = "failed to connect to sdk.starbolt.io"

.field public static path:Ljava/lang/String;

.field static secure:Z


# instance fields
.field context:Landroid/content/Context;

.field loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

.field public loadBannerStarted:J

.field loadJsStarted:J

.field mainHandler:Landroid/os/Handler;

.field mobFoxWebViewClient:Lcom/mobfox/sdk/webview/MobFoxWebViewClient;

.field options:Ljava/lang/String;

.field ready:Z

.field renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

.field userInteraction:Z

.field videoBridge:Lcom/mobfox/sdk/video/VideoBridge;

.field waterfalls:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "dist"

    sput-object v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->path:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->secure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadAdListener"    # Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .prologue
    .line 76
    invoke-direct/range {p0 .. p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;-><init>(Landroid/content/Context;)V

    .line 38
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadJsStarted:J

    .line 39
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadBannerStarted:J

    .line 61
    new-instance v2, Lcom/mobfox/sdk/video/VideoBridge;

    invoke-direct {v2}, Lcom/mobfox/sdk/video/VideoBridge;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->videoBridge:Lcom/mobfox/sdk/video/VideoBridge;

    .line 68
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->ready:Z

    .line 69
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->userInteraction:Z

    .line 70
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->waterfalls:Ljava/lang/String;

    .line 71
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->options:Ljava/lang/String;

    .line 78
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .line 79
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->context:Landroid/content/Context;

    .line 80
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setBackgroundColor(I)V

    .line 82
    new-instance v2, Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    .line 84
    const-string v2, "MobFoxWebView"

    const-string v3, "mobfox webview init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    move-object/from16 v5, p0

    .line 88
    .local v5, "self":Lcom/mobfox/sdk/webview/MobFoxWebView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mobfox/sdk/webview/MobFoxWebView;->init(Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->videoBridge:Lcom/mobfox/sdk/video/VideoBridge;

    const-string v3, "nativeVideoPlayer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5}, Lcom/mobfox/sdk/webview/MobFoxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    .line 96
    .local v17, "settings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 106
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 107
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 109
    :cond_0
    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setHapticFeedbackEnabled(Z)V

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setSoundEffectsEnabled(Z)V

    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 119
    :try_start_0
    const-class v2, Landroid/webkit/WebSettings;

    const-string v3, "setMediaPlaybackRequiresUserGesture"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 120
    .local v16, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .end local v16    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    const-string v2, "click"

    new-instance v3, Lcom/mobfox/sdk/webview/MobFoxWebView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$2;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {v5, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 145
    const-string v2, "close"

    new-instance v3, Lcom/mobfox/sdk/webview/MobFoxWebView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$3;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {v5, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 159
    const-string v2, "finished"

    new-instance v3, Lcom/mobfox/sdk/webview/MobFoxWebView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$4;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {v5, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 171
    const-string v2, "ready"

    new-instance v3, Lcom/mobfox/sdk/webview/MobFoxWebView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/mobfox/sdk/webview/MobFoxWebView$5;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {v5, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 181
    const-string v2, "error"

    new-instance v3, Lcom/mobfox/sdk/webview/MobFoxWebView$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$6;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {v5, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 195
    const-string v2, "loadAdResponse"

    new-instance v3, Lcom/mobfox/sdk/webview/MobFoxWebView$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$7;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {v5, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mobFoxWebViewClient:Lcom/mobfox/sdk/webview/MobFoxWebViewClient;

    invoke-virtual {v5, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 259
    new-instance v2, Lcom/mobfox/sdk/webview/MobFoxWebChromeClient;

    invoke-direct {v2}, Lcom/mobfox/sdk/webview/MobFoxWebChromeClient;-><init>()V

    invoke-virtual {v5, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 261
    new-instance v2, Lcom/mobfox/sdk/webview/MobFoxWebView$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mobfox/sdk/webview/MobFoxWebView$8;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    :try_start_1
    sget-boolean v2, Lcom/mobfox/sdk/webview/MobFoxWebView;->secure:Z

    if-nez v2, :cond_2

    .line 271
    invoke-static {}, Lcom/mobfox/sdk/webview/MobFoxWebView;->getMobfoxUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadUrl(Ljava/lang/String;)V

    .line 275
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadJsStarted:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 308
    :goto_2
    return-void

    .line 121
    :catch_0
    move-exception v8

    .line 122
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/webview/MobFoxWebView$1;

    const-string v6, "loadAdListener"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v7, v5

    invoke-direct/range {v2 .. v8}, Lcom/mobfox/sdk/webview/MobFoxWebView$1;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 128
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v15

    .line 129
    .local v15, "t":Ljava/lang/Throwable;
    const-string v2, "MobFoxWebView"

    const-string v3, "Throwable err"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    .end local v15    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/mobfox/sdk/webview/MobFoxWebView;->getMobfoxUrlHttps()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 276
    :catch_2
    move-exception v8

    .line 277
    .restart local v8    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/mobfox/sdk/webview/MobFoxWebView$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mobfox/sdk/webview/MobFoxWebView$9;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8, v2}, Lcom/mobfox/sdk/logging/MobFoxReport;->postException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/webview/MobFoxWebView$10;

    const-string v6, "loadAdListener"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v7, v5

    invoke-direct/range {v2 .. v8}, Lcom/mobfox/sdk/webview/MobFoxWebView$10;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 296
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v15

    .line 297
    .restart local v15    # "t":Ljava/lang/Throwable;
    const-string v2, "MobFoxWebView"

    const-string v3, "load sdk error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v9, Lcom/mobfox/sdk/webview/MobFoxWebView$11;

    const-string v13, "loadAdListener"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v5

    move-object v14, v5

    invoke-direct/range {v9 .. v15}, Lcom/mobfox/sdk/webview/MobFoxWebView$11;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private _loadAd(Ljava/lang/String;)V
    .locals 4
    .param p1, "options"    # Ljava/lang/String;

    .prologue
    .line 376
    move-object v0, p0

    .line 377
    .local v0, "self":Lcom/mobfox/sdk/webview/MobFoxWebView;
    iput-object p1, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->options:Ljava/lang/String;

    .line 378
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->userInteraction:Z

    .line 379
    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/webview/MobFoxWebView$14;

    invoke-direct {v2, p0, v0}, Lcom/mobfox/sdk/webview/MobFoxWebView$14;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    const-string v1, "setWaterfallsJson"

    iget-object v2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->waterfalls:Ljava/lang/String;

    new-instance v3, Lcom/mobfox/sdk/webview/MobFoxWebView$15;

    invoke-direct {v3, p0, v0}, Lcom/mobfox/sdk/webview/MobFoxWebView$15;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    .line 392
    return-void
.end method

.method static synthetic access$000(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->_loadAd(Ljava/lang/String;)V

    return-void
.end method

.method public static getMobfoxUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://sdk.starbolt.io/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobfox.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobfoxUrlHttps()Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk.starbolt.io/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobfox.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 487
    sput-object p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->path:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public static setSecure(Z)V
    .locals 0
    .param p0, "secure"    # Z

    .prologue
    .line 483
    sput-boolean p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->secure:Z

    .line 484
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    .line 469
    :cond_1
    const-string v0, "click"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 470
    const-string v0, "close"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 471
    const-string v0, "finished"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 472
    const-string v0, "error"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 473
    const-string v0, "loadAdResponse"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 474
    invoke-super {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->destroy()V

    .line 475
    return-void
.end method

.method public getRenderAdListener()Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    return-object v0
.end method

.method public getVideoBridge()Lcom/mobfox/sdk/video/VideoBridge;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->videoBridge:Lcom/mobfox/sdk/video/VideoBridge;

    return-object v0
.end method

.method init(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 2
    .param p1, "self"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 311
    new-instance v0, Lcom/mobfox/sdk/webview/MobFoxWebViewClient;

    new-instance v1, Lcom/mobfox/sdk/webview/MobFoxWebView$12;

    invoke-direct {v1, p0, p1}, Lcom/mobfox/sdk/webview/MobFoxWebView$12;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-direct {v0, p1, v1}, Lcom/mobfox/sdk/webview/MobFoxWebViewClient;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;)V

    iput-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mobFoxWebViewClient:Lcom/mobfox/sdk/webview/MobFoxWebViewClient;

    .line 343
    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 4
    .param p1, "options"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadBannerStarted:J

    .line 353
    iget-boolean v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->ready:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->waterfalls:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 355
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->_loadAd(Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 359
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 360
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/mobfox/sdk/webview/MobFoxWebView$13;

    invoke-direct {v1, p0, v0, p1}, Lcom/mobfox/sdk/webview/MobFoxWebView$13;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/os/Handler;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public renderAd(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "adResp"    # Lorg/json/JSONObject;

    .prologue
    .line 396
    move-object v3, p0

    .line 397
    .local v3, "self":Lcom/mobfox/sdk/webview/MobFoxWebView;
    iget-boolean v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->ready:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v6, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/sdk/webview/MobFoxWebView$16;

    iget-object v2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->context:Landroid/content/Context;

    const-string v4, "renderAdListener"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$16;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v6, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    :goto_0
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->userInteraction:Z

    .line 411
    const-string v0, "renderAd"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mobfox/sdk/webview/MobFoxWebView$17;

    invoke-direct {v2, p0, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView$17;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    invoke-virtual {v3, v0, v1, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    goto :goto_0
.end method

.method public setLoadAdListener(Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V
    .locals 0
    .param p1, "loadAdListener"    # Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .line 451
    return-void
.end method

.method public setReady(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->ready:Z

    .line 480
    return-void
.end method

.method public setRenderAdListener(Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;)V
    .locals 0
    .param p1, "renderAdListener"    # Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    .line 455
    return-void
.end method

.method public setUserInteraction(Z)V
    .locals 0
    .param p1, "interaction"    # Z

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->userInteraction:Z

    .line 463
    return-void
.end method

.method public setWaterfalls(Ljava/lang/String;)V
    .locals 0
    .param p1, "waterfalls"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView;->waterfalls:Ljava/lang/String;

    .line 459
    return-void
.end method
