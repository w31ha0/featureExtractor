.class public Lcom/adbert/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v1, 0x140

    iput v1, p0, Lcom/adbert/a/a;->i:I

    const/16 v1, 0x32

    iput v1, p0, Lcom/adbert/a/a;->j:I

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lcom/adbert/a/a;->a:I

    .line 26
    iput-object p1, p0, Lcom/adbert/a/a;->b:Landroid/content/Context;

    .line 28
    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/adbert/a/a;->c:I

    .line 31
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/adbert/a/a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 36
    :try_start_1
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 37
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 38
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 40
    iget v1, v2, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/adbert/a/a;->c:I

    .line 41
    iget v1, v2, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/adbert/a/a;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 42
    :catch_1
    move-exception v1

    .line 43
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(FII)I
    .locals 2

    .prologue
    .line 78
    int-to-float v0, p2

    div-float v0, p1, v0

    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/adbert/a/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adbert/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/adbert/a/a;->c:I

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/a/a;->f:Z

    .line 83
    int-to-float v0, p1

    iget v1, p0, Lcom/adbert/a/a;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/adbert/a/a;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adbert/a/a;->g:I

    .line 84
    iput p1, p0, Lcom/adbert/a/a;->h:I

    .line 85
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/adbert/a/a;->e:Z

    .line 120
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adbert/a/a;->d:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/adbert/a/a;->a:I

    .line 109
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/adbert/a/a;->a:I

    if-lez v0, :cond_0

    .line 59
    iget v0, p0, Lcom/adbert/a/a;->a:I

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/adbert/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/adbert/a/a;->b()I

    move-result v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/adbert/a/a;->a()I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 3

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/adbert/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 70
    iget v0, p0, Lcom/adbert/a/a;->h:I

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adbert/a/a;->c()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/adbert/a/a;->i:I

    iget v2, p0, Lcom/adbert/a/a;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/adbert/a/a;->a(FII)I

    move-result v0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/adbert/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lcom/adbert/a/a;->g:I

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adbert/a/a;->c()I

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/adbert/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/adbert/a/a;->h:I

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adbert/a/a;->d()I

    move-result v0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 102
    iget-object v1, p0, Lcom/adbert/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/adbert/a/a;->e:Z

    return v0
.end method
