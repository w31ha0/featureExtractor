.class public Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewPager.java"


# instance fields
.field childIndex:I

.field public gravity:I

.field public isDecor:Z

.field needsMeasure:Z

.field position:I

.field widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2844
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2825
    const/4 v0, 0x0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->widthFactor:F

    .line 2845
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 2848
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2825
    const/4 v0, 0x0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->widthFactor:F

    .line 2850
    invoke-static {}, Lcom/viewpagerindicator/android/osp/ViewPager;->access$400()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2851
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->gravity:I

    .line 2852
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2853
    return-void
.end method
