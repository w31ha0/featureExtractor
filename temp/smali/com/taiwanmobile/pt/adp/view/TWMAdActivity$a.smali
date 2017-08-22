.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;
.super Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;
.source "TWMAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    .line 446
    invoke-direct {p0, p2}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;-><init>(Ljava/lang/String;)V

    .line 447
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->b:Ljava/lang/String;

    .line 448
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 454
    const-string v0, "InterstitialClient"

    const-string v1, "onPageFinished invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-super {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 456
    const-string v0, "InterstitialClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page finished loading in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->l(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->m(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 468
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 485
    const-string v0, "InterstitialClient"

    const-string v1, "onPageStarted invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-super {p0, p1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 487
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;J)V

    .line 488
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 475
    const-string v0, "InterstitialClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->m(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;->b:Ljava/lang/String;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->popFailReceiveAd(Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 479
    return-void
.end method
