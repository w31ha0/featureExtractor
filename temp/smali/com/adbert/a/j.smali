.class public Lcom/adbert/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/adbert/a/j;->c:Landroid/content/Context;

    .line 19
    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 20
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 21
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 22
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/adbert/a/j;->a:I

    .line 23
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/adbert/a/j;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v1

    .line 25
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 28
    :try_start_1
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 29
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 30
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 32
    iget v1, v2, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/adbert/a/j;->a:I

    .line 33
    iget v1, v2, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/adbert/a/j;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 34
    :catch_1
    move-exception v1

    .line 35
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/adbert/a/j;->a:I

    return v0
.end method

.method public a(D)I
    .locals 3

    .prologue
    .line 57
    iget v0, p0, Lcom/adbert/a/j;->a:I

    int-to-float v0, v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    return v0
.end method

.method public a(III)I
    .locals 2

    .prologue
    .line 65
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/adbert/a/j;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/adbert/a/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adbert/a/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
