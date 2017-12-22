.class Lcom/netflix/mediaclient/jsapi/JSObject$1;
.super Ljava/lang/Object;
.source "JSObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/jsapi/JSObject;

.field final synthetic val$javascriptToInject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/jsapi/JSObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/jsapi/JSObject$1;->this$0:Lcom/netflix/mediaclient/jsapi/JSObject;

    iput-object p2, p0, Lcom/netflix/mediaclient/jsapi/JSObject$1;->val$javascriptToInject:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/JSObject$1;->this$0:Lcom/netflix/mediaclient/jsapi/JSObject;

    iget-object v0, v0, Lcom/netflix/mediaclient/jsapi/JSObject;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/JSObject$1;->val$javascriptToInject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    return-void
.end method
