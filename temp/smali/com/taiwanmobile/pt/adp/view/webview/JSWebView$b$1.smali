.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$1;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->noticePlay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;

    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$1;->b:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 209
    return-void
.end method
