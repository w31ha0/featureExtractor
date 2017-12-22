.class public abstract Lcom/netflix/mediaclient/jsapi/JSObject;
.super Ljava/lang/Object;
.source "JSObject.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "JavascriptInterface"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected mainHandler:Landroid/os/Handler;

.field protected webview:Landroid/webkit/WebView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 36
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not create a JSObject a null context or webview."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/jsapi/JSObject;->mainHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/jsapi/JSObject;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/jsapi/JSObject;->webview:Landroid/webkit/WebView;

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/jsapi/JSObject;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public abstract getInterfaceName()Ljava/lang/String;
.end method

.method protected injectJavaScript(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/JSObject;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/jsapi/JSObject$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/jsapi/JSObject$1;-><init>(Lcom/netflix/mediaclient/jsapi/JSObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/JSObject;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/jsapi/JSObject;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 52
    iput-object v2, p0, Lcom/netflix/mediaclient/jsapi/JSObject;->webview:Landroid/webkit/WebView;

    .line 53
    iput-object v2, p0, Lcom/netflix/mediaclient/jsapi/JSObject;->context:Landroid/content/Context;

    .line 54
    return-void
.end method
