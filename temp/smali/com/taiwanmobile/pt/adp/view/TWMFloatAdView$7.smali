.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->m(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->x(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/widget/RelativeLayout;)V

    .line 671
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;I)V

    .line 672
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->d(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 676
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->handleNarrow(I)V

    .line 677
    :cond_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    goto :goto_0
.end method
