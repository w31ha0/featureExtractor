.class public Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;
.super Ljava/lang/Object;
.source "KeyboardDetector.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->a:Ljava/lang/ref/WeakReference;

    .line 36
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$1;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$1;-><init>(Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->d:Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b()I

    move-result v0

    .line 48
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->c:I

    if-eq v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 50
    sub-int v2, v1, v0

    .line 52
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->d:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 56
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$2;

    invoke-direct {v2, p0}, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$2;-><init>(Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;)V

    .line 61
    const-wide/16 v4, 0x12c

    .line 56
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    :goto_0
    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->c:I

    .line 70
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 65
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->a()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;-><init>(Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method private b()I
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 75
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    return v0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b:Landroid/view/View;

    return-object v0
.end method
