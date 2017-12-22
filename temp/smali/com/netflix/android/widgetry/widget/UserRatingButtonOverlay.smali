.class public Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;
.super Landroid/view/ViewGroup;
.source "UserRatingButtonOverlay.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final CUBIC_BEZIER:Landroid/view/animation/Interpolator;

.field private static final DEBUG_MULTIPLIER:I = 0x1

.field private static final LONG_DURATION_MS:J = 0x12cL

.field private static final MID_DURATION_MS:J = 0xfaL

.field private static final NOT_SELECTED_ELEVATION:I = 0x0

.field private static final SCALE_CLOSED:F = 0.68f

.field private static final SELECTED_ELEVATION:I = 0x1

.field private static final SHORT_DURATION_MS:J = 0x96L

.field private static final STATE_CLOSED:F = 0.0f

.field private static final STATE_OPEN:F = 1.0f

.field private static final TINY_DURATION_MS:J = 0x32L


# instance fields
.field private final mClose:Landroid/widget/ImageView;

.field private final mCloseBounds:Landroid/graphics/Rect;

.field private final mCloseDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

.field private final mDark:Z

.field private mDimBackground:Landroid/graphics/drawable/Drawable;

.field private final mDragOverBoundHelper:Landroid/graphics/Rect;

.field private final mDragOverLocationHelper:[I

.field private mDragOverView:Landroid/widget/ImageView;

.field private final mInvertLayoutForRtl:Z

.field private final mLeftDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

.field private final mLocationHelper:[I

.field private final mLocationHelperParent:[I

.field private mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

.field private mParent:Landroid/support/design/widget/CoordinatorLayout;

.field private final mRightDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

.field private mShouldLayout:Z

.field private mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

.field private final mTargetBounds:Landroid/graphics/Rect;

.field private final mThumbLeft:Landroid/widget/ImageView;

.field private final mThumbLeftBounds:Landroid/graphics/Rect;

.field private final mThumbRight:Landroid/widget/ImageView;

.field private final mThumbRightBounds:Landroid/graphics/Rect;

.field private final mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

.field private final mTranslateLeft:Landroid/graphics/Point;

.field private final mTranslateRight:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 54
    const v0, 0x3e6b851f    # 0.23f

    const v1, 0x3ea3d70a    # 0.32f

    invoke-static {v0, v2, v1, v2}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->CUBIC_BEZIER:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;ZZI)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 93
    iput-boolean v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mShouldLayout:Z

    .line 95
    iput-object v5, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverView:Landroid/widget/ImageView;

    .line 103
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    .line 104
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelperParent:[I

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTargetBounds:Landroid/graphics/Rect;

    .line 106
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseBounds:Landroid/graphics/Rect;

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeftBounds:Landroid/graphics/Rect;

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRightBounds:Landroid/graphics/Rect;

    .line 109
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    .line 110
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    .line 115
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverLocationHelper:[I

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$layout;->user_rating_overlay:I

    invoke-static {v1, v2, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 123
    if-eqz p4, :cond_0

    if-ne p5, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mInvertLayoutForRtl:Z

    .line 125
    iput-boolean p3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDark:Z

    .line 126
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDark:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_dim:I

    :goto_1
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDimBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDimBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    sget v0, Lcom/netflix/android/widgetry/R$id;->user_rating_overlay_up:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeft:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/netflix/android/widgetry/R$id;->user_rating_overlay_down:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    .line 131
    sget v0, Lcom/netflix/android/widgetry/R$id;->user_rating_overlay_close:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mClose:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$1;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$1;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getLeftValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->buildPastilleDrawable(I)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLeftDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    .line 140
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getRightValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->buildPastilleDrawable(I)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mRightDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    .line 142
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    sget v2, Lcom/netflix/android/widgetry/R$drawable;->ic_close_black_24dp:I

    sget v3, Lcom/netflix/android/widgetry/R$drawable;->ic_close_black_24dp:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;IIZLcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$1;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    .line 144
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLeftDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mRightDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mClose:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    .line 150
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    .line 179
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-direct {v0, p0, v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$1;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 185
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1400(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$3;

    invoke-direct {v1, p0, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$3;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$dimen;->thumbs_motion_translation_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 193
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$dimen;->thumbs_motion_translation_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 195
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$dimen;->thumbs_motion_translation_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 196
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$dimen;->thumbs_motion_translation_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 198
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$dimen;->thumbs_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 199
    return-void

    :cond_0
    move v0, v4

    .line 123
    goto/16 :goto_0

    .line 126
    :cond_1
    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_dim:I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->dismiss()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getLeftValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLeftDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;Landroid/support/design/widget/CoordinatorLayout;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDimBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2700()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->CUBIC_BEZIER:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDark:Z

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;Lcom/netflix/android/widgetry/widget/UserRatingButton;)Lcom/netflix/android/widgetry/widget/UserRatingButton;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mClose:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getRightValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mRightDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    return-object v0
.end method

.method private adjustButtonsGravity()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 325
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 326
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 327
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 328
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 329
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getLocationInWindow([I)V

    .line 332
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelperParent:[I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getLocationInWindow([I)V

    .line 333
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v1, v0, v4

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelperParent:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 334
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v1, v0, v5

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelperParent:[I

    aget v2, v2, v5

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 336
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$dimen;->thumbs_overlay_button_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 337
    div-int/lit8 v1, v0, 0x2

    .line 338
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 339
    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 340
    if-gez v2, :cond_1

    .line 342
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 343
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 344
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getLeftValue()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 346
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->swapY(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getMeasuredWidth()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 350
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 351
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 352
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getRightValue()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 354
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->swapY(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v0, v0, v5

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 358
    if-gez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 361
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private buildPastilleDrawable(I)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 213
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    sget v2, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_up_outline:I

    sget v3, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_up:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;IIZLcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    sget v2, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_down_outline:I

    sget v3, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_down:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;IIZLcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$1;)V

    goto :goto_0
.end method

.method private dismiss()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->close(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;)V

    .line 393
    :cond_0
    return-void
.end method

.method private getLeftValue()I
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mInvertLayoutForRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getRightValue()I
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mInvertLayoutForRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hit(Landroid/widget/ImageView;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 430
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverLocationHelper:[I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 431
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverLocationHelper:[I

    aget v3, v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 432
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverLocationHelper:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 433
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 434
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 436
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverBoundHelper:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 438
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 440
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    .line 441
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverView:Landroid/widget/ImageView;

    .line 446
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static interpolate(FFF)I
    .locals 1

    .prologue
    .line 293
    mul-float v0, p2, p1

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static swapY(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 369
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    xor-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 370
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 371
    return-void
.end method

.method private static updateBounds(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 283
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 284
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 285
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 286
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDragTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->hit(Landroid/widget/ImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->hit(Landroid/widget/ImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iput-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverView:Landroid/widget/ImageView;

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 415
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 416
    iput-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mDragOverView:Landroid/widget/ImageView;

    goto :goto_0

    .line 419
    :cond_3
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->dismiss()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 228
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mShouldLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 232
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelperParent:[I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getLocationInWindow([I)V

    .line 236
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v1, v0, v7

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelperParent:[I

    aget v2, v2, v7

    sub-int/2addr v1, v2

    aput v1, v0, v7

    .line 237
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v1, v0, v3

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelperParent:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 240
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTargetBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v1, v1, v7

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 241
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTargetBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v1, v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 242
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTargetBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-virtual {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 243
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTargetBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLocationHelper:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-virtual {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 245
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 249
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTargetBounds:Landroid/graphics/Rect;

    invoke-static {v2, v0, v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->updateBounds(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 250
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeftBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTargetBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->updateBounds(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 251
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRightBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTargetBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->updateBounds(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 255
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mClose:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mCloseBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 261
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeftBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 262
    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->interpolate(FFF)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeftBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 263
    invoke-static {v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v3

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->interpolate(FFF)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeftBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 264
    invoke-static {v4}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v4

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->interpolate(FFF)I

    move-result v3

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeftBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 265
    invoke-static {v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v5

    iget-object v6, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->interpolate(FFF)I

    move-result v4

    .line 261
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 267
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRightBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 268
    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->interpolate(FFF)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRightBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 269
    invoke-static {v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v3

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->interpolate(FFF)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRightBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 270
    invoke-static {v4}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v4

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->interpolate(FFF)I

    move-result v3

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRightBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    .line 271
    invoke-static {v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v5

    iget-object v6, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTranslateRight:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->interpolate(FFF)I

    move-result v4

    .line 267
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 274
    iput-boolean v7, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mShouldLayout:Z

    .line 276
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->measureChild(Landroid/view/View;II)V

    .line 221
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->measureChild(Landroid/view/View;II)V

    .line 222
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mClose:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->measureChild(Landroid/view/View;II)V

    .line 223
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 224
    return-void
.end method

.method show(Landroid/support/design/widget/CoordinatorLayout;Lcom/netflix/android/widgetry/widget/UserRatingButton;I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 297
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    if-nez v2, :cond_0

    .line 298
    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    .line 300
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mTarget:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-virtual {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getIconView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    .line 302
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    new-instance v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iput-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mShouldLayout:Z

    .line 305
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLeftDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    iget-boolean v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mInvertLayoutForRtl:Z

    invoke-virtual {v2, v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setApplyAlphaAlsoToIcon(Z)V

    .line 306
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mRightDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    iget-boolean v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mInvertLayoutForRtl:Z

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setApplyAlphaAlsoToIcon(Z)V

    .line 307
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mLeftDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setSelected(Z)V

    .line 308
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mRightDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setSelected(Z)V

    .line 310
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbLeft:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 311
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbRight:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 313
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->adjustButtonsGravity()V

    .line 315
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->mThumbsAnimations:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0, p3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1600(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;I)V

    .line 317
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 306
    goto :goto_0
.end method
