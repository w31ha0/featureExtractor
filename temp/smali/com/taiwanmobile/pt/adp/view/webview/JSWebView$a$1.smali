.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a$1;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:try{countProximityWithinTimeCallback("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v2

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");}catch(e){}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 1349
    return-void
.end method
