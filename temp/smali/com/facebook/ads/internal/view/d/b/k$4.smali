.class Lcom/facebook/ads/internal/view/d/b/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/k;->a_(Lcom/facebook/ads/internal/view/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/m;

.field final synthetic b:Lcom/facebook/ads/internal/view/d/b/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/k;Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->b:Lcom/facebook/ads/internal/view/d/b/k;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_6

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/view/d/c/d;->c:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->d()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->d()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->d()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v2, v3, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->e()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v2, v3, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->d()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method
