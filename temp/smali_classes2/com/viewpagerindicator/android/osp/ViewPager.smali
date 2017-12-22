.class public Lcom/viewpagerindicator/android/osp/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION_MS:I = 0x190

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x14

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final TAG_TOUCH:Ljava/lang/String; = "ViewPagerTouch"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/viewpagerindicator/android/osp/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsTrackingTouch:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/viewpagerindicator/android/osp/ViewPager;->LAYOUT_ATTRS:[I

    .line 119
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$1;

    invoke-direct {v0}, Lcom/viewpagerindicator/android/osp/ViewPager$1;-><init>()V

    sput-object v0, Lcom/viewpagerindicator/android/osp/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 126
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$2;

    invoke-direct {v0}, Lcom/viewpagerindicator/android/osp/ViewPager$2;-><init>()V

    sput-object v0, Lcom/viewpagerindicator/android/osp/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 227
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/viewpagerindicator/android/osp/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/viewpagerindicator/android/osp/ViewPager;->sPositionComparator:Lcom/viewpagerindicator/android/osp/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 349
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempItem:Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 141
    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredCurItem:I

    .line 142
    iput-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 143
    iput-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 155
    const v0, -0x800001

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstOffset:F

    .line 156
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    .line 165
    iput v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOffscreenPageLimit:I

    .line 184
    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 211
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstLayout:Z

    .line 245
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/android/osp/ViewPager$3;-><init>(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScrollState:I

    .line 350
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->initViewPager()V

    .line 351
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 354
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempItem:Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 141
    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredCurItem:I

    .line 142
    iput-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 143
    iput-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 155
    const v0, -0x800001

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstOffset:F

    .line 156
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    .line 165
    iput v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOffscreenPageLimit:I

    .line 184
    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 211
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstLayout:Z

    .line 245
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/android/osp/ViewPager$3;-><init>(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScrollState:I

    .line 355
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->initViewPager()V

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/viewpagerindicator/android/osp/ViewPager;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/viewpagerindicator/android/osp/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/viewpagerindicator/android/osp/ViewPager;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/viewpagerindicator/android/osp/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;ILcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;)V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1113
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 1114
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v0

    .line 1115
    if-lez v0, :cond_0

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v5, v0

    .line 1117
    :goto_0
    if-eqz p3, :cond_6

    .line 1118
    iget v0, p3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 1120
    iget v1, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ge v0, v1, :cond_3

    .line 1121
    const/4 v1, 0x0

    .line 1123
    iget v2, p3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    iget v3, p3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v3

    add-float v3, v2, v5

    .line 1124
    add-int/lit8 v2, v0, 0x1

    .line 1125
    :goto_1
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1126
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 1127
    :goto_2
    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-le v2, v4, :cond_1

    iget-object v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 1128
    add-int/lit8 v1, v1, 0x1

    .line 1129
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    goto :goto_2

    .line 1115
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 1131
    :cond_1
    :goto_3
    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ge v2, v4, :cond_2

    .line 1134
    iget-object v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1135
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1137
    :cond_2
    iput v3, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 1138
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    add-float/2addr v3, v0

    .line 1125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1140
    :cond_3
    iget v1, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-le v0, v1, :cond_6

    .line 1141
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1143
    iget v3, p3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 1144
    add-int/lit8 v2, v0, -0x1

    .line 1145
    :goto_4
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-lt v2, v0, :cond_6

    if-ltz v1, :cond_6

    .line 1146
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 1147
    :goto_5
    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ge v2, v4, :cond_4

    if-lez v1, :cond_4

    .line 1148
    add-int/lit8 v1, v1, -0x1

    .line 1149
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    goto :goto_5

    .line 1151
    :cond_4
    :goto_6
    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-le v2, v4, :cond_5

    .line 1154
    iget-object v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 1155
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1157
    :cond_5
    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 1158
    iput v3, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 1145
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1164
    :cond_6
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1165
    iget v2, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 1166
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    add-int/lit8 v1, v0, -0x1

    .line 1167
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-nez v0, :cond_7

    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstOffset:F

    .line 1168
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    add-int/lit8 v3, v6, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    iget v3, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v9

    :goto_8
    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    .line 1171
    add-int/lit8 v0, p2, -0x1

    move v4, v0

    :goto_9
    if-ltz v4, :cond_b

    .line 1172
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move v3, v2

    .line 1173
    :goto_a
    iget v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-le v1, v2, :cond_9

    .line 1174
    iget-object v8, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v8, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v5

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_a

    .line 1167
    :cond_7
    const v0, -0x800001

    goto :goto_7

    .line 1168
    :cond_8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1176
    :cond_9
    iget v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    sub-float v2, v3, v2

    .line 1177
    iput v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 1178
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-nez v0, :cond_a

    .line 1179
    iput v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstOffset:F

    .line 1171
    :cond_a
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v0

    goto :goto_9

    .line 1182
    :cond_b
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    iget v1, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v1

    add-float v2, v0, v5

    .line 1183
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    add-int/lit8 v1, v0, 0x1

    .line 1185
    add-int/lit8 v0, p2, 0x1

    move v4, v0

    :goto_b
    if-ge v4, v7, :cond_e

    .line 1186
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move v3, v2

    .line 1187
    :goto_c
    iget v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ge v1, v2, :cond_c

    .line 1188
    iget-object v8, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_c

    .line 1190
    :cond_c
    iget v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    add-int/lit8 v8, v6, -0x1

    if-ne v2, v8, :cond_d

    .line 1191
    iget v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v9

    iput v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    .line 1193
    :cond_d
    iput v3, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 1194
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    add-float v2, v3, v0

    .line 1185
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_b

    .line 1198
    :cond_e
    return-void
.end method

.method private completeScroll(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1734
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 1735
    :goto_0
    if-eqz v0, :cond_1

    .line 1737
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1738
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1739
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v1

    .line 1740
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollY()I

    move-result v3

    .line 1741
    iget-object v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1742
    iget-object v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1743
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1744
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    .line 1747
    :cond_1
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    move v1, v2

    move v3, v0

    .line 1748
    :goto_1
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1749
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 1750
    iget-boolean v5, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_2

    .line 1752
    iput-boolean v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->scrolling:Z

    move v3, v4

    .line 1748
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1734
    goto :goto_0

    .line 1755
    :cond_4
    if-eqz v3, :cond_5

    .line 1756
    if-eqz p1, :cond_6

    .line 1757
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1762
    :cond_5
    :goto_2
    return-void

    .line 1759
    :cond_6
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 3

    .prologue
    .line 2176
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_2

    .line 2177
    if-lez p3, :cond_1

    .line 2183
    :goto_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2185
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2188
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v1, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2191
    :cond_0
    return p1

    .line 2177
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2179
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    .line 2180
    :goto_1
    int-to-float v1, p1

    add-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0

    .line 2179
    :cond_3
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1769
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1770
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1771
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1773
    :goto_1
    invoke-virtual {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1770
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1771
    goto :goto_1

    .line 1775
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2424
    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    .line 2425
    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsUnableToDrag:Z

    .line 2427
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2431
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2566
    if-nez p1, :cond_2

    .line 2567
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2569
    :goto_0
    if-nez p2, :cond_0

    .line 2570
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2588
    :goto_1
    return-object v0

    .line 2573
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2574
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2575
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2576
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2578
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2579
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2580
    check-cast v0, Landroid/view/ViewGroup;

    .line 2581
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2582
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2583
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2584
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2586
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2588
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private infoForCurrentScrollPosition()Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2133
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v1

    .line 2134
    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 2135
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2136
    :goto_1
    const/4 v5, -0x1

    .line 2139
    const/4 v4, 0x1

    .line 2141
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 2142
    :goto_2
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2143
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2145
    if-nez v5, :cond_6

    iget v10, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 2147
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempItem:Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2148
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 2149
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 2150
    iget-object v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    iput v6, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    .line 2151
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 2153
    :goto_3
    iget v6, v2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 2156
    iget v7, v2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 2157
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 2158
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 2171
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 2134
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2135
    goto :goto_1

    .line 2165
    :cond_5
    iget v5, v2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 2167
    iget v4, v2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    .line 2142
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1765
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInterceptTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1801
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1806
    :cond_0
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsTrackingTouch:Z

    .line 1807
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    .line 1808
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsUnableToDrag:Z

    .line 1809
    iput v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 1810
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1811
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1948
    :cond_1
    :goto_0
    return v2

    .line 1819
    :cond_2
    if-eqz v0, :cond_4

    .line 1820
    iget-boolean v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_3

    .line 1824
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsTrackingTouch:Z

    move v2, v6

    .line 1825
    goto :goto_0

    .line 1828
    :cond_3
    iget-boolean v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_4

    .line 1832
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsTrackingTouch:Z

    goto :goto_0

    .line 1837
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1939
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1940
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1942
    :cond_6
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1948
    iget-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1847
    :sswitch_0
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 1848
    if-eq v0, v3, :cond_5

    .line 1853
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1854
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1855
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    sub-float v8, v7, v1

    .line 1856
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1857
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1858
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionY:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1864
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/viewpagerindicator/android/osp/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    .line 1865
    invoke-virtual/range {v0 .. v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1867
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsTrackingTouch:Z

    .line 1868
    iput v7, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 1869
    iput v10, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionY:F

    .line 1870
    iput-boolean v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsUnableToDrag:Z

    goto :goto_0

    .line 1875
    :cond_7
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_a

    cmpl-float v0, v9, v11

    if-lez v0, :cond_a

    .line 1879
    iput-boolean v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    .line 1880
    invoke-direct {p0, v6}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollState(I)V

    .line 1881
    cmpl-float v0, v8, v12

    if-lez v0, :cond_9

    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 1883
    iput v10, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionY:F

    .line 1884
    invoke-direct {p0, v6}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1895
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1897
    invoke-direct {p0, v7}, Lcom/viewpagerindicator/android/osp/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1898
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 1881
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1885
    :cond_a
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    .line 1893
    iput-boolean v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1907
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 1908
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionY:F

    .line 1909
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 1910
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsUnableToDrag:Z

    .line 1911
    iput-boolean v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsTrackingTouch:Z

    .line 1913
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1914
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1915
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 1917
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1918
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    .line 1919
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    .line 1920
    iput-boolean v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    .line 1921
    invoke-direct {p0, v6}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1923
    :cond_b
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->completeScroll(Z)V

    .line 1924
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1935
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1837
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 2409
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2410
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2411
    iget v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 2414
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2415
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 2416
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 2417
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2421
    :cond_0
    return-void

    .line 2414
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1625
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1626
    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCalledSuper:Z

    .line 1627
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->onPageScrolled(IFI)V

    .line 1628
    iget-boolean v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCalledSuper:Z

    if-nez v1, :cond_2

    .line 1629
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    :cond_0
    invoke-direct {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForCurrentScrollPosition()Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v1

    .line 1635
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v2

    .line 1636
    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    add-int/2addr v3, v2

    .line 1637
    iget v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1638
    iget v5, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 1639
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v2, v6

    iget v1, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1641
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1643
    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCalledSuper:Z

    .line 1644
    invoke-virtual {p0, v5, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->onPageScrolled(IFI)V

    .line 1645
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCalledSuper:Z

    if-nez v0, :cond_1

    .line 1646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private performDrag(F)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2077
    .line 2079
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2080
    iput p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 2082
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2083
    add-float v5, v1, v0

    .line 2084
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v7

    .line 2086
    int-to-float v0, v7

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstOffset:F

    mul-float v4, v0, v1

    .line 2087
    int-to-float v0, v7

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    mul-float v6, v0, v1

    .line 2091
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2092
    const-string/jumbo v0, "ViewPager"

    const-string/jumbo v1, "We have no items to drag - returning early"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :goto_0
    return v2

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2097
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2098
    iget v8, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-eqz v8, :cond_6

    .line 2100
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 2102
    :goto_1
    iget v8, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget-object v9, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_5

    .line 2104
    iget v1, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 2107
    :goto_2
    cmpg-float v6, v5, v4

    if-gez v6, :cond_2

    .line 2108
    if-eqz v0, :cond_1

    .line 2109
    sub-float v0, v4, v5

    .line 2110
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    .line 2121
    :cond_1
    :goto_3
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 2122
    float-to-int v0, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    .line 2123
    float-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->pageScrolled(I)Z

    goto :goto_0

    .line 2113
    :cond_2
    cmpl-float v0, v5, v1

    if-lez v0, :cond_4

    .line 2114
    if-eqz v3, :cond_3

    .line 2115
    sub-float v0, v5, v1

    .line 2116
    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_3
    move v4, v1

    .line 2118
    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    move v1, v6

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1463
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1464
    add-int v0, p1, p3

    .line 1465
    add-int v1, p2, p4

    .line 1466
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v3

    .line 1467
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1468
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1470
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    .line 1471
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1474
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForPosition(I)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v3

    .line 1475
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, v3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForPosition(I)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1481
    :goto_1
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1482
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1483
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->completeScroll(Z)V

    .line 1484
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1480
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 2

    .prologue
    .line 460
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 461
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 463
    iget-boolean v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->removeViewAt(I)V

    .line 465
    add-int/lit8 v1, v1, -0x1

    .line 460
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 468
    :cond_1
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForPosition(I)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_5

    .line 563
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v2

    .line 564
    int-to-float v2, v2

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstOffset:F

    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    .line 565
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 564
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 567
    :goto_0
    if-eqz p2, :cond_2

    .line 568
    invoke-virtual {p0, v0, v1, p3}, Lcom/viewpagerindicator/android/osp/ViewPager;->smoothScrollTo(III)V

    .line 569
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 572
    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 585
    :cond_1
    :goto_1
    return-void

    .line 576
    :cond_2
    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_3

    .line 577
    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 579
    :cond_3
    if-eqz p4, :cond_4

    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_4

    .line 580
    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 582
    :cond_4
    invoke-direct {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->completeScroll(Z)V

    .line 583
    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iput p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScrollState:I

    .line 404
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageTransformer:Lcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 406
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->enableLayers(Z)V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 406
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 2434
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2435
    iput-boolean p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScrollingCacheEnabled:Z

    .line 2446
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2612
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2614
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2616
    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    .line 2617
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2618
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2619
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2620
    invoke-virtual {p0, v3}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v4

    .line 2621
    if-eqz v4, :cond_0

    iget v4, v4, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2622
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2617
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2632
    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    .line 2635
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2638
    :cond_2
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2649
    :cond_3
    :goto_1
    return-void

    .line 2641
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2642
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2645
    :cond_5
    if-eqz p1, :cond_3

    .line 2646
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected addNewItem(II)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;
    .locals 2

    .prologue
    .line 843
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;-><init>()V

    .line 844
    iput p1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 845
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 846
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    .line 847
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :goto_0
    return-object v0

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2659
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2660
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2661
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2662
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v2

    .line 2663
    if-eqz v2, :cond_0

    iget v2, v2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2664
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2659
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2668
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1285
    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/android/osp/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1286
    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/android/osp/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1288
    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 1289
    iget-boolean v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    instance-of v3, p1, Lcom/viewpagerindicator/android/osp/ViewPager$Decor;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    .line 1290
    iget-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_1

    .line 1291
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    .line 1292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1295
    invoke-virtual {p0, p1, p2, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1307
    :goto_1
    return-void

    .line 1297
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 2521
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2522
    if-ne v0, p0, :cond_0

    .line 2523
    const/4 v0, 0x0

    .line 2526
    :cond_0
    const/4 v1, 0x0

    .line 2528
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2530
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 2531
    if-ne p1, v3, :cond_3

    .line 2534
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2535
    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2536
    if-eqz v0, :cond_2

    if-lt v1, v3, :cond_2

    .line 2537
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->pageLeft()Z

    move-result v0

    .line 2559
    :goto_0
    if-eqz v0, :cond_1

    .line 2560
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->playSoundEffect(I)V

    .line 2562
    :cond_1
    return v0

    .line 2539
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2541
    :cond_3
    if-ne p1, v4, :cond_9

    .line 2544
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2545
    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2546
    if-eqz v0, :cond_4

    if-gt v1, v3, :cond_4

    .line 2547
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_0

    .line 2549
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2552
    :cond_5
    if-eq p1, v3, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 2554
    :cond_6
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_0

    .line 2555
    :cond_7
    if-eq p1, v4, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 2557
    :cond_8
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2298
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 2314
    :goto_0
    return v4

    .line 2301
    :cond_0
    iput-boolean v8, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFakeDragging:Z

    .line 2302
    invoke-direct {p0, v8}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollState(I)V

    .line 2303
    iput v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    .line 2304
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 2305
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2309
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2310
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2311
    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2312
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 2313
    iput-wide v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFakeDragBeginTime:J

    move v4, v8

    .line 2314
    goto :goto_0

    .line 2307
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 2460
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2461
    check-cast v6, Landroid/view/ViewGroup;

    .line 2462
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2463
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2464
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2466
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2469
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2470
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    .line 2471
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    .line 2472
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    .line 2473
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2472
    invoke-virtual/range {v0 .. v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    :cond_0
    :goto_1
    return v2

    .line 2466
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2479
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2737
    instance-of v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

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

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1602
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v0

    .line 1603
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollY()I

    move-result v1

    .line 1604
    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1605
    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1607
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1608
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    .line 1609
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1611
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    .line 1616
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1622
    :goto_0
    return-void

    .line 1621
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 858
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 859
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 860
    :goto_0
    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 863
    :goto_1
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 864
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 865
    iget-object v7, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v8, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    .line 867
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 863
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 859
    goto :goto_0

    .line 871
    :cond_1
    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 872
    iget-object v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 873
    add-int/lit8 v3, v3, -0x1

    .line 875
    if-nez v4, :cond_2

    .line 876
    iget-object v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 880
    :cond_2
    iget-object v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget-object v8, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 883
    iget v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ne v6, v0, :cond_b

    .line 885
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    iget-object v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 886
    goto :goto_2

    .line 891
    :cond_3
    iget v8, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-eq v8, v7, :cond_a

    .line 892
    iget v6, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-ne v6, v8, :cond_4

    move v5, v7

    .line 897
    :cond_4
    iput v7, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 898
    goto :goto_2

    .line 902
    :cond_5
    if-eqz v4, :cond_6

    .line 903
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 906
    :cond_6
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v3, Lcom/viewpagerindicator/android/osp/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 908
    if-eqz v6, :cond_9

    .line 910
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 911
    :goto_3
    if-ge v3, v4, :cond_8

    .line 912
    invoke-virtual {p0, v3}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 914
    iget-boolean v6, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_7

    .line 915
    const/4 v6, 0x0

    iput v6, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->widthFactor:F

    .line 911
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 919
    :cond_8
    invoke-virtual {p0, v5, v2, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 920
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->requestLayout()V

    .line 922
    :cond_9
    return-void

    :cond_a
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_2

    :cond_b
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto/16 :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2485
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2710
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2711
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2712
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2713
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2714
    invoke-virtual {p0, v3}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v4

    .line 2715
    if-eqz v4, :cond_1

    iget v4, v4, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 2716
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2717
    const/4 v0, 0x1

    .line 2722
    :cond_0
    return v0

    .line 2711
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 779
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 780
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 781
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 2196
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2197
    const/4 v0, 0x0

    .line 2199
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 2200
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 2202
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2203
    :cond_0
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2205
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2206
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v3

    .line 2208
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2209
    neg-int v4, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2210
    iget-object v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2211
    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2212
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2214
    :cond_1
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2216
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v2

    .line 2217
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2219
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2220
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2221
    iget-object v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2222
    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2223
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2230
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2232
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2234
    :cond_3
    return-void

    .line 2226
    :cond_4
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2227
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 767
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 768
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 769
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 772
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 2324
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFakeDragging:Z

    if-nez v0, :cond_0

    .line 2325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2329
    const/16 v1, 0x3e8

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2330
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v4, v0

    .line 2332
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    .line 2333
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v0

    .line 2334
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v1

    .line 2335
    invoke-direct {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForCurrentScrollPosition()Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v3

    .line 2336
    iget v5, v3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 2337
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iget v1, v3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v0, v1

    iget v1, v3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v0, v1

    .line 2338
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 2339
    invoke-direct {p0, v5, v0, v4, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->determineTargetPage(IFII)I

    move-result v1

    move-object v0, p0

    move v3, v2

    move v5, v2

    .line 2341
    invoke-virtual/range {v0 .. v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZIZ)V

    .line 2342
    invoke-direct {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->endDrag()V

    .line 2344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFakeDragging:Z

    .line 2345
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2497
    const/4 v0, 0x0

    .line 2498
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2499
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2517
    :cond_0
    :goto_0
    return v0

    .line 2501
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2504
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2509
    :sswitch_2
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2510
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2511
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2512
    invoke-virtual {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2499
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2355
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFakeDragging:Z

    if-nez v0, :cond_0

    .line 2356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2359
    :cond_0
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 2361
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 2362
    sub-float v3, v0, p1

    .line 2363
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v5

    .line 2365
    int-to-float v0, v5

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstOffset:F

    mul-float v2, v0, v1

    .line 2366
    int-to-float v0, v5

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastOffset:F

    mul-float v4, v0, v1

    .line 2368
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2369
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2370
    iget v6, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_4

    .line 2371
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    int-to-float v2, v5

    mul-float/2addr v0, v2

    .line 2373
    :goto_0
    iget v2, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget-object v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_3

    .line 2374
    iget v1, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    int-to-float v2, v5

    mul-float/2addr v1, v2

    .line 2377
    :goto_1
    cmpg-float v2, v3, v0

    if-gez v2, :cond_1

    .line 2383
    :goto_2
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 2384
    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    .line 2385
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->pageScrolled(I)Z

    .line 2388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2389
    iget-wide v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFakeDragBeginTime:J

    const/4 v4, 0x2

    iget v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2391
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2392
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2393
    return-void

    .line 2379
    :cond_1
    cmpl-float v0, v3, v1

    if-lez v0, :cond_2

    move v0, v1

    .line 2380
    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2727
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2742
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 642
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->childIndex:I

    .line 644
    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    return v0
.end method

.method protected getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;
    .locals 2

    .prologue
    .line 1330
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1331
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1332
    :cond_0
    const/4 v0, 0x0

    .line 1336
    :goto_1
    return-object v0

    .line 1334
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1336
    :cond_2
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;
    .locals 4

    .prologue
    .line 1319
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 1321
    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1325
    :goto_1
    return-object v0

    .line 1319
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1325
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;
    .locals 3

    .prologue
    .line 1340
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 1342
    iget v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1346
    :goto_1
    return-object v0

    .line 1340
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1346
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setWillNotDraw(Z)V

    .line 360
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setDescendantFocusability(I)V

    .line 361
    invoke-virtual {p0, v4}, Lcom/viewpagerindicator/android/osp/ViewPager;->setFocusable(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/viewpagerindicator/android/osp/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 364
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 365
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 369
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    .line 374
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMinimumVelocity:I

    .line 375
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMaximumVelocity:I

    .line 376
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 377
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 379
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFlingDistance:I

    .line 380
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCloseEnough:I

    .line 381
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDefaultGutterSize:I

    .line 383
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/android/osp/ViewPager$MyAccessibilityDelegate;-><init>(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 385
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 390
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2405
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1351
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstLayout:Z

    .line 1353
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 395
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 396
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 2238
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2241
    move-object/from16 v0, p0

    iget v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_2

    .line 2242
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v6

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v7

    .line 2245
    move-object/from16 v0, p0

    iget v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2246
    const/4 v5, 0x0

    .line 2247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 2248
    iget v4, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    .line 2249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2250
    iget v3, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 2251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    iget v10, v2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    move v2, v5

    move v5, v3

    .line 2252
    :goto_0
    if-ge v5, v10, :cond_2

    .line 2253
    :goto_1
    iget v3, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    goto :goto_1

    .line 2258
    :cond_0
    iget v3, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ne v5, v3, :cond_3

    .line 2259
    iget v3, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    iget v4, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2260
    iget v4, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    iget v11, v1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2267
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2268
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2273
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_4

    .line 2278
    :cond_2
    return-void

    .line 2262
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2263
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 2264
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2252
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1781
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->onInterceptTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1785
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 1491
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInLayout:Z

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    .line 1493
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInLayout:Z

    .line 1495
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v9

    .line 1496
    sub-int v10, p4, p2

    .line 1497
    sub-int v11, p5, p3

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1499
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1500
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1501
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v12

    .line 1504
    const/4 v4, 0x0

    .line 1508
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1509
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1510
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_4

    .line 1511
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 1514
    iget-boolean v7, v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_4

    .line 1515
    iget v7, v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v7, 0x7

    .line 1516
    iget v1, v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v1, 0x70

    .line 1517
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1534
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1551
    :goto_2
    add-int/2addr v7, v12

    .line 1553
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    .line 1554
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    .line 1552
    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1555
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1508
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1523
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1524
    goto :goto_1

    .line 1526
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1528
    goto :goto_1

    .line 1530
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1531
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1540
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1541
    goto :goto_2

    .line 1543
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1545
    goto :goto_2

    .line 1547
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1548
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1561
    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_4
    if-ge v7, v9, :cond_3

    .line 1562
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1563
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v12, 0x8

    if-eq v1, v12, :cond_2

    .line 1564
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 1566
    iget-boolean v12, v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1567
    int-to-float v13, v10

    iget v12, v12, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 1568
    add-int/2addr v12, v6

    .line 1570
    iget-boolean v13, v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v13, :cond_1

    .line 1573
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1574
    sub-int v13, v10, v6

    sub-int/2addr v13, v5

    int-to-float v13, v13

    iget v1, v1, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v13

    float-to-int v1, v1

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1577
    sub-int v13, v11, v2

    sub-int/2addr v13, v3

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1580
    invoke-virtual {v8, v1, v13}, Landroid/view/View;->measure(II)V

    .line 1588
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v12

    .line 1589
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v2

    .line 1587
    invoke-virtual {v8, v12, v2, v1, v13}, Landroid/view/View;->layout(IIII)V

    .line 1561
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4

    .line 1593
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTopPageBounds:I

    .line 1594
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mBottomPageBounds:I

    .line 1595
    move-object/from16 v0, p0

    iput v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDecorChildCount:I

    .line 1596
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstLayout:Z

    .line 1597
    return-void

    :cond_4
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1534
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1362
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    .line 1363
    invoke-static {v1, p2}, Lcom/viewpagerindicator/android/osp/ViewPager;->getDefaultSize(II)I

    move-result v1

    .line 1362
    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->setMeasuredDimension(II)V

    .line 1365
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1366
    div-int/lit8 v1, v0, 0xa

    .line 1367
    iget v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDefaultGutterSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mGutterSize:I

    .line 1370
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1371
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1378
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v9

    .line 1379
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1380
    invoke-virtual {p0, v8}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1381
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1382
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 1383
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_3

    .line 1384
    iget v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v6, v1, 0x7

    .line 1385
    iget v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v4, v1, 0x70

    .line 1386
    const/high16 v2, -0x80000000

    .line 1387
    const/high16 v1, -0x80000000

    .line 1388
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1389
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1391
    :goto_2
    if-eqz v7, :cond_6

    .line 1392
    const/high16 v2, 0x40000000    # 2.0f

    .line 1399
    :cond_2
    :goto_3
    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    .line 1400
    const/high16 v4, 0x40000000    # 2.0f

    .line 1401
    iget v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    .line 1402
    iget v2, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->width:I

    .line 1405
    :goto_4
    iget v11, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    .line 1406
    const/high16 v1, 0x40000000    # 2.0f

    .line 1407
    iget v11, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 1408
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->height:I

    .line 1411
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1412
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1413
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1415
    if-eqz v7, :cond_7

    .line 1416
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1379
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1388
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1389
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1393
    :cond_6
    if-eqz v6, :cond_2

    .line 1394
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3

    .line 1417
    :cond_7
    if-eqz v6, :cond_3

    .line 1418
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1424
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mChildWidthMeasureSpec:I

    .line 1425
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mChildHeightMeasureSpec:I

    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInLayout:Z

    .line 1429
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    .line 1430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInLayout:Z

    .line 1433
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v2

    .line 1434
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    .line 1435
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1436
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 1442
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 1443
    if-eqz v0, :cond_9

    iget-boolean v5, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_a

    .line 1444
    :cond_9
    int-to-float v5, v3

    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1446
    iget v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1434
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1450
    :cond_b
    return-void

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onPageScrolled(IFI)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1666
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDecorChildCount:I

    if-lez v0, :cond_2

    .line 1667
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v5

    .line 1668
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1669
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1670
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v6

    .line 1671
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1672
    :goto_0
    if-ge v4, v7, :cond_2

    .line 1673
    invoke-virtual {p0, v4}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1674
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 1675
    iget-boolean v9, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1672
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    .line 1679
    :cond_1
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x7

    .line 1681
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1698
    :goto_2
    add-int/2addr v0, v5

    .line 1700
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1701
    if-eqz v0, :cond_0

    .line 1702
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1687
    :pswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1688
    goto :goto_2

    .line 1690
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1692
    goto :goto_2

    .line 1694
    :pswitch_3
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1695
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    .line 1707
    :cond_2
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1708
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1710
    :cond_3
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_4

    .line 1711
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1714
    :cond_4
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageTransformer:Lcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;

    if-eqz v0, :cond_6

    .line 1715
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v2

    .line 1716
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    .line 1717
    :goto_3
    if-ge v1, v4, :cond_6

    .line 1718
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1719
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 1721
    iget-boolean v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_5

    .line 1717
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1725
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 1726
    iget-object v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageTransformer:Lcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;

    invoke-interface {v5, v3, v0}, Lcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1730
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCalledSuper:Z

    .line 1731
    return-void

    .line 1681
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2679
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v0

    .line 2680
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    .line 2689
    :goto_0
    if-eq v3, v0, :cond_2

    .line 2690
    invoke-virtual {p0, v3}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2691
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2692
    invoke-virtual {p0, v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v6

    .line 2693
    if-eqz v6, :cond_1

    iget v6, v6, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2694
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2700
    :goto_1
    return v2

    .line 2685
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2687
    goto :goto_0

    .line 2689
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2700
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 1265
    instance-of v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1266
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1281
    :goto_0
    return-void

    .line 1270
    :cond_0
    check-cast p1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;

    .line 1271
    invoke-virtual {p1}, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1273
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1275
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1277
    :cond_1
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->position:I

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredCurItem:I

    .line 1278
    iget-object v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1279
    iget-object v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1254
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1255
    new-instance v1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1256
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    iput v0, v1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->position:I

    .line 1257
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1260
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1454
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1457
    if-eq p1, p3, :cond_0

    .line 1458
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1460
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1953
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_1

    .line 2073
    :cond_0
    :goto_0
    return v2

    .line 1960
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    .line 1963
    goto :goto_0

    .line 1966
    :cond_2
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v2, v1

    .line 1968
    goto :goto_0

    .line 1971
    :cond_4
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    .line 1972
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1974
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1979
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2070
    :cond_6
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_0

    .line 2071
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 1981
    :pswitch_1
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1982
    iput-boolean v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    .line 1983
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    .line 1984
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    .line 1985
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollState(I)V

    .line 1988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 1989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionY:F

    .line 1990
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1994
    :pswitch_2
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_7

    .line 1995
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1996
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1997
    iget v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1998
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1999
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2003
    iget v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_7

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    .line 2007
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    .line 2008
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 2010
    iput v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionY:F

    .line 2011
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollState(I)V

    .line 2012
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2016
    :cond_7
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 2018
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2020
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2021
    invoke-direct {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->performDrag(F)Z

    move-result v0

    or-int/2addr v1, v0

    .line 2022
    goto/16 :goto_1

    .line 2008
    :cond_8
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    .line 2025
    :pswitch_3
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 2026
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2027
    const/16 v1, 0x3e8

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2028
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v4, v0

    .line 2030
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    .line 2031
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v0

    .line 2032
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v1

    .line 2033
    invoke-direct {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForCurrentScrollPosition()Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v3

    .line 2034
    iget v5, v3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 2035
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iget v1, v3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v0, v1

    iget v1, v3, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v0, v1

    .line 2036
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 2037
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2038
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 2039
    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInitialMotionX:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 2040
    invoke-direct {p0, v5, v0, v4, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->determineTargetPage(IFII)I

    move-result v1

    move-object v0, p0

    move v3, v2

    move v5, v2

    .line 2042
    invoke-virtual/range {v0 .. v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZIZ)V

    .line 2044
    iput v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 2045
    invoke-direct {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->endDrag()V

    .line 2046
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v1, v0

    .line 2047
    goto/16 :goto_1

    .line 2050
    :pswitch_4
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 2051
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollToItem(IZIZ)V

    .line 2052
    iput v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 2053
    invoke-direct {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->endDrag()V

    .line 2054
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v1, v0

    goto/16 :goto_1

    .line 2058
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2059
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 2060
    iput v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    .line 2061
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2065
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2066
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mActivePointerId:I

    .line 2067
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2066
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1979
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2592
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2593
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(IZ)V

    .line 2596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2600
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2601
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(IZ)V

    .line 2604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate(I)V

    .line 926
    return-void
.end method

.method populate(I)V
    .locals 14

    .prologue
    .line 929
    const/4 v0, 0x0

    .line 930
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-eq v1, p1, :cond_24

    .line 931
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForPosition(I)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    .line 932
    iput p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    move-object v1, v0

    .line 935
    :goto_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    return-void

    .line 943
    :cond_1
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    if-nez v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 959
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOffscreenPageLimit:I

    .line 960
    const/4 v2, 0x0

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 961
    iget-object v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    .line 962
    add-int/lit8 v2, v8, -0x1

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 966
    const/4 v3, 0x0

    .line 967
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_23

    .line 968
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 969
    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-lt v4, v5, :cond_8

    .line 970
    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_23

    .line 977
    :goto_2
    if-nez v0, :cond_22

    if-lez v8, :cond_22

    .line 978
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->addNewItem(II)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    move-object v6, v0

    .line 984
    :goto_3
    if-eqz v6, :cond_4

    .line 985
    const/4 v5, 0x0

    .line 986
    add-int/lit8 v4, v2, -0x1

    .line 987
    if-ltz v4, :cond_9

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 988
    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    iget v10, v6, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    sub-float v10, v3, v10

    .line 989
    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move v3, v5

    move v5, v12

    move v13, v4

    move v4, v2

    move v2, v13

    :goto_5
    if-ltz v5, :cond_2

    .line 990
    cmpl-float v11, v3, v10

    if-ltz v11, :cond_d

    if-ge v5, v7, :cond_d

    .line 991
    if-nez v0, :cond_a

    .line 1017
    :cond_2
    iget v3, v6, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    .line 1018
    add-int/lit8 v5, v4, 0x1

    .line 1019
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    .line 1020
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_11

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 1021
    :goto_6
    iget v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move v3, v5

    move v5, v12

    :goto_7
    if-ge v5, v8, :cond_3

    .line 1022
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_15

    if-le v5, v9, :cond_15

    .line 1023
    if-nez v0, :cond_12

    .line 1050
    :cond_3
    invoke-direct {p0, v6, v4, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->calculatePageOffsets(Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;ILcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;)V

    .line 1060
    :cond_4
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-eqz v6, :cond_1a

    iget-object v0, v6, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_8
    invoke-virtual {v1, p0, v2, v0}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1062
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1066
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    move v2, v0

    .line 1067
    :goto_9
    if-eqz v2, :cond_5

    .line 1068
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1074
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v3

    .line 1075
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1d

    .line 1076
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1077
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;

    .line 1078
    iput v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->childIndex:I

    .line 1079
    iget-boolean v5, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_6

    iget v5, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->widthFactor:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    .line 1081
    invoke-virtual {p0, v4}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v5

    .line 1082
    if-eqz v5, :cond_6

    .line 1083
    iget v6, v5, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    iput v6, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->widthFactor:F

    .line 1084
    iget v5, v5, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iput v5, v0, Lcom/viewpagerindicator/android/osp/ViewPager$LayoutParams;->position:I

    .line 1087
    :cond_6
    if-eqz v2, :cond_7

    .line 1088
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 967
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 987
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 994
    :cond_a
    iget v11, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ne v5, v11, :cond_b

    iget-boolean v11, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->scrolling:Z

    if-nez v11, :cond_b

    .line 995
    iget-object v11, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 996
    iget-object v11, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, p0, v5, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1001
    add-int/lit8 v2, v2, -0x1

    .line 1002
    add-int/lit8 v4, v4, -0x1

    .line 1003
    if-ltz v2, :cond_c

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 989
    :cond_b
    :goto_c
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_5

    .line 1003
    :cond_c
    const/4 v0, 0x0

    goto :goto_c

    .line 1005
    :cond_d
    if-eqz v0, :cond_f

    iget v11, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ne v5, v11, :cond_f

    .line 1006
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v0

    .line 1007
    add-int/lit8 v2, v2, -0x1

    .line 1008
    if-ltz v2, :cond_e

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 1010
    :cond_f
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v5, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->addNewItem(II)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    .line 1011
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v0

    .line 1012
    add-int/lit8 v4, v4, 0x1

    .line 1013
    if-ltz v2, :cond_10

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    .line 1020
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1026
    :cond_12
    iget v7, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ne v5, v7, :cond_13

    iget-boolean v7, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->scrolling:Z

    if-nez v7, :cond_13

    .line 1027
    iget-object v7, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1028
    iget-object v7, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v5, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 1021
    :cond_13
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 1033
    :cond_14
    const/4 v0, 0x0

    goto :goto_d

    .line 1035
    :cond_15
    if-eqz v0, :cond_17

    iget v7, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    if-ne v5, v7, :cond_17

    .line 1036
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v0

    .line 1037
    add-int/lit8 v3, v3, 0x1

    .line 1038
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_16

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    goto :goto_d

    .line 1040
    :cond_17
    invoke-virtual {p0, v5, v3}, Lcom/viewpagerindicator/android/osp/ViewPager;->addNewItem(II)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    .line 1041
    add-int/lit8 v3, v3, 0x1

    .line 1042
    if-eqz v0, :cond_18

    .line 1043
    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v2

    move v2, v0

    .line 1045
    :cond_18
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_19

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    goto :goto_d

    .line 1060
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 1066
    :cond_1b
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_9

    .line 1071
    :cond_1c
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_a

    .line 1091
    :cond_1d
    if-eqz v2, :cond_1e

    .line 1092
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/viewpagerindicator/android/osp/ViewPager;->sPositionComparator:Lcom/viewpagerindicator/android/osp/ViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1095
    :cond_1e
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_21

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    .line 1098
    :goto_e
    if-eqz v0, :cond_1f

    iget v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-eq v0, v1, :cond_0

    .line 1099
    :cond_1f
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1100
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1101
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->infoForChild(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v2

    .line 1102
    if-eqz v2, :cond_20

    iget v2, v2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_20

    .line 1103
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1099
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1097
    :cond_21
    const/4 v0, 0x0

    goto :goto_e

    :cond_22
    move-object v6, v0

    goto/16 :goto_3

    :cond_23
    move-object v0, v3

    goto/16 :goto_2

    :cond_24
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1312
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1316
    :goto_0
    return-void

    .line 1314
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mObserver:Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 421
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    .line 424
    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget-object v0, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 422
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 427
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    invoke-direct {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->removeNonDecorViews()V

    .line 429
    iput v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    .line 430
    invoke-virtual {p0, v2, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollTo(II)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 434
    iput-object p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 436
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mObserver:Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;

    if-nez v1, :cond_2

    .line 438
    new-instance v1, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;

    invoke-direct {v1, p0, v5}, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;-><init>(Lcom/viewpagerindicator/android/osp/ViewPager;Lcom/viewpagerindicator/android/osp/ViewPager$1;)V

    iput-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mObserver:Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mObserver:Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 441
    iput-boolean v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    .line 442
    iput-boolean v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstLayout:Z

    .line 443
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredCurItem:I

    if-ltz v1, :cond_5

    .line 444
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 445
    iget v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v1, v2, v6}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 446
    const/4 v1, -0x1

    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredCurItem:I

    .line 447
    iput-object v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 448
    iput-object v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 454
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapterChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_4

    if-eq v0, p1, :cond_4

    .line 455
    iget-object v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapterChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 457
    :cond_4
    return-void

    .line 450
    :cond_5
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 5

    .prologue
    .line 625
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 627
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :goto_1
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    const-string/jumbo v1, "ViewPager"

    const-string/jumbo v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 635
    :catch_1
    move-exception v0

    .line 636
    const-string/jumbo v1, "ViewPager"

    const-string/jumbo v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 491
    iput-boolean v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    .line 492
    iget-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 493
    return-void

    :cond_0
    move v0, v1

    .line 492
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(IZZ)V

    .line 503
    return-void
.end method

.method public setCurrentItem(IZZ)V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPopulatePending:Z

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZZ)V

    .line 515
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZZ)V

    .line 523
    return-void
.end method

.method setCurrentItemInternal(IZZIZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 531
    :cond_0
    invoke-direct {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 556
    :goto_0
    return-void

    .line 534
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    invoke-direct {p0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 539
    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    .line 544
    :cond_3
    :goto_1
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOffscreenPageLimit:I

    .line 545
    iget v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    .line 549
    :goto_2
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 550
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    iput-boolean v3, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->scrolling:Z

    .line 549
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 541
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 553
    :cond_6
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_7

    if-eqz p5, :cond_7

    move v1, v3

    .line 554
    :cond_7
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate(I)V

    .line 555
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setCurrentItemInternal(IZZZ)V
    .locals 6

    .prologue
    .line 526
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItemInternal(IZZIZ)V

    .line 527
    return-void
.end method

.method setInternalPageChangeListener(Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;)Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    .line 655
    iput-object p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mInternalPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    .line 656
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 688
    if-ge p1, v0, :cond_0

    .line 689
    const-string/jumbo v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 693
    :cond_0
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 694
    iput p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOffscreenPageLimit:I

    .line 695
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    .line 697
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/viewpagerindicator/android/osp/ViewPager$OnAdapterChangeListener;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapterChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnAdapterChangeListener;

    .line 481
    return-void
.end method

.method public setOnPageChangeListener(Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mOnPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    .line 595
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .prologue
    .line 708
    iget v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    .line 709
    iput p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    .line 711
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v1

    .line 712
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->recomputeScrollPosition(IIII)V

    .line 714
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->requestLayout()V

    .line 715
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 732
    iput-object p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 733
    if-eqz p1, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->refreshDrawableState()V

    .line 736
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setWillNotDraw(Z)V

    .line 737
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->invalidate()V

    .line 738
    return-void

    .line 736
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 610
    if-eqz p2, :cond_2

    move v0, v1

    .line 611
    :goto_0
    iget-object v3, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageTransformer:Lcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_4

    move v3, v1

    .line 612
    :goto_2
    iput-object p2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageTransformer:Lcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;

    .line 613
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 614
    if-eqz v0, :cond_5

    .line 615
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    iput v1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrder:I

    .line 619
    :goto_3
    if-eqz v3, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    .line 622
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 610
    goto :goto_0

    :cond_3
    move v3, v2

    .line 611
    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    .line 617
    :cond_5
    iput v2, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method public setTouchSlop(I)V
    .locals 0

    .prologue
    .line 754
    iput p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mTouchSlop:I

    .line 758
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->smoothScrollTo(III)V

    .line 792
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 802
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 804
    invoke-direct {p0, v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 840
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollX()I

    move-result v1

    .line 808
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getScrollY()I

    move-result v2

    .line 809
    sub-int v3, p1, v1

    .line 810
    sub-int v4, p2, v2

    .line 811
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 812
    invoke-direct {p0, v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->completeScroll(Z)V

    .line 813
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->populate()V

    .line 814
    invoke-direct {p0, v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 818
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 819
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setScrollState(I)V

    .line 821
    invoke-virtual {p0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getWidth()I

    move-result v0

    .line 822
    div-int/lit8 v5, v0, 0x2

    .line 823
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 824
    int-to-float v7, v5

    int-to-float v5, v5

    .line 825
    invoke-virtual {p0, v6}, Lcom/viewpagerindicator/android/osp/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 828
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 829
    if-lez v6, :cond_2

    .line 830
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 836
    :goto_1
    const/16 v5, 0x190

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 838
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 839
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 832
    :cond_2
    int-to-float v0, v0

    iget-object v5, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mCurItem:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 833
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mPageMargin:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 834
    add-float/2addr v0, v8

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 762
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
