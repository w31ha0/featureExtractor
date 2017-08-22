.class public Lcom/adbert/b/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Lcom/adbert/a/c/a;

.field d:I

.field e:Lcom/adbert/a/a/a;

.field f:F

.field g:F

.field h:Landroid/widget/RelativeLayout;

.field i:Landroid/widget/ImageView;

.field j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/adbert/a/a/a;FFILcom/adbert/a/c/a;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPMBannerView pWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adbert/a/i;->b(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/adbert/b/b;->a:Landroid/content/Context;

    .line 35
    iput-boolean p2, p0, Lcom/adbert/b/b;->b:Z

    .line 36
    iput-object p7, p0, Lcom/adbert/b/b;->c:Lcom/adbert/a/c/a;

    .line 37
    iput-object p3, p0, Lcom/adbert/b/b;->e:Lcom/adbert/a/a/a;

    .line 38
    iput p6, p0, Lcom/adbert/b/b;->d:I

    .line 39
    iput p4, p0, Lcom/adbert/b/b;->f:F

    .line 40
    iput p5, p0, Lcom/adbert/b/b;->g:F

    .line 41
    invoke-direct {p0}, Lcom/adbert/b/b;->b()V

    .line 42
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 45
    iput-object p0, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    .line 46
    iget-object v0, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/adbert/a/b/e;->a:Lcom/adbert/a/b/e;

    invoke-virtual {v1}, Lcom/adbert/a/b/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 47
    iget-object v0, p0, Lcom/adbert/b/b;->e:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/b/b;->e:Lcom/adbert/a/a/a;

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->C:Z

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/adbert/b/b;->d()V

    .line 52
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adbert/b/b;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v0, Lcom/adbert/a/b/f;->a:Lcom/adbert/a/b/f;

    invoke-virtual {p0}, Lcom/adbert/b/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adbert/a/b/f;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    iget v0, p0, Lcom/adbert/b/b;->d:I

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/adbert/b/b;->d:I

    .line 56
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/adbert/b/b;->d:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/adbert/b/b;->d:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/adbert/b/b;->d:I

    div-int/lit8 v2, v2, 0x6

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 59
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/adbert/b/b;->d:I

    div-int/lit8 v2, v2, 0x6

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 60
    new-instance v0, Lcom/adbert/b/b$1;

    invoke-direct {v0, p0}, Lcom/adbert/b/b$1;-><init>(Lcom/adbert/b/b;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/adbert/b/b$2;

    invoke-direct {v1, p0}, Lcom/adbert/b/b$2;-><init>(Lcom/adbert/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/adbert/b/b;->c:Lcom/adbert/a/c/a;

    iget-object v1, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adbert/a/c/a;->setLogo(Landroid/view/ViewGroup;Z)V

    .line 74
    return-void

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/adbert/b/b;->c()V

    goto :goto_0
.end method

.method private c()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x407e000000000000L    # 480.0

    const-wide/high16 v6, 0x4074000000000000L    # 320.0

    const/4 v3, -0x2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 77
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adbert/b/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    iget-boolean v0, p0, Lcom/adbert/b/b;->b:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adbert/b/b;->f:F

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iget-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adbert/b/b;->f:F

    float-to-double v2, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    iget-object v0, p0, Lcom/adbert/b/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/b/b;->e:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/b/b;->j:Landroid/graphics/Bitmap;

    .line 96
    iget-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adbert/b/b;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/adbert/b/b$3;

    invoke-direct {v1, p0}, Lcom/adbert/b/b$3;-><init>(Lcom/adbert/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adbert/b/b;->g:F

    float-to-double v2, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iget-object v0, p0, Lcom/adbert/b/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adbert/b/b;->g:F

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private d()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const-wide/high16 v10, 0x407e000000000000L    # 480.0

    const-wide/high16 v8, 0x4074000000000000L    # 320.0

    const/4 v5, -0x2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    .line 112
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adbert/b/b;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v2, Lcom/adbert/b/d;

    iget-object v0, p0, Lcom/adbert/b/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/adbert/b/b;->c:Lcom/adbert/a/c/a;

    iget-object v4, p0, Lcom/adbert/b/b;->e:Lcom/adbert/a/a/a;

    iget-object v4, v4, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    invoke-direct {v2, v0, v3, v4}, Lcom/adbert/b/d;-><init>(Landroid/content/Context;Lcom/adbert/a/c/a;Lcom/adbert/a/b/b;)V

    .line 114
    iget-object v0, p0, Lcom/adbert/b/b;->e:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/b/b;->e:Lcom/adbert/a/a/a;

    invoke-virtual {v2, v0, v3}, Lcom/adbert/b/d;->a(Ljava/lang/String;Lcom/adbert/a/a/a;)V

    .line 115
    iget-boolean v0, p0, Lcom/adbert/b/b;->b:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/adbert/b/b;->f:F

    float-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/adbert/b/b;->f:F

    float-to-double v4, v3

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    mul-double/2addr v4, v10

    double-to-int v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xd

    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adbert/b/b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v1, Lcom/adbert/b/b$4;

    invoke-direct {v1, p0}, Lcom/adbert/b/b$4;-><init>(Lcom/adbert/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/b;->h:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/adbert/b/b;->g:F

    float-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/adbert/b/b;->g:F

    float-to-double v4, v3

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    mul-double/2addr v4, v10

    double-to-int v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adbert/b/b;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/b/b;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/adbert/b/b;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/b/b;->j:Landroid/graphics/Bitmap;

    .line 153
    :cond_0
    return-void
.end method
