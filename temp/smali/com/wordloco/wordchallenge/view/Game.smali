.class public Lcom/wordloco/wordchallenge/view/Game;
.super Lcom/google/example/games/basegameutils/BaseGameActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private A:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private B:Lcom/facebook/UiLifecycleHelper;

.field private C:I

.field private D:I

.field private E:J

.field private F:Landroid/os/Handler;

.field private G:F

.field private H:F

.field private I:I

.field private J:Z

.field private K:F

.field private L:F

.field private M:Lcom/wordloco/wordchallenge/c/i;

.field private N:Ljava/lang/Runnable;

.field public a:Z

.field public b:Z

.field public c:Lcom/wordloco/wordchallenge/b/d;

.field public d:Z

.field e:F

.field f:F

.field g:F

.field h:F

.field i:I

.field j:Z

.field k:J

.field l:J

.field m:J

.field n:J

.field o:I

.field p:Z

.field q:Landroid/graphics/Canvas;

.field r:Landroid/graphics/Paint;

.field public s:Lcom/wordloco/wordchallenge/c/b;

.field public t:Lcom/wordloco/wordchallenge/c/c;

.field public u:Lcom/wordloco/wordchallenge/c/d;

.field public v:Lcom/wordloco/wordchallenge/c/g;

.field w:Lcom/wordloco/wordchallenge/c/j;

.field x:Landroid/media/MediaPlayer;

.field y:Z

.field private z:Lcom/google/android/gms/plus/PlusOneButton;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/view/Game;->a:Z

    .line 78
    iput-boolean v6, p0, Lcom/wordloco/wordchallenge/view/Game;->b:Z

    .line 80
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/view/Game;->d:Z

    .line 84
    iput v1, p0, Lcom/wordloco/wordchallenge/view/Game;->C:I

    .line 85
    iput v1, p0, Lcom/wordloco/wordchallenge/view/Game;->D:I

    .line 87
    iput v4, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    iput v4, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    iput v5, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    iput v5, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    .line 88
    iput v1, p0, Lcom/wordloco/wordchallenge/view/Game;->i:I

    .line 89
    iput-wide v2, p0, Lcom/wordloco/wordchallenge/view/Game;->E:J

    .line 90
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/view/Game;->j:Z

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->F:Landroid/os/Handler;

    .line 92
    iput-wide v2, p0, Lcom/wordloco/wordchallenge/view/Game;->k:J

    .line 93
    iput-wide v2, p0, Lcom/wordloco/wordchallenge/view/Game;->l:J

    .line 94
    iput-wide v2, p0, Lcom/wordloco/wordchallenge/view/Game;->m:J

    .line 95
    iput-wide v2, p0, Lcom/wordloco/wordchallenge/view/Game;->n:J

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->o:I

    .line 97
    iput v4, p0, Lcom/wordloco/wordchallenge/view/Game;->G:F

    .line 98
    iput v4, p0, Lcom/wordloco/wordchallenge/view/Game;->H:F

    .line 99
    iput v1, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    .line 100
    iput-boolean v6, p0, Lcom/wordloco/wordchallenge/view/Game;->J:Z

    .line 101
    iput v5, p0, Lcom/wordloco/wordchallenge/view/Game;->K:F

    .line 102
    iput v5, p0, Lcom/wordloco/wordchallenge/view/Game;->L:F

    .line 103
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/view/Game;->p:Z

    .line 109
    new-instance v0, Lcom/wordloco/wordchallenge/c/i;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/i;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    .line 116
    iput-boolean v1, p0, Lcom/wordloco/wordchallenge/view/Game;->y:Z

    .line 1485
    new-instance v0, Lcom/wordloco/wordchallenge/view/c;

    invoke-direct {v0, p0}, Lcom/wordloco/wordchallenge/view/c;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->N:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/Game;)J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->E:J

    return-wide v0
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/Game;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/wordloco/wordchallenge/view/Game;->C:I

    return-void
.end method

