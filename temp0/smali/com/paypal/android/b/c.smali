.class public Lcom/paypal/android/b/c;
.super Lcom/paypal/android/b/g;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/b/d$a;


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Lcom/paypal/android/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x5

    invoke-direct {p0, p1}, Lcom/paypal/android/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/b/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/b/c;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/b/c;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/b/c;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/paypal/android/b/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/c;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/c;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/paypal/android/b/d;

    invoke-direct {v0, p1}, Lcom/paypal/android/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, p0}, Lcom/paypal/android/b/d;->a(Lcom/paypal/android/b/d$a;)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/d;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v6}, Lcom/paypal/android/b/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v4}, Lcom/paypal/android/b/d;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v4}, Lcom/paypal/android/b/d;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/paypal/android/b/c;->d:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/paypal/android/b/c;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/paypal/android/b/g;->a(I)V

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/b/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/d;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/b/c;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/d;->a(I)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getDensity()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/paypal/android/b/d;->a(ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/paypal/android/b/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/c;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/c;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/d;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/paypal/android/b/c;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/b/c;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/b/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getDensity()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/paypal/android/b/d;->a(ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/paypal/android/b/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    iget-object v1, p0, Lcom/paypal/android/b/c;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/d;->onClick(Landroid/view/View;)V

    return-void
.end method
