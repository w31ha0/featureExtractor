.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;
.super Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;
.source "TWMFloatAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    .line 1015
    invoke-direct {p0, p2}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;-><init>(Ljava/lang/String;)V

    .line 1016
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b:Ljava/lang/String;

    .line 1017
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/os/Handler;)V

    .line 1018
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1023
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->m(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->o(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    :cond_2
    const-string v0, "FloatAdClient"

    const-string v1, "timeout error"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1031
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1033
    :cond_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1034
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1037
    :cond_4
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1038
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 1039
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1040
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1041
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b:Ljava/lang/String;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->popFailReceiveAd(Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1048
    invoke-super {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1049
    const-string v0, "FloatAdClient"

    const-string v1, "onPageFinished invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v0, "fz=0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    const-string v0, "FloatAdClient"

    const-string v1, "onPageFinished fz=0!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1055
    :cond_0
    const-string v0, "fz=1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    const-string v0, "FloatAdClient"

    const-string v1, "onPageFinished fz=1!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->o(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->s(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1060
    const-string v0, "FloatAdClient"

    const-string v1, "onPageFinished success!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->t(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1063
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->u(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    const-string v0, "FloatAdClient"

    const-string v1, "onPageFinished showButtonClose!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1089
    :cond_3
    :goto_0
    return-void

    .line 1069
    :cond_4
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1086
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    const-string v1, "floadAd"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1107
    const-string v0, "FloatAdClient"

    const-string v1, "onPageStarted invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-super {p0, p1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1110
    const-string v0, "fz=0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const-string v0, "FloatAdClient"

    const-string v1, "onPageStarted fz=0!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1113
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1114
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1115
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->t(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$2;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;)V

    .line 1121
    const-wide/16 v2, 0xfa0

    .line 1115
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1124
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1093
    const-string v0, "FloatAdClient"

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

    .line 1094
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1101
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 1102
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;->b:Ljava/lang/String;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->popFailReceiveAd(Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 1103
    return-void
.end method
