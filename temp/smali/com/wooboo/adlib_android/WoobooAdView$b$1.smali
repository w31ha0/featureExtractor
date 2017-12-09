.class final Lcom/wooboo/adlib_android/WoobooAdView$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/wooboo/adlib_android/WoobooAdView$b;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$b$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$b;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$b;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView$b;->a(Lcom/wooboo/adlib_android/WoobooAdView$b;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$b;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$b;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$b$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$b;

    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$b;->a(Lcom/wooboo/adlib_android/WoobooAdView$b;)Lcom/wooboo/adlib_android/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->removeView(Landroid/view/View;)V

    .line 483
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$b;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView$b;->a(Lcom/wooboo/adlib_android/WoobooAdView$b;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->c()V

    .line 484
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView$b;->a(Lcom/wooboo/adlib_android/WoobooAdView$b;Lcom/wooboo/adlib_android/a;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$b;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$b;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$b$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$b;

    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$b;->b(Lcom/wooboo/adlib_android/WoobooAdView$b;)Lcom/wooboo/adlib_android/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V

    .line 487
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 478
    return-void
.end method
