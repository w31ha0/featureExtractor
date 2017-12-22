.class public Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BoundedFrameLayout.java"


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxWidth:I

    .line 26
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxHeight:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object v0, Lcom/netflix/android/widgetry/R$styleable;->BoundedFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->BoundedFrameLayout_bfl_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxWidth:I

    .line 33
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->BoundedFrameLayout_bfl_maxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxHeight:I

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 41
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxWidth:I

    if-ge v1, v0, :cond_0

    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 43
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxWidth:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 46
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 47
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxHeight:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxHeight:I

    if-ge v1, v0, :cond_1

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 49
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/BoundedFrameLayout;->mMaxHeight:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 51
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 52
    return-void
.end method
