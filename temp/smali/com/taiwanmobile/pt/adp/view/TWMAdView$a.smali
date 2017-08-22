.class final Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;
.super Ljava/lang/Object;
.source "TWMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;


# direct methods
.method private constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 212
    const-string v0, "TWMAdView"

    const-string v1, "FireAdRequestTask >>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TWMAdActivity.isShowing() ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 219
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->h(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->j(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    move-result-object v3

    .line 222
    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    move-result-object v4

    .line 223
    const/4 v5, 0x0

    .line 224
    iget-object v6, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v6}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    move-result-object v6

    sget-object v7, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->SMART_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v6, v7}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SB"

    .line 226
    :goto_0
    const-string v7, "TWMAdView"

    .line 217
    invoke-static/range {v0 .. v7}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->fireAdRequest2(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void

    .line 225
    :cond_1
    const-string v6, "B"

    goto :goto_0
.end method
