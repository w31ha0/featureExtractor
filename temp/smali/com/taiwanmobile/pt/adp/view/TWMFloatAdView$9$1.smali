.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 736
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->m(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->u(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    const-string v0, "TWMFloatAdView"

    const-string v1, "btn_Close setVisibility!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->handleNarrow(I)V

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/widget/RelativeLayout;)V

    .line 747
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;I)V

    .line 748
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->D(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    goto/16 :goto_0
.end method