.method static synthetic b(Lcom/wordloco/wordchallenge/view/Game;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->F:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/wordloco/wordchallenge/view/Game;I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/wordloco/wordchallenge/view/Game;->D:I

    return-void
.end method

.method static synthetic c(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 0

    .prologue
    .line 1615
    invoke-direct {p0}, Lcom/wordloco/wordchallenge/view/Game;->l()V

    return-void
.end method

.method static synthetic d(Lcom/wordloco/wordchallenge/view/Game;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/wordloco/wordchallenge/view/Game;)Lcom/facebook/UiLifecycleHelper;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    return-object v0
.end method

.method static synthetic f(Lcom/wordloco/wordchallenge/view/Game;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->A:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic g(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 0

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/wordloco/wordchallenge/view/Game;->j()V

    return-void
.end method

.method static synthetic h(Lcom/wordloco/wordchallenge/view/Game;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->C:I

    return v0
.end method

.method static synthetic i(Lcom/wordloco/wordchallenge/view/Game;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->D:I

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1401
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1402
    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->C:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wordloco/wordchallenge/view/m;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/m;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1449
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1450
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1477
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1478
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1479
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-ge v0, v1, :cond_0

    .line 1480
    const-string v0, "LOW"

    .line 1482
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HIGH"

    goto :goto_0
.end method

.method private l()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 1616
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    if-eqz v0, :cond_3

    .line 1617
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v0

    sget v1, Lcom/wordloco/wordchallenge/b/a;->p:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 1618
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    sget-object v1, Lcom/wordloco/wordchallenge/b/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1619
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->a()Lcom/wordloco/wordchallenge/c/j;

    move-result-object v8

    .line 1620
    if-eqz v8, :cond_3

    .line 1622
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->C:I

    .line 1623
    sget v0, Lcom/wordloco/wordchallenge/b/a;->p:I

    mul-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(I)I

    .line 1624
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->D:I

    .line 1625
    invoke-direct {p0}, Lcom/wordloco/wordchallenge/view/Game;->j()V

    .line 1627
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 1629
    const v2, 0x7f09005a

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1628
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v1

    .line 1634
    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v3

    .line 1635
    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v4

    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v6

    .line 1633
    invoke-virtual/range {v0 .. v6}, Lcom/wordloco/wordchallenge/c/h;->a(IIIIILjava/lang/String;)Ljava/lang/String;

    .line 1637
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    .line 1638
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/b/d;->i()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/b/d;->g(I)V

    .line 1645
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/i;->a()F

    move-result v1

    .line 1646
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/i;->a()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1645
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1647
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    int-to-float v2, v2

    .line 1648
    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    .line 1647
    invoke-virtual/range {v0 .. v7}, Lcom/wordloco/wordchallenge/c/i;->b(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 1650
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1651
    const v0, 0x7f060054

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1652
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1653
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    invoke-virtual {v8}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    .line 1654
    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    .line 1653
    invoke-virtual/range {v0 .. v5}, Lcom/wordloco/wordchallenge/c/b;->a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/wordloco/wordchallenge/c/d;)V

    .line 1656
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1657
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->a(Landroid/media/MediaPlayer;)V

    .line 1658
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1659
    const/high16 v1, 0x7f050000

    .line 1658
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    .line 1661
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/b;->a(Lcom/wordloco/wordchallenge/c/d;)V

    .line 1667
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/d;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1668
    invoke-direct {p0}, Lcom/wordloco/wordchallenge/view/Game;->m()V

    .line 1676
    :cond_3
    :goto_1
    return-void

    .line 1672
    :cond_4
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1673
    const v1, 0x7f090098

    .line 1672
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1673
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1662
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 1679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wordloco/wordchallenge/view/Game;->d:Z

    .line 1680
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->i()V

    .line 1681
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->c()V

    .line 1682
    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const v9, 0x7f060063

    const/16 v8, 0xff

    .line 155
    sget-boolean v2, Lcom/wordloco/wordchallenge/d/b;->d:Z

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "User level: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->F()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v2, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 162
    :cond_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->L()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 173
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->N()I

    move-result v2

    int-to-double v2, v2

    .line 174
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->K()I

    move-result v4

    .line 175
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->M()I

    move-result v5

    .line 174
    mul-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v0, v4

    .line 176
    const-wide v4, 0x3fee666666666666L    # 0.95

    .line 174
    mul-double/2addr v0, v4

    .line 173
    sub-double v0, v2, v0

    .line 177
    sget-boolean v2, Lcom/wordloco/wordchallenge/d/b;->d:Z

    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Last is good time?: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/wordloco/wordchallenge/d/h;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v2, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/wordloco/wordchallenge/b/a;->E:I

    .line 251
    new-instance v0, Lcom/wordloco/wordchallenge/c/b;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/b;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    .line 253
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 254
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 253
    check-cast v0, Landroid/view/WindowManager;

    .line 255
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 257
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    invoke-static {p0}, Lcom/wordloco/wordchallenge/d/j;->b(Lcom/wordloco/wordchallenge/view/Game;)V

    .line 259
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/g;->a()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    .line 265
    :goto_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->c()[Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v4

    .line 268
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 271
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 272
    const v6, 0x7f080028

    .line 271
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 273
    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 275
    new-instance v5, Lcom/wordloco/wordchallenge/c/f;

    .line 276
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/wordloco/wordchallenge/view/Game;->o:I

    sub-int v7, v2, v7

    div-int/2addr v7, v4

    .line 275
    invoke-direct {v5, v6, v7, v3}, Lcom/wordloco/wordchallenge/c/f;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v3, v6}, Lcom/wordloco/wordchallenge/c/i;->a(F)V

    .line 280
    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget v6, p0, Lcom/wordloco/wordchallenge/view/Game;->o:I

    sub-int v6, v2, v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Lcom/wordloco/wordchallenge/c/i;->b(F)V

    .line 281
    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-direct {p0}, Lcom/wordloco/wordchallenge/view/Game;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/wordloco/wordchallenge/c/i;->a(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 284
    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->o:I

    sub-int v3, v2, v3

    div-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 285
    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 289
    int-to-float v3, v2

    .line 290
    int-to-float v2, v2

    .line 291
    float-to-int v3, v3

    float-to-int v2, v2

    .line 292
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 291
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 293
    invoke-virtual {v2, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 294
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    .line 295
    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    invoke-virtual {v3, v10, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 296
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    .line 297
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->d()V

    .line 306
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->F:Landroid/os/Handler;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->N:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/d;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 312
    new-instance v2, Lcom/wordloco/wordchallenge/view/s;

    invoke-direct {v2, p0}, Lcom/wordloco/wordchallenge/view/s;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 319
    new-instance v2, Lcom/wordloco/wordchallenge/view/u;

    invoke-direct {v2, p0}, Lcom/wordloco/wordchallenge/view/u;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v1, 0x7f060062

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 333
    new-instance v2, Lcom/wordloco/wordchallenge/view/v;

    invoke-direct {v2, p0}, Lcom/wordloco/wordchallenge/view/v;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    invoke-virtual {p0, v9}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 347
    new-instance v2, Lcom/wordloco/wordchallenge/view/w;

    invoke-direct {v2, p0}, Lcom/wordloco/wordchallenge/view/w;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->c()V

    .line 372
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Puzzle Play "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/b/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->b(Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/g;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->n:J

    .line 378
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/g;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->m:J

    .line 379
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/g;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->l:J

    .line 380
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/g;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->E:J

    .line 381
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/g;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->k:J

    .line 383
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    .line 384
    sget-object v1, Lcom/wordloco/wordchallenge/b/a;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 383
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->i:I

    .line 386
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/i;->a()F

    move-result v1

    .line 387
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/i;->a()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v5

    double-to-float v2, v2

    sub-float/2addr v1, v2

    .line 386
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 388
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 391
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual/range {v0 .. v5}, Lcom/wordloco/wordchallenge/c/b;->a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/wordloco/wordchallenge/c/d;)V

    .line 392
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wordloco/wordchallenge/c/i;->a(Lcom/wordloco/wordchallenge/c/c;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 406
    :goto_2
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {p0, v9}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 410
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 411
    const v2, 0x7f020075

    .line 410
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :goto_3
    return-void

    .line 167
    :pswitch_1
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 168
    goto/16 :goto_0

    .line 170
    :pswitch_2
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto/16 :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    invoke-virtual {v0, p0}, Lcom/wordloco/wordchallenge/c/b;->a(Lcom/wordloco/wordchallenge/view/Game;)Lcom/wordloco/wordchallenge/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    .line 262
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/b;->a(Lcom/wordloco/wordchallenge/c/c;)Lcom/wordloco/wordchallenge/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    goto/16 :goto_1

    .line 394
    :cond_4
    new-instance v0, Lcom/wordloco/wordchallenge/c/g;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/g;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    .line 395
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/g;->a(I)V

    .line 396
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->n:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->e(J)V

    .line 397
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->d(J)V

    .line 398
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->l:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->c(J)V

    .line 399
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->E:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->a(J)V

    .line 400
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->b(J)V

    .line 402
    invoke-static {p0}, Lcom/wordloco/wordchallenge/d/j;->a(Lcom/wordloco/wordchallenge/view/Game;)V

    goto :goto_2

    .line 413
    :cond_5
    invoke-virtual {p0, v9}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 414
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 415
    const v2, 0x7f020074

    .line 414
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 2149
    if-eqz p1, :cond_1

    .line 2150
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 2154
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 2156
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 2087
    new-instance v0, Lcom/wordloco/wordchallenge/a/e;

    invoke-direct {v0, p1, p1, p2}, Lcom/wordloco/wordchallenge/a/e;-><init>(Landroid/view/View;Landroid/view/View;I)V

    .line 2090
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2092
    new-instance v1, Lcom/wordloco/wordchallenge/view/r;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/r;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/a/e;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2106
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 744
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->b:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_1

    .line 745
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->b:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->b:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v0, :cond_0

    .line 750
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->show()V

    goto :goto_0
.end method

.method public c()V
    .locals 10

    .prologue
    const v9, 0x7f060072

    const v8, 0x7f06006a

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 773
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->a(Landroid/media/MediaPlayer;)V

    .line 775
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f050004

    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/wordloco/wordchallenge/view/Game;->d:Z

    .line 783
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->d()V

    .line 784
    invoke-static {v1}, Lcom/wordloco/wordchallenge/d/i;->l(I)V

    .line 820
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->h()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 821
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->b(I)V

    .line 824
    :cond_1
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->b()I

    move-result v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(I)I

    .line 826
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->h()Z

    move-result v0

    if-nez v0, :cond_f

    .line 827
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->z()I

    move-result v0

    .line 830
    :goto_1
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 831
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_2

    .line 832
    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    .line 833
    const v4, 0x7f09005c

    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 832
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 836
    :cond_2
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 837
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_3

    .line 838
    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    .line 839
    const v4, 0x7f09005d

    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 838
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 844
    :cond_3
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 846
    iput-boolean v7, p0, Lcom/wordloco/wordchallenge/view/Game;->d:Z

    .line 847
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 848
    const-class v3, Lcom/wordloco/wordchallenge/view/Home;

    .line 847
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 849
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    .line 850
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->finish()V

    .line 853
    :cond_4
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->h()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Finish Play "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->b(Ljava/lang/String;)V

    .line 857
    :cond_5
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    iget-wide v2, p0, Lcom/wordloco/wordchallenge/view/Game;->k:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/b/d;->f(I)V

    .line 858
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/d;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/b/d;->e(I)V

    .line 860
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->h()Z

    move-result v0

    if-nez v0, :cond_c

    .line 862
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 863
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 864
    const v3, 0x7f09008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 863
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 866
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 868
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 869
    invoke-virtual {p0, v9}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 871
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 873
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 875
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 876
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 875
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 878
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 877
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 880
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iput-boolean v7, p0, Lcom/wordloco/wordchallenge/view/Game;->d:Z

    .line 884
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 886
    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 887
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 885
    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 889
    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 890
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 888
    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 884
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 891
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 892
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 893
    const/16 v2, 0x14

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 894
    invoke-virtual {p0, v9}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    .line 896
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 898
    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 899
    new-instance v1, Lcom/wordloco/wordchallenge/view/e;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/e;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 940
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 941
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 942
    const v2, 0x7f090053

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 943
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v3

    int-to-long v3, v3

    .line 941
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 947
    :cond_6
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 948
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_7

    .line 949
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 950
    const v2, 0x7f090054

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 949
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 952
    :cond_7
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    .line 953
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 954
    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 956
    :cond_8
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    .line 957
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 958
    const v2, 0x7f090056

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 957
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 960
    :cond_9
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_a

    .line 961
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 962
    const v2, 0x7f090057

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 961
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 964
    :cond_a
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_b

    .line 965
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 966
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 965
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1164
    :cond_b
    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------- FINISH GAME DATA ---------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUZZLE ID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1166
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUZZLE SIZE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1167
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUZZLE COMPLEXITY = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUZZLE DIFFICULTY = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUZZLE WORDNUMBER = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUZZLE SECONDS_TO_SOLVE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1171
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUZZLE AUTO_SOLVE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1173
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUZZLE HELPS_USED = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1174
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------- FINISH GAME DATA ---------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->c()I

    move-result v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->g(I)V

    .line 1177
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->e()I

    move-result v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->h(I)V

    .line 1178
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->f()I

    move-result v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->i(I)V

    .line 1179
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->g()I

    move-result v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->j(I)V

    .line 1180
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->h()Z

    move-result v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->g(Z)V

    .line 1181
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->i()I

    move-result v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->k(I)V

    .line 1183
    return-void

    .line 972
    :cond_c
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->u()I

    move-result v0

    sget v2, Lcom/wordloco/wordchallenge/b/a;->i:I

    if-lt v0, v2, :cond_d

    .line 973
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->u()I

    move-result v0

    sget v2, Lcom/wordloco/wordchallenge/b/a;->j:I

    if-gt v0, v2, :cond_d

    .line 975
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 976
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 978
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 979
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 980
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 981
    const v3, 0x7f09008c

    .line 980
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 983
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 984
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 985
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    invoke-virtual {p0, v9}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 987
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 992
    const/high16 v2, 0x42dc0000    # 110.0f

    .line 993
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 991
    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 995
    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 996
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 994
    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 990
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 997
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 998
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1000
    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1001
    invoke-virtual {p0, v9}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1004
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1006
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    iput-boolean v7, p0, Lcom/wordloco/wordchallenge/view/Game;->d:Z

    .line 1011
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    .line 1010
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1012
    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1013
    new-instance v1, Lcom/wordloco/wordchallenge/view/g;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/g;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_2

    .line 1061
    :cond_d
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040002

    .line 1060
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1062
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1064
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1065
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    sget v0, Lcom/wordloco/wordchallenge/b/a;->h:I

    .line 1068
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->s()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1067
    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1070
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1071
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1072
    const v5, 0x7f09008b

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    .line 1071
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1074
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1077
    :cond_e
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1079
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1080
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1081
    const v4, 0x7f0900a9

    new-array v5, v7, [Ljava/lang/Object;

    .line 1083
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->b()I

    move-result v6

    .line 1082
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1080
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    new-instance v0, Lcom/wordloco/wordchallenge/view/i;

    invoke-direct {v0, p0}, Lcom/wordloco/wordchallenge/view/i;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_2

    .line 778
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto/16 :goto_1
.end method

.method public d()V
    .locals 12

    .prologue
    const/16 v10, 0x5f

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1556
    new-instance v5, Lcom/wordloco/wordchallenge/c/e;

    invoke-direct {v5}, Lcom/wordloco/wordchallenge/c/e;-><init>()V

    .line 1560
    const-string v2, ""

    .line 1561
    const-string v1, ""

    move v3, v4

    .line 1562
    :goto_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    .line 1598
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1600
    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1601
    const-string v2, ""

    .line 1602
    const-string v1, ""

    .line 1605
    :cond_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1606
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1608
    new-instance v1, Landroid/text/SpannableString;

    const-string v5, "\n"

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1610
    new-array v5, v9, [Ljava/lang/CharSequence;

    .line 1611
    aput-object v3, v5, v4

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1610
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1613
    return-void

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v6, "NO_DATA_FOUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1564
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    iget-object v6, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/c/d;->b()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Lcom/wordloco/wordchallenge/c/d;->a(I)V

    .line 1566
    rem-int/lit8 v0, v3, 0x2

    if-ne v0, v7, :cond_3

    .line 1568
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0, v8}, Lcom/wordloco/wordchallenge/c/j;->i(I)V

    .line 1570
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 1573
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1574
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 1575
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1572
    invoke-virtual {v5, v1, v0, v10}, Lcom/wordloco/wordchallenge/c/e;->a(CIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1575
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 1562
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 1577
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1578
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1577
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 1581
    goto :goto_1

    .line 1583
    :cond_3
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0, v7}, Lcom/wordloco/wordchallenge/c/j;->i(I)V

    .line 1585
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 1586
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 1588
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 1590
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1587
    invoke-virtual {v5, v2, v0, v10}, Lcom/wordloco/wordchallenge/c/e;->a(CIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1590
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1586
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 1591
    goto/16 :goto_1

    .line 1592
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1593
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public deleteLetter(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2126
    new-instance v0, Lcom/wordloco/wordchallenge/a/a;

    invoke-direct {v0, p1, p1}, Lcom/wordloco/wordchallenge/a/a;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 2128
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2130
    new-instance v1, Lcom/wordloco/wordchallenge/view/t;

    invoke-direct {v1, p0, p1}, Lcom/wordloco/wordchallenge/view/t;-><init>(Lcom/wordloco/wordchallenge/view/Game;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/a/a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2146
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 1961
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    if-nez v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->a()Lcom/wordloco/wordchallenge/c/j;

    move-result-object v0

    .line 1963
    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    .line 1967
    :goto_0
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v1

    .line 1968
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v0

    add-int/2addr v0, v1

    .line 1967
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->shakeLetter(Landroid/view/View;)V

    .line 1972
    :goto_1
    return-void

    .line 1965
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1969
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public f()V
    .locals 2

    .prologue
    .line 1999
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2000
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    :goto_1
    return-void

    .line 2001
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2002
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->hideLetter(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2004
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public g()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2035
    :try_start_0
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    if-nez v1, :cond_0

    .line 2036
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/h;->a()Lcom/wordloco/wordchallenge/c/j;

    move-result-object v1

    .line 2037
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    move-object v3, v1

    .line 2041
    :goto_0
    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v2

    .line 2042
    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v1

    .line 2043
    iget-object v4, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v4

    mul-int/2addr v4, v1

    .line 2044
    add-int/2addr v4, v2

    .line 2043
    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2044
    const/4 v5, 0x0

    .line 2043
    invoke-virtual {p0, v4, v5}, Lcom/wordloco/wordchallenge/view/Game;->a(Landroid/view/View;I)V

    move v6, v0

    move v0, v1

    move v1, v2

    move v2, v6

    .line 2045
    :goto_1
    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_1

    .line 2083
    :goto_2
    return-void

    .line 2039
    :cond_0
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    move-object v3, v1

    goto :goto_0

    .line 2046
    :cond_1
    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/c/j;->c()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2077
    :goto_3
    iget-object v4, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v4

    mul-int/2addr v4, v0

    .line 2078
    add-int/2addr v4, v1

    .line 2077
    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2078
    add-int/lit8 v5, v2, 0x1

    .line 2076
    invoke-virtual {p0, v4, v5}, Lcom/wordloco/wordchallenge/view/Game;->a(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2045
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2048
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 2049
    goto :goto_3

    .line 2051
    :pswitch_1
    add-int/lit8 v1, v1, -0x1

    .line 2052
    goto :goto_3

    .line 2054
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 2055
    goto :goto_3

    .line 2057
    :pswitch_3
    add-int/lit8 v0, v0, -0x1

    .line 2058
    goto :goto_3

    .line 2060
    :pswitch_4
    add-int/lit8 v1, v1, 0x1

    .line 2061
    add-int/lit8 v0, v0, 0x1

    .line 2062
    goto :goto_3

    .line 2064
    :pswitch_5
    add-int/lit8 v1, v1, -0x1

    .line 2065
    add-int/lit8 v0, v0, 0x1

    .line 2066
    goto :goto_3

    .line 2068
    :pswitch_6
    add-int/lit8 v1, v1, 0x1

    .line 2069
    add-int/lit8 v0, v0, -0x1

    .line 2070
    goto :goto_3

    .line 2072
    :pswitch_7
    add-int/lit8 v1, v1, -0x1

    .line 2073
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 2080
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public h()V
    .locals 4

    .prologue
    .line 2110
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2111
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 2112
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 2113
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2114
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/h;->n()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2115
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/h;->d()[[Ljava/lang/String;

    move-result-object v1

    .line 2116
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v2

    div-int v2, v0, v2

    .line 2115
    aget-object v1, v1, v2

    .line 2117
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/h;->h()I

    move-result v2

    .line 2116
    rem-int v2, v0, v2

    .line 2117
    const-string v3, " "

    .line 2115
    aput-object v3, v1, v2

    .line 2118
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->deleteLetter(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    :goto_0
    return-void

    .line 2119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideLetter(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2011
    new-instance v0, Lcom/wordloco/wordchallenge/a/b;

    invoke-direct {v0, p1, p1}, Lcom/wordloco/wordchallenge/a/b;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 2013
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2015
    new-instance v1, Lcom/wordloco/wordchallenge/view/q;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/q;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/a/b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2030
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2159
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2160
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2161
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wordloco/wordchallenge/view/Game;->y:Z

    .line 2163
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1352
    invoke-super {p0, p1, p2, p3}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1353
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    .line 1354
    new-instance v1, Lcom/wordloco/wordchallenge/view/l;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/l;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    .line 1353
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 1370
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 759
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 760
    const-class v2, Lcom/wordloco/wordchallenge/view/Home;

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 761
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    .line 762
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->finish()V

    .line 763
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1458
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 1462
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 1466
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v7, 0x1

    const v6, 0x7f06004c

    const/4 v5, 0x0

    .line 422
    invoke-virtual {p0, v7}, Lcom/wordloco/wordchallenge/view/Game;->requestWindowFeature(I)Z

    .line 424
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :goto_0
    invoke-static {}, Lb/a/a/a/f;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    new-array v0, v7, [Lb/a/a/a/p;

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lb/a/a/a/f;->a(Landroid/content/Context;[Lb/a/a/a/p;)Lb/a/a/a/f;

    .line 431
    :cond_0
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    sput-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    .line 435
    :cond_1
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 437
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 436
    sput-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    .line 440
    :cond_2
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->h()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 441
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->p()V

    .line 444
    :cond_3
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 445
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-nez v0, :cond_4

    .line 446
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->b:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_b

    .line 447
    :cond_4
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->b()V

    .line 459
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 460
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    .line 461
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 462
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->setContentView(I)V

    .line 463
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 464
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 463
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 465
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 466
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const v0, 0x7f060051

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 468
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 470
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :goto_2
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 475
    const-string v1, "fonts/Adam.otf"

    .line 474
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 476
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 477
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 478
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 479
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 480
    const v0, 0x7f060051

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 481
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 483
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/wordloco/wordchallenge/view/x;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/x;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 493
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 495
    new-instance v0, Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wordloco/wordchallenge/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    .line 497
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 498
    invoke-static {p0}, Lcom/wordloco/wordchallenge/d/j;->b(Lcom/wordloco/wordchallenge/view/Game;)V

    .line 501
    :cond_6
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 502
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 503
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 504
    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 503
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 506
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 507
    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 506
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 509
    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 511
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 512
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 511
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 518
    :goto_3
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->o()I

    move-result v0

    sget v1, Lcom/wordloco/wordchallenge/b/a;->q:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_7

    .line 519
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 521
    const/4 v0, 0x0

    sput-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 522
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 523
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 524
    const-string v1, "ca-app-pub-6845902732325377/2975525440"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    new-instance v1, Lcom/wordloco/wordchallenge/view/y;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/y;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 534
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 535
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    .line 536
    sget-boolean v0, Lcom/wordloco/wordchallenge/d/b;->d:Z

    if-eqz v0, :cond_e

    .line 537
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 538
    sget-object v1, Lcom/wordloco/wordchallenge/d/b;->c:Ljava/lang/String;

    .line 537
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    .line 542
    :goto_4
    sget-object v1, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 545
    :cond_7
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 546
    new-instance v1, Lcom/wordloco/wordchallenge/view/z;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/z;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    .line 545
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 575
    new-instance v1, Lcom/wordloco/wordchallenge/view/aa;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/aa;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    .line 574
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 607
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 609
    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 606
    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->A:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 610
    new-instance v0, Lcom/google/android/gms/plus/PlusOneButton;

    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/PlusOneButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->z:Lcom/google/android/gms/plus/PlusOneButton;

    .line 611
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    .line 612
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 614
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 615
    const/4 v1, -0x2

    .line 616
    const/4 v2, -0x2

    .line 614
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 617
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 618
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 619
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 620
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->z:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->z:Lcom/google/android/gms/plus/PlusOneButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusOneButton;->setSize(I)V

    .line 622
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->z:Lcom/google/android/gms/plus/PlusOneButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusOneButton;->setAnnotation(I)V

    .line 623
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->z:Lcom/google/android/gms/plus/PlusOneButton;

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusOneButton;->setId(I)V

    .line 624
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->z:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 625
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/PlusOneButton;

    .line 627
    new-instance v1, Lcom/wordloco/wordchallenge/view/d;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/d;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :goto_5
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 655
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->h()I

    move-result v0

    if-ne v0, v8, :cond_8

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Puzzle Play "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/b/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->b(Ljava/lang/String;)V

    .line 661
    :cond_8
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->a()V

    .line 663
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 664
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 666
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 668
    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 669
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 667
    invoke-static {v7, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 671
    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 672
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 670
    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 666
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 673
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 674
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 675
    const/16 v1, 0xa

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 676
    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    :cond_9
    sget v0, Lcom/wordloco/wordchallenge/b/a;->A:I

    if-ne v0, v8, :cond_a

    .line 680
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 683
    :cond_a
    return-void

    .line 449
    :cond_b
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 452
    const-class v2, Lcom/wordloco/wordchallenge/view/OkCancelDialog;

    .line 451
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    const-string v1, "source"

    const-string v2, "Rate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 472
    :cond_c
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 473
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->w()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 514
    :cond_d
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 515
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/wordloco/wordchallenge/b/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 540
    :cond_e
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    goto/16 :goto_4

    .line 650
    :catch_0
    move-exception v0

    .line 651
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 425
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/view/Game;->a:Z

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 124
    sput-object v1, Lcom/wordloco/wordchallenge/d/b;->a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 127
    :cond_0
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->b:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/wordloco/wordchallenge/d/b;->b:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 129
    sput-object v1, Lcom/wordloco/wordchallenge/d/b;->b:Lcom/amazon/device/ads/InterstitialAd;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 135
    :cond_2
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    .line 136
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->z:Lcom/google/android/gms/plus/PlusOneButton;

    .line 137
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->A:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 138
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    .line 140
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    .line 141
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    .line 142
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    .line 143
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    .line 144
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    .line 145
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->F:Landroid/os/Handler;

    .line 146
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    .line 147
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    .line 149
    const v0, 0x7f060049

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 150
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->setContentView(I)V

    .line 151
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onDestroy()V

    .line 152
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 1292
    invoke-super {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1293
    invoke-virtual {p0, p1}, Lcom/wordloco/wordchallenge/view/Game;->setIntent(Landroid/content/Intent;)V

    .line 1295
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tutorial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->h()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1297
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    invoke-static {v2}, Lcom/wordloco/wordchallenge/d/i;->b(I)V

    .line 1299
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    iput-boolean v4, p0, Lcom/wordloco/wordchallenge/view/Game;->d:Z

    .line 1304
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->d()V

    .line 1305
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wordloco/wordchallenge/view/Game;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1306
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->finish()V

    .line 1307
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    .line 1310
    :cond_1
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Buy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1312
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1313
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 1314
    const v2, 0x7f09005a

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1313
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1317
    :cond_2
    const-string v0, "Buy +Solve"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1320
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1333
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0, v4}, Lcom/wordloco/wordchallenge/b/d;->a(Z)V

    .line 1335
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/i;->a()F

    move-result v1

    .line 1336
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/i;->a()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1335
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1337
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wordloco/wordchallenge/c/i;->a(Lcom/wordloco/wordchallenge/c/c;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1338
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1339
    const v0, 0x7f060054

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1340
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1341
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual/range {v0 .. v5}, Lcom/wordloco/wordchallenge/c/b;->a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/wordloco/wordchallenge/c/d;)V

    .line 1342
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->c()V

    .line 1343
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/b;->a(Lcom/wordloco/wordchallenge/c/d;)V

    .line 1344
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/d;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1345
    invoke-direct {p0}, Lcom/wordloco/wordchallenge/view/Game;->m()V

    .line 1348
    :cond_4
    return-void

    .line 1321
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 1322
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NO_DATA_FOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1323
    invoke-virtual {v0, v4}, Lcom/wordloco/wordchallenge/c/j;->a(Z)V

    .line 1325
    sget-object v2, Lcom/wordloco/wordchallenge/b/a;->f:[Ljava/lang/String;

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 1324
    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/j;->b(I)V

    .line 1326
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    .line 1327
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    sget-object v2, Lcom/wordloco/wordchallenge/b/a;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_3

    .line 1328
    iput v5, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 1373
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onPause()V

    .line 1376
    :try_start_0
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->deactivateApp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :goto_0
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/view/Game;->d:Z

    if-nez v0, :cond_0

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->m:J

    .line 1383
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1385
    new-instance v0, Lcom/wordloco/wordchallenge/c/g;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/g;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    .line 1386
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/g;->a(I)V

    .line 1387
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->n:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->e(J)V

    .line 1388
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->d(J)V

    .line 1389
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->l:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->c(J)V

    .line 1390
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->E:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->a(J)V

    .line 1391
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->v:Lcom/wordloco/wordchallenge/c/g;

    iget-wide v1, p0, Lcom/wordloco/wordchallenge/view/Game;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/wordloco/wordchallenge/c/g;->b(J)V

    .line 1393
    invoke-static {p0}, Lcom/wordloco/wordchallenge/d/j;->a(Lcom/wordloco/wordchallenge/view/Game;)V

    .line 1398
    :goto_1
    return-void

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1395
    :cond_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->d()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 687
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onResume()V

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->B:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/PlusOneButton;

    .line 695
    const/4 v2, 0x0

    .line 694
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneButton;->initialize(Ljava/lang/String;I)V

    .line 696
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->l:J

    .line 702
    iget-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->E:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wordloco/wordchallenge/view/Game;->E:J

    .line 704
    iput-wide v4, p0, Lcom/wordloco/wordchallenge/view/Game;->l:J

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 708
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 1474
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 1470
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/view/Game;->y:Z

    if-nez v0, :cond_3

    .line 1686
    const v0, 0x7f060054

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 1687
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 1688
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 1689
    const-string v0, ""

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1691
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1692
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1694
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v0

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    .line 1697
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1696
    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v0

    .line 1697
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 1698
    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_18

    .line 1699
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1948
    :cond_2
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/b;->a(Lcom/wordloco/wordchallenge/c/d;)V

    .line 1951
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/d;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1952
    invoke-direct {p0}, Lcom/wordloco/wordchallenge/view/Game;->m()V

    .line 1955
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1701
    :pswitch_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    .line 1702
    sget-object v1, Lcom/wordloco/wordchallenge/b/a;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1701
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1703
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->i:I

    .line 1704
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/i;->a()F

    move-result v1

    .line 1705
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/c/i;->a()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1704
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1706
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    .line 1707
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    .line 1708
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    float-to-int v1, v1

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    float-to-int v2, v2

    .line 1709
    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    float-to-int v3, v3

    iget v4, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    float-to-int v4, v4

    .line 1708
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wordloco/wordchallenge/c/c;->a(IIII)Ljava/lang/String;

    move-result-object v9

    .line 1710
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1711
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1712
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1713
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wordloco/wordchallenge/c/i;->a(Lcom/wordloco/wordchallenge/c/c;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1715
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1716
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    iget v4, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    .line 1717
    const/4 v7, 0x1

    .line 1716
    invoke-virtual/range {v0 .. v7}, Lcom/wordloco/wordchallenge/c/i;->b(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 1718
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1719
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v0

    if-nez v0, :cond_2

    .line 1720
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0, v9, v1, v11}, Lcom/wordloco/wordchallenge/c/b;->a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 1724
    :pswitch_2
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 1725
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->G:F

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 1726
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->H:F

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 1727
    :cond_4
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    .line 1728
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/i;->c(F)F

    move-result v0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    .line 1729
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->G:F

    .line 1730
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->H:F

    .line 1731
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wordloco/wordchallenge/c/i;->a(Lcom/wordloco/wordchallenge/c/c;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1732
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1733
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    iget v4, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wordloco/wordchallenge/c/i;->a(FFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1734
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    iget v4, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    .line 1735
    iget-object v6, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    const/4 v7, 0x1

    .line 1734
    invoke-virtual/range {v0 .. v7}, Lcom/wordloco/wordchallenge/c/i;->b(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 1736
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1737
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    float-to-int v1, v1

    .line 1738
    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    float-to-int v2, v2

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    float-to-int v3, v3

    iget v4, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    float-to-int v4, v4

    .line 1737
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wordloco/wordchallenge/c/c;->a(IIII)Ljava/lang/String;

    move-result-object v6

    .line 1739
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1740
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1741
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1742
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    .line 1743
    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    float-to-int v1, v1

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    float-to-int v2, v2

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    float-to-int v3, v3

    .line 1744
    iget v4, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    float-to-int v4, v4

    .line 1745
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1742
    invoke-virtual/range {v0 .. v5}, Lcom/wordloco/wordchallenge/c/h;->a(IIIILjava/lang/String;)Z

    move-result v0

    .line 1745
    if-eqz v0, :cond_6

    .line 1747
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1749
    const v1, 0x7f080022

    .line 1748
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1747
    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1756
    :goto_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v0

    if-nez v0, :cond_5

    .line 1757
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0, v6, v1, v11}, Lcom/wordloco/wordchallenge/c/b;->a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;)V

    .line 1759
    :cond_5
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->K:F

    .line 1760
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->L:F

    goto/16 :goto_0

    .line 1752
    :cond_6
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1754
    const v1, 0x7f080028

    .line 1753
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1752
    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 1762
    :cond_7
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1763
    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    .line 1764
    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    sub-float/2addr v0, v1

    .line 1763
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1765
    :goto_2
    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    .line 1766
    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 1765
    add-float v3, v1, v2

    .line 1767
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_c

    .line 1768
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v3, v1

    .line 1772
    :cond_8
    :goto_3
    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    .line 1773
    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    iget v4, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 1772
    add-float v4, v1, v0

    .line 1774
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_d

    .line 1775
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    .line 1779
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    .line 1780
    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    const/4 v7, 0x1

    .line 1779
    invoke-virtual/range {v0 .. v7}, Lcom/wordloco/wordchallenge/c/i;->b(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 1781
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1782
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    float-to-int v1, v1

    .line 1783
    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    float-to-int v2, v2

    float-to-int v5, v3

    .line 1784
    float-to-int v6, v4

    .line 1782
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/wordloco/wordchallenge/c/c;->a(IIII)Ljava/lang/String;

    move-result-object v0

    .line 1785
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v5

    .line 1787
    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    float-to-int v6, v1

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    float-to-int v7, v1

    .line 1788
    float-to-int v8, v3

    float-to-int v9, v4

    .line 1789
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1786
    invoke-virtual/range {v5 .. v10}, Lcom/wordloco/wordchallenge/c/h;->a(IIIILjava/lang/String;)Z

    move-result v1

    .line 1789
    if-eqz v1, :cond_e

    .line 1791
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1793
    const v2, 0x7f080022

    .line 1792
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1791
    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1800
    :goto_5
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v1

    if-nez v1, :cond_a

    .line 1801
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1, v0, v2, v11}, Lcom/wordloco/wordchallenge/c/b;->a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;)V

    .line 1803
    :cond_a
    iput v3, p0, Lcom/wordloco/wordchallenge/view/Game;->K:F

    .line 1804
    iput v4, p0, Lcom/wordloco/wordchallenge/view/Game;->L:F

    goto/16 :goto_0

    .line 1764
    :cond_b
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto/16 :goto_2

    .line 1769
    :cond_c
    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-gez v1, :cond_8

    .line 1770
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1776
    :cond_d
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_9

    .line 1777
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1796
    :cond_e
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1798
    const v2, 0x7f080028

    .line 1797
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1796
    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_5

    .line 1810
    :pswitch_3
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 1811
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->K:F

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 1812
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->L:F

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 1813
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->K:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 1814
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->L:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 1815
    sget-boolean v0, Lcom/wordloco/wordchallenge/d/b;->e:Z

    if-eqz v0, :cond_10

    .line 1816
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    .line 1817
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1818
    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1834
    :cond_10
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->K:F

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    .line 1835
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->L:F

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    .line 1836
    const/4 v1, 0x0

    .line 1837
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/view/Game;->p:Z

    if-nez v0, :cond_11

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 1838
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    iget v1, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    float-to-int v1, v1

    .line 1839
    iget v2, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    float-to-int v2, v2

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    float-to-int v3, v3

    iget v4, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    float-to-int v4, v4

    .line 1840
    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 1841
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1838
    invoke-virtual/range {v0 .. v6}, Lcom/wordloco/wordchallenge/c/h;->a(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1842
    if-nez v1, :cond_11

    .line 1843
    new-instance v4, Lcom/wordloco/wordchallenge/c/j;

    const/16 v0, 0x63

    const/16 v1, 0x63

    invoke-direct {v4, v0, v1}, Lcom/wordloco/wordchallenge/c/j;-><init>(II)V

    .line 1844
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/wordloco/wordchallenge/c/j;->c(I)V

    .line 1845
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/wordloco/wordchallenge/c/j;->d(I)V

    .line 1846
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/wordloco/wordchallenge/c/j;->e(I)V

    .line 1847
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/wordloco/wordchallenge/c/j;->f(I)V

    .line 1848
    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/j;->a()V

    .line 1849
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    .line 1850
    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v1

    .line 1851
    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    .line 1852
    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v3

    .line 1853
    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v4

    .line 1854
    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 1856
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1857
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1859
    const/4 v9, 0x0

    .line 1860
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    .line 1861
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1862
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    .line 1860
    add-int/lit8 v13, v13, -0x1

    .line 1858
    invoke-virtual {v6, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1849
    invoke-virtual/range {v0 .. v6}, Lcom/wordloco/wordchallenge/c/h;->a(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1866
    :cond_11
    if-eqz v1, :cond_13

    .line 1867
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    .line 1868
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    sget-object v2, Lcom/wordloco/wordchallenge/b/a;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_12

    .line 1869
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    .line 1873
    :cond_12
    sget v0, Lcom/wordloco/wordchallenge/b/a;->o:I

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->a(I)V

    .line 1877
    :cond_13
    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1878
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1879
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1881
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    .line 1882
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->w:Lcom/wordloco/wordchallenge/c/j;

    .line 1887
    :cond_14
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    .line 1888
    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    move-object v3, v11

    move-object v4, v7

    .line 1887
    invoke-virtual/range {v0 .. v5}, Lcom/wordloco/wordchallenge/c/b;->a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/wordloco/wordchallenge/c/d;)V

    .line 1890
    if-eqz v1, :cond_17

    .line 1891
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1892
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->a(Landroid/media/MediaPlayer;)V

    .line 1894
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f050000

    .line 1893
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    .line 1896
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1914
    :cond_15
    :goto_7
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wordloco/wordchallenge/c/i;->a(Lcom/wordloco/wordchallenge/c/c;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1915
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1916
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1917
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1916
    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1918
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    .line 1919
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    goto/16 :goto_0

    .line 1819
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 1820
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NO_DATA_FOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1821
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/j;->a(Z)V

    .line 1823
    sget v2, Lcom/wordloco/wordchallenge/b/a;->o:I

    invoke-static {v2}, Lcom/wordloco/wordchallenge/d/i;->a(I)V

    .line 1825
    sget-object v2, Lcom/wordloco/wordchallenge/b/a;->f:[Ljava/lang/String;

    iget v3, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 1824
    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/c/j;->b(I)V

    .line 1826
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    .line 1827
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    sget-object v2, Lcom/wordloco/wordchallenge/b/a;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_f

    .line 1828
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->I:I

    goto/16 :goto_6

    .line 1902
    :cond_17
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1903
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->a(Landroid/media/MediaPlayer;)V

    .line 1905
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    .line 1904
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    .line 1907
    :try_start_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->x:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 1908
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 1928
    :cond_18
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 1929
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->e:F

    .line 1930
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->f:F

    .line 1931
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->g:F

    .line 1932
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Game;->h:F

    .line 1934
    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1935
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1936
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1938
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->s:Lcom/wordloco/wordchallenge/c/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    .line 1939
    iget-object v5, p0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    move-object v3, v11

    move-object v4, v7

    .line 1938
    invoke-virtual/range {v0 .. v5}, Lcom/wordloco/wordchallenge/c/b;->a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/wordloco/wordchallenge/c/d;)V

    .line 1940
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Game;->M:Lcom/wordloco/wordchallenge/c/i;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Game;->t:Lcom/wordloco/wordchallenge/c/c;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/Game;->q:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/Game;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wordloco/wordchallenge/c/i;->a(Lcom/wordloco/wordchallenge/c/c;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1941
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1942
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1943
    const v1, 0x7f080028

    .line 1942
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1897
    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 1699
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v9, 0x0

    .line 712
    iget-boolean v0, p0, Lcom/wordloco/wordchallenge/view/Game;->b:Z

    if-eqz v0, :cond_0

    .line 713
    iput-boolean v9, p0, Lcom/wordloco/wordchallenge/view/Game;->b:Z

    .line 716
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v2, 0x0

    .line 717
    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v3, v1, v2

    .line 716
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v0

    .line 717
    if-nez v0, :cond_1

    .line 718
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_1
    :goto_0
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 725
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 726
    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 727
    const v3, 0x7f060058

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 728
    const v4, 0x7f060053

    invoke-virtual {p0, v4}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 730
    iget-boolean v5, p0, Lcom/wordloco/wordchallenge/view/Game;->J:Z

    if-eqz v5, :cond_2

    .line 732
    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    div-double/2addr v5, v10

    double-to-float v5, v5

    .line 731
    invoke-virtual {v3, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 734
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-double v5, v3

    const-wide v7, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v5, v7

    double-to-float v3, v5

    .line 733
    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 736
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v5

    div-double/2addr v2, v10

    double-to-float v2, v2

    .line 735
    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 738
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    double-to-float v0, v0

    .line 737
    invoke-virtual {v4, v9, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 739
    iput-boolean v9, p0, Lcom/wordloco/wordchallenge/view/Game;->J:Z

    .line 741
    :cond_2
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shakeLetter(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1976
    new-instance v0, Lcom/wordloco/wordchallenge/a/c;

    invoke-direct {v0, p1, p1}, Lcom/wordloco/wordchallenge/a/c;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 1978
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1980
    new-instance v1, Lcom/wordloco/wordchallenge/view/p;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/p;-><init>(Lcom/wordloco/wordchallenge/view/Game;)V

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/a/c;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1995
    return-void
.end method
