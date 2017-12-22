.class public Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# static fields
.field private static final DEFAULT_ATTRS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorPoint:F

.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsSlidingEnabled:Z

.field private mIsSlidingUp:Z

.field private mIsUnableToDrag:Z

.field private mIsUsingDragViewTouchEvents:Z

.field private mMinFlingVelocity:I

.field private mPanelHeight:I

.field private mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

.field private final mScrollTouchSlop:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v7, -0x67000000

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 233
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/16 v0, 0x190

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 65
    iput v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    .line 80
    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 85
    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 107
    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 122
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 174
    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 234
    if-eqz p2, :cond_3

    .line 235
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 239
    const/16 v4, 0x30

    if-eq v0, v4, :cond_0

    const/16 v4, 0x50

    if-eq v0, v4, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "layout_gravity must be set to either top or bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    const/16 v4, 0x50

    if-ne v0, v4, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    .line 245
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 251
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 253
    const/4 v3, 0x3

    const/16 v4, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 254
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 256
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 259
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 263
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    if-ne v3, v5, :cond_4

    .line 264
    const/high16 v3, 0x42880000    # 68.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 266
    :cond_4
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    if-ne v3, v5, :cond_5

    .line 267
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 270
    :cond_5
    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 272
    new-instance v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;)V

    invoke-static {p0, v6, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 273
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 275
    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    .line 276
    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    .line 278
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollTouchSlop:I

    .line 280
    return-void

    :cond_6
    move v0, v2

    .line 242
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method static synthetic access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$400(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    return v0
.end method

.method private collapsePane(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    :cond_0
    const/4 v0, 0x1

    .line 743
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private expandPane(Landroid/view/View;IF)Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p3, p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    :cond_0
    const/4 v0, 0x1

    .line 736
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSlidingTop()I
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 755
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 434
    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 437
    :cond_0
    return v0
.end method

.method private isDragViewUnder(II)Z
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 718
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 719
    :goto_0
    if-nez v2, :cond_1

    .line 728
    :goto_1
    return v1

    .line 718
    :cond_0
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    goto :goto_0

    .line 722
    :cond_1
    new-array v3, v4, [I

    .line 723
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 724
    new-array v4, v4, [I

    .line 725
    invoke-virtual {p0, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 726
    aget v5, v4, v1

    add-int/2addr v5, p1

    .line 727
    aget v4, v4, v0

    add-int/2addr v4, p2

    .line 728
    aget v6, v3, v1

    if-lt v5, v6, :cond_2

    aget v6, v3, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    aget v5, v3, v0

    if-lt v4, v5, :cond_2

    aget v3, v3, v0

    .line 729
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v3

    if-ge v4, v2, :cond_2

    :goto_2
    move v1, v0

    .line 728
    goto :goto_1

    :cond_2
    move v0, v1

    .line 729
    goto :goto_2
.end method

.method private onPanelDragged(I)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 845
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    .line 846
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_1

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 850
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 851
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 857
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 858
    return-void

    .line 846
    :cond_1
    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 853
    :cond_2
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 854
    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1007
    instance-of v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapsePane()Z
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->collapsePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelAnchored(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelAnchored(Landroid/view/View;)V

    .line 385
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 386
    return-void
.end method

.method dispatchOnPanelCollapsed(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelCollapsed(Landroid/view/View;)V

    .line 378
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 379
    return-void
.end method

.method dispatchOnPanelExpanded(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelExpanded(Landroid/view/View;)V

    .line 371
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 372
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 365
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 936
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 938
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 946
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v0, :cond_2

    .line 947
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    sub-int v1, v0, v1

    .line 948
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 953
    :goto_1
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 955
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 956
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 957
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 951
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 862
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 864
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    .line 866
    const/4 v1, 0x0

    .line 868
    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v3, :cond_2

    iget-boolean v0, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 871
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 878
    :goto_0
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    .line 879
    const/4 v0, 0x1

    .line 883
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 884
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 886
    if-eqz v0, :cond_0

    .line 887
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x18

    .line 888
    int-to-float v0, v0

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    sub-float v2, v5, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 889
    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 890
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 891
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 894
    :cond_0
    return v1

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public expandPane()Z
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->expandPane(F)Z

    move-result v0

    return v0
.end method

.method public expandPane(F)Z
    .locals 2

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isPaneVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->showPane()V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->expandPane(Landroid/view/View;IF)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 995
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1012
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1000
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method public hidePane()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 841
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    goto :goto_0
.end method

.method public isAnchored()Z
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaneVisible()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 820
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 824
    :goto_0
    return v1

    .line 823
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 824
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 444
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 450
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 288
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 289
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 291
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 615
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 617
    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 619
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 670
    :cond_1
    :goto_0
    return v2

    .line 622
    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_4

    .line 623
    :cond_3
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto :goto_0

    .line 627
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 631
    packed-switch v0, :pswitch_data_0

    :cond_5
    :pswitch_0
    move v0, v2

    .line 668
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 670
    if-nez v3, :cond_7

    if-eqz v0, :cond_1

    :cond_7
    move v2, v1

    goto :goto_0

    .line 633
    :pswitch_1
    iput-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 634
    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 635
    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    .line 636
    float-to-int v0, v3

    float-to-int v3, v4

    invoke-direct {p0, v0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-nez v0, :cond_5

    move v0, v1

    .line 637
    goto :goto_1

    .line 643
    :pswitch_2
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 644
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 645
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v7

    .line 648
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-eqz v0, :cond_b

    .line 649
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_8

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_8

    .line 650
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 654
    :cond_8
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_b

    .line 655
    float-to-int v0, v3

    float-to-int v8, v4

    invoke-direct {p0, v0, v8}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v0

    .line 659
    :goto_2
    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_9

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_a

    :cond_9
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 660
    :cond_a
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 661
    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_2

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 529
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v4

    .line 530
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    .line 531
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v5

    .line 533
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v6

    .line 535
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v2, :cond_0

    .line 536
    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$SlideState:[I

    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v7}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v7

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_0

    .line 544
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    :cond_0
    :goto_0
    move v2, v3

    .line 549
    :goto_1
    if-ge v2, v6, :cond_8

    .line 550
    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 552
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-ne v0, v8, :cond_3

    .line 549
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 538
    :pswitch_0
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 541
    :pswitch_1
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    :cond_2
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 557
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 559
    iget-boolean v9, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v9, :cond_4

    .line 560
    iget v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    .line 564
    :cond_4
    iget-boolean v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v9, :cond_6

    .line 565
    iget-boolean v0, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v0, v0

    iget v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v0, v9

    float-to-int v0, v0

    add-int/2addr v0, v5

    .line 569
    :goto_3
    add-int/2addr v8, v0

    .line 571
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v4

    .line 576
    invoke-virtual {v7, v4, v0, v9, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 565
    goto :goto_3

    .line 567
    :cond_6
    iget-boolean v0, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v0, v0

    iget v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v0, v9

    float-to-int v0, v0

    sub-int v0, v5, v0

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 579
    :cond_8
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v0, :cond_9

    .line 580
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 583
    :cond_9
    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 584
    return-void

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 454
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 455
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 456
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 457
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 459
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_1

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    .line 466
    iget v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 468
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v8

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    .line 483
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v8, :cond_8

    .line 484
    invoke-virtual {p0, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 485
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 488
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->dimWhenOffset:Z

    .line 483
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 493
    :cond_2
    const/4 v1, 0x1

    if-ne v4, v1, :cond_3

    .line 494
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    .line 495
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->dimWhenOffset:Z

    .line 496
    iput-object v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    move v1, v2

    .line 503
    :goto_2
    iget v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v3, v10, :cond_4

    .line 504
    const/high16 v3, -0x80000000

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 512
    :goto_3
    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_6

    .line 513
    const/high16 v0, -0x80000000

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 520
    :goto_4
    invoke-virtual {v9, v3, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 499
    :cond_3
    sub-int v1, v2, v7

    goto :goto_2

    .line 505
    :cond_4
    iget v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_5

    .line 506
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_3

    .line 508
    :cond_5
    iget v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_3

    .line 514
    :cond_6
    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 515
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_4

    .line 517
    :cond_7
    iget v0, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_4

    .line 524
    :cond_8
    invoke-virtual {p0, v5, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    .line 525
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 588
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 590
    if-eq p2, p4, :cond_0

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 593
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    if-nez v0, :cond_2

    .line 676
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 714
    :cond_1
    :goto_0
    return v0

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 682
    const/4 v0, 0x1

    .line 684
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 686
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 688
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 689
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    goto :goto_0

    .line 694
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 696
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v4, v2, v1

    .line 697
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v5, v3, v1

    .line 698
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    .line 699
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 700
    :goto_1
    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    mul-int v5, v6, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    float-to-int v2, v2

    float-to-int v3, v3

    .line 701
    invoke-direct {p0, v2, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 703
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isAnchored()Z

    move-result v1

    if-nez v1, :cond_4

    .line 704
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->expandPane(F)Z

    goto :goto_0

    .line 699
    :cond_3
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    goto :goto_1

    .line 706
    :cond_4
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->collapsePane()Z

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setAllChildrenVisible()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 425
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 426
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 427
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_1
    return-void
.end method

.method public setAnchorPoint(F)V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 349
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 351
    :cond_0
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .prologue
    .line 300
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 301
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 302
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 339
    return-void
.end method

.method public setEnableDragViewTouchEvents(Z)V
    .locals 0

    .prologue
    .line 610
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    .line 611
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 0

    .prologue
    .line 317
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 318
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 319
    return-void
.end method

.method public setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .line 330
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 359
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    .line 601
    return-void
.end method

.method public showPane()V
    .locals 2

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 834
    :goto_0
    return-void

    .line 831
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 832
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 833
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    goto :goto_0
.end method

.method smoothSlideTo(FI)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 904
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 919
    :goto_0
    return v0

    .line 909
    :cond_0
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    .line 910
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_1

    int-to-float v0, v0

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 914
    :goto_1
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 916
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 917
    const/4 v0, 0x1

    goto :goto_0

    .line 910
    :cond_1
    int-to-float v0, v0

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 919
    goto :goto_0
.end method

.method updateObscuredViewVisibility()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v5

    .line 393
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v2

    sub-int v6, v0, v2

    .line 394
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v7

    .line 395
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 400
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 402
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 403
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 404
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 408
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 409
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 410
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 411
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 412
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 414
    if-lt v5, v4, :cond_1

    if-lt v7, v2, :cond_1

    if-gt v6, v3, :cond_1

    if-gt v8, v0, :cond_1

    .line 416
    const/4 v1, 0x4

    .line 420
    :cond_1
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 406
    goto :goto_1
.end method
