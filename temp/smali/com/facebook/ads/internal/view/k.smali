.class public Lcom/facebook/ads/internal/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/d;


# instance fields
.field private a:Lcom/facebook/ads/internal/j/a;

.field private b:Lcom/facebook/ads/internal/view/m;

.field private c:Lcom/facebook/ads/internal/util/ab;

.field private d:Lcom/facebook/ads/internal/util/af;

.field private e:Lcom/facebook/ads/internal/view/d$a;

.field private f:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/r;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private final k:Landroid/content/Context;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/k;->e:Lcom/facebook/ads/internal/view/d$a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/k;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/util/af;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/util/af;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/d$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->e:Lcom/facebook/ads/internal/view/d$a;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/j/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/j/a;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->k:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .locals 7

    const/4 v6, -0x2

    const/high16 v5, -0x1000000

    const/4 v4, 0x1

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v1, Lcom/facebook/ads/internal/view/m;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->h()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/view/m;->setAutoplay(Z)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/view/m;->setIsFullScreen(Z)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/view/m;->setBackgroundColor(I)V

    new-instance v0, Lcom/facebook/ads/internal/view/k$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/k$1;-><init>(Lcom/facebook/ads/internal/view/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->i:Lcom/facebook/ads/internal/g/s;

    new-instance v0, Lcom/facebook/ads/internal/view/k$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/k$2;-><init>(Lcom/facebook/ads/internal/view/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->f:Lcom/facebook/ads/internal/g/s;

    new-instance v0, Lcom/facebook/ads/internal/view/k$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/k$3;-><init>(Lcom/facebook/ads/internal/view/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/g/s;

    new-instance v0, Lcom/facebook/ads/internal/view/k$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/k$4;-><init>(Lcom/facebook/ads/internal/view/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->h:Lcom/facebook/ads/internal/g/s;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->f:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->h:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->i:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/j;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/d/b/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->k:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/d/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/d/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/view/d/b/c;->setBackgroundColor(I)V

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/view/d/b/c;->setCountdownTextColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    new-instance v0, Lcom/facebook/ads/internal/j/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    new-instance v2, Lcom/facebook/ads/internal/view/k$5;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/k$5;-><init>(Lcom/facebook/ads/internal/view/k;)V

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/j/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/j/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/j/a;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/a;->a(I)V

    new-instance v0, Lcom/facebook/ads/internal/util/af;

    invoke-direct {v0}, Lcom/facebook/ads/internal/util/af;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/util/af;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->e:Lcom/facebook/ads/internal/view/d$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/util/af;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/af;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 6

    const-string v0, "videoURL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientToken"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/view/k;->j:Ljava/lang/String;

    const-string v1, "contextSwitchBehavior"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/view/k;->l:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/internal/util/ab;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/k;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/ads/internal/util/ab;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/view/m;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/k;->c:Lcom/facebook/ads/internal/util/ab;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->setVideoURI(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d$a;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->e()V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->g()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    return-void
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->c()V

    return-void
.end method

.method public h()V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->l:Ljava/lang/String;

    const-string v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->l:Ljava/lang/String;

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->f()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->l:Ljava/lang/String;

    const-string v1, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->e:Lcom/facebook/ads/internal/view/d$a;

    sget-object v1, Lcom/facebook/ads/internal/j;->b:Lcom/facebook/ads/internal/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/b;

    invoke-direct {v2}, Lcom/facebook/ads/internal/view/d/a/b;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->e()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->l:Ljava/lang/String;

    const-string v1, "endvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->e:Lcom/facebook/ads/internal/view/d$a;

    sget-object v1, Lcom/facebook/ads/internal/j;->c:Lcom/facebook/ads/internal/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/g/f;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->e()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->e()V

    return-void
.end method
