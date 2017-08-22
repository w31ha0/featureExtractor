.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d$2;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d$2;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d$2;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    const-string v1, "javascript:try{requestProximityWithTimeAndTouchesCallback(1);}catch(e){}"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 1317
    return-void
.end method
