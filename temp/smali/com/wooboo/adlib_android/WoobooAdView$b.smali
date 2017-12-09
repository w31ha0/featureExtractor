.class final Lcom/wooboo/adlib_android/WoobooAdView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wooboo/adlib_android/WoobooAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/wooboo/adlib_android/WoobooAdView;

.field private b:Lcom/wooboo/adlib_android/a;

.field private c:Lcom/wooboo/adlib_android/a;


# direct methods
.method public constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->b:Lcom/wooboo/adlib_android/a;

    return-void
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/WoobooAdView$b;)Lcom/wooboo/adlib_android/a;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->c:Lcom/wooboo/adlib_android/a;

    return-object v0
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/WoobooAdView$b;Lcom/wooboo/adlib_android/a;)V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->c:Lcom/wooboo/adlib_android/a;

    return-void
.end method

.method static synthetic b(Lcom/wooboo/adlib_android/WoobooAdView$b;)Lcom/wooboo/adlib_android/a;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->b:Lcom/wooboo/adlib_android/a;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 462
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->c:Lcom/wooboo/adlib_android/a;

    .line 463
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->c:Lcom/wooboo/adlib_android/a;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->c:Lcom/wooboo/adlib_android/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/a;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->c:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->e()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->b:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0, v6}, Lcom/wooboo/adlib_android/a;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v2

    .line 469
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v2

    .line 470
    const v0, -0x41333333    # -0.4f

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/WoobooAdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    .line 471
    new-instance v0, Lcom/wooboo/adlib_android/b;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/wooboo/adlib_android/b;-><init>(FFFFFZ)V

    .line 473
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/wooboo/adlib_android/b;->setDuration(J)V

    .line 474
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/b;->setFillAfter(Z)V

    .line 475
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 476
    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$b$1;

    invoke-direct {v1, p0}, Lcom/wooboo/adlib_android/WoobooAdView$b$1;-><init>(Lcom/wooboo/adlib_android/WoobooAdView$b;)V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 493
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$b;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v1, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    return-void
.end method
