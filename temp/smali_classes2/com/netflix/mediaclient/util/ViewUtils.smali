.class public Lcom/netflix/mediaclient/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final ALPHA_OPAQUE:F = 1.0f

.field public static final ALPHA_TRANSPARENT:F = 0.0f

.field public static final ALPHA_VALUE_ON_CLICK:F = 0.7f

.field public static final ALPHA_VALUE_UNSELECTED_TEXT:F = 0.7f

.field public static final REVERSE_SORT_BY_BOTTOM:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ViewUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 629
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$4;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$4;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils;->REVERSE_SORT_BY_BOTTOM:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static activityIsDead(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addActionBarPaddingView(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 690
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 693
    :cond_0
    return-void
.end method

.method public static addWebLinks(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 896
    if-nez p0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Text view is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/InternalLinkify;->addWebLinks(Landroid/widget/TextView;)Z

    .line 901
    return-void
.end method

.method public static applyPaddingToGridItem(Landroid/view/View;III)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 220
    if-nez p0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 224
    :cond_0
    rem-int v0, p3, p2

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0, v1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 232
    :goto_1
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 233
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 226
    :cond_1
    add-int/lit8 v0, p3, 0x1

    rem-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p0, p1, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method public static applyUniformPaddingToGridItem(Landroid/view/View;III)V
    .locals 4

    .prologue
    .line 241
    if-nez p0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    rem-int v0, p3, p2

    if-nez v0, :cond_1

    .line 246
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 247
    :cond_1
    add-int/lit8 v0, p3, 0x1

    rem-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 248
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 250
    :cond_2
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p1, 0x2

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 700
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 701
    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 702
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    return-object v0
.end method

.method public static createLayoutParams(Landroid/view/View;II)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 677
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 678
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 686
    :goto_0
    return-object v0

    .line 680
    :cond_0
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 681
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 683
    :cond_1
    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 684
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 686
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public static createShowToastMenuClickListener(Landroid/app/Activity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils$2;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createShowToastViewClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils$1;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createSquaredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 356
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 358
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 359
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 360
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 362
    return-object v1
.end method

.method public static getDefaultActionBarHeight(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 719
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010087

    aput v1, v0, v2

    .line 720
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 722
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 723
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 724
    return v1
.end method

.method public static getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 374
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 376
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 377
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 378
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getEstimatedTextSize(FLandroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 401
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 402
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 405
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 406
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 408
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 414
    new-instance v2, Landroid/graphics/Point;

    float-to-int v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getEstimatedTextWidth(FLandroid/graphics/Typeface;Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 437
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 439
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 440
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 441
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 445
    return v0
.end method

.method public static getHeightIfVisible(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 304
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHitRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 459
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 460
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 461
    return-void
.end method

.method public static getLocationOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;Z)I
    .locals 4

    .prologue
    .line 850
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "navigation_bar_height"

    :goto_0
    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 853
    if-lez v0, :cond_1

    .line 854
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 858
    :goto_1
    return v0

    .line 850
    :cond_0
    const-string/jumbo v0, "navigation_bar_height_landscape"

    goto :goto_0

    .line 857
    :cond_1
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Nav bar height uknown!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getNetflixActivitySafely(Landroid/view/View;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 316
    if-nez p0, :cond_0

    move-object v0, v1

    .line 332
    :goto_0
    return-object v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 321
    instance-of v2, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v2, :cond_1

    .line 322
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    goto :goto_0

    .line 325
    :cond_1
    instance-of v2, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_2

    .line 326
    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 327
    instance-of v2, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v2, :cond_2

    .line 328
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 332
    goto :goto_0
.end method

.method public static getRect(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 472
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "getRect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 477
    instance-of v1, v0, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 478
    const-string/jumbo v1, "ViewUtils"

    const-string/jumbo v2, "Rectangle was known from before, use it"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    check-cast v0, Landroid/graphics/Rect;

    .line 493
    :goto_0
    return-object v0

    .line 481
    :cond_0
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Rectangle was NOT known from before, calculate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 485
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getHitRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 486
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 489
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 490
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getHitRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 868
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 869
    if-lez v0, :cond_0

    .line 870
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 874
    :goto_0
    return v0

    .line 873
    :cond_0
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Status bar height uknown!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs getViewsById(Landroid/view/View;[Ljava/lang/Integer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 650
    if-nez v3, :cond_1

    .line 649
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 655
    if-eqz v3, :cond_0

    .line 656
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 659
    :cond_2
    return-object v1
.end method

.method public static getVisibilityAsString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    sparse-switch p0, :sswitch_data_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 282
    :sswitch_0
    const-string/jumbo v0, "GONE"

    goto :goto_0

    .line 283
    :sswitch_1
    const-string/jumbo v0, "INVISIBLE"

    goto :goto_0

    .line 284
    :sswitch_2
    const-string/jumbo v0, "VISIBLE"

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getVisibilityAsString(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    if-nez p0, :cond_0

    const-string/jumbo v0, "null view"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisibilityAsString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVisiblePositions(Lcom/netflix/mediaclient/android/widget/StaticGridView;Landroid/widget/ScrollView;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/StaticGridView;",
            "Landroid/widget/ScrollView;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 770
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 801
    :goto_0
    return-object v0

    .line 774
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v2

    .line 775
    goto :goto_0

    .line 778
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 779
    invoke-virtual {p1, v4}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 781
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildCount()I

    move-result v5

    .line 783
    const/4 v1, 0x0

    move v0, v3

    .line 785
    :goto_1
    if-ge v1, v5, :cond_6

    .line 786
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 787
    invoke-virtual {v6, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    .line 789
    if-eqz v6, :cond_5

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 785
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 791
    :cond_5
    if-nez v6, :cond_4

    if-eq v0, v3, :cond_4

    .line 796
    :cond_6
    add-int/lit8 v4, v1, -0x1

    .line 797
    if-eq v0, v3, :cond_7

    if-eq v4, v3, :cond_7

    .line 798
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_7
    move-object v0, v2

    .line 801
    goto :goto_0
.end method

.method public static isNavigationBarBelowContent(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 831
    if-nez p0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 835
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 836
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 839
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNavigationBarRightOfContent(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 812
    if-nez p0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 816
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 817
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 820
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisible(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 929
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logSafeShowDialogFragmentError(Ljava/lang/String;Landroid/app/DialogFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string/jumbo v0, "SPY-8702, tried to add %s frag %s twice"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "ViewUtils"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public static modifyExitingWebLinks(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 916
    if-nez p0, :cond_0

    .line 917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Text view is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 921
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 922
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->modifyUrlHandling(Landroid/text/Spannable;)Z

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_1
    const-string/jumbo v0, "ViewUtils"

    const-string/jumbo v1, "Not spannable!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/api/Api16Util;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public static resetImageDrawable(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 978
    if-nez p0, :cond_0

    .line 985
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    return-void
.end method

.method public static safeShowDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 83
    invoke-virtual {p0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0, p2, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {p3, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->logSafeShowDialogFragmentError(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 93
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public static setDrawableTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 970
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 971
    return-void
.end method

.method public static setLayerType(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 951
    if-nez p0, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static setLongTapListenersRecursivelyToShowContentDescriptionToast(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 504
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    new-instance v1, Lcom/netflix/mediaclient/util/ViewUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils$3;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 514
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 515
    check-cast p0, Landroid/view/ViewGroup;

    .line 516
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 517
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setLongTapListenersRecursivelyToShowContentDescriptionToast(Landroid/view/View;)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_1
    return-void
.end method

.method public static varargs setOnTouchListeners(Landroid/view/View$OnTouchListener;[Landroid/view/View;)V
    .locals 3

    .prologue
    .line 997
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 998
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 760
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 761
    return-void
.end method

.method public static setPaddingEnd(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 752
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static setPaddingStart(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 740
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static setPaddingTop(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 748
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 749
    return-void
.end method

.method public static setTextOpacityToSelected(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 878
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 879
    return-void
.end method

.method public static setTextOpacityToUnselected(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 882
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 883
    return-void
.end method

.method public static setTextViewColor(Landroid/widget/TextView;I)V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    return-void
.end method

.method public static setTextViewSizeByRes(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 737
    return-void
.end method

.method public static setTextViewToBold(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 728
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 729
    return-void
.end method

.method public static setTextViewToNormal(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 732
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 733
    return-void
.end method

.method public static setVisibility(Landroid/view/MenuItem;Z)V
    .locals 0

    .prologue
    .line 210
    if-eqz p0, :cond_0

    .line 211
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    :cond_0
    return-void
.end method

.method public static setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V
    .locals 2

    .prologue
    .line 262
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const/16 v0, 0x8

    .line 267
    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    if-ne p1, v1, :cond_3

    .line 268
    const/4 v0, 0x0

    .line 273
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    if-ne p1, v1, :cond_2

    .line 270
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public static setVisibleOrGone(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 153
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 154
    :goto_0
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 155
    return-void

    .line 153
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_0
.end method

.method public static setVisibleOrGoneAnimation(Landroid/view/View;ZZ)V
    .locals 1

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 170
    :goto_1
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0

    .line 169
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_1
.end method

.method public static setVisibleOrInvisible(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 182
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 183
    :goto_0
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 184
    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_0
.end method

.method public static setVisibleOrInvisibleAnimation(Landroid/view/View;ZZ)V
    .locals 1

    .prologue
    .line 195
    if-eqz p2, :cond_0

    .line 196
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 199
    :goto_1
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0

    .line 198
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_1
.end method

.method public static showViews(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    if-nez p0, :cond_1

    .line 672
    :cond_0
    return-void

    .line 667
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 668
    if-eqz v0, :cond_2

    .line 669
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
