.class final Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;


# direct methods
.method private constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;)V
    .locals 0

    .prologue
    .line 977
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    return-object v0
.end method


# virtual methods
.method public checkFloatAdPosition()I
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public closeWebView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 999
    const-string v0, "TWMFloatAdView"

    const-string v1, "Float ad view closeWebView invoked!!)"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 1001
    return-void
.end method

.method public disableCloseButton()V
    .locals 2

    .prologue
    .line 982
    const-string v0, "TWMFloatAdView"

    const-string v1, "disableCloseButton involked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b$1;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 995
    :cond_0
    return-void
.end method
