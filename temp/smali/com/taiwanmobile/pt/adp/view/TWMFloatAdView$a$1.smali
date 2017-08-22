.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/widget/RelativeLayout;)V

    .line 1076
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v2

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->x(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V

    .line 1077
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1078
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->invalidate()V

    .line 1079
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->requestLayout()V

    .line 1080
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 1081
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    const-string v1, "javascript:try{sdkCallShowImg();}catch(e){}"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 1083
    :cond_0
    return-void
.end method
