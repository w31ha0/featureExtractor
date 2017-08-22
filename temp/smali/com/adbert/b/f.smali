.class public Lcom/adbert/b/f;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    iput p2, p0, Lcom/adbert/b/f;->a:I

    .line 18
    int-to-float v0, p2

    const/16 v1, 0x32

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->a(FII)I

    move-result v0

    iput v0, p0, Lcom/adbert/b/f;->b:I

    .line 19
    sget-object v0, Lcom/adbert/a/b/f;->f:Lcom/adbert/a/b/f;

    invoke-virtual {p0}, Lcom/adbert/b/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adbert/a/b/f;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 20
    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/adbert/b/f;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/adbert/b/f;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 34
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 35
    iget v0, p0, Lcom/adbert/b/f;->a:I

    .line 36
    iget v1, p0, Lcom/adbert/b/f;->b:I

    .line 37
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 38
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 37
    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 39
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/adbert/b/f;->bringToFront()V

    .line 30
    :cond_0
    return-void
.end method
