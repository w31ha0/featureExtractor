.class public Lcom/biznessapps/fragments/SwipeyTabs;
.super Landroid/view/ViewGroup;
.source "SwipeyTabs.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

.field private mBottomBarColor:I

.field private mBottomBarHeight:I

.field private mCachedTabPaint:Landroid/graphics/Paint;

.field private mCurrentPos:I

.field private mCurrentTabPos:[I

.field private mFrontedTabPos:[I

.field private mLeftTabPos:[I

.field private mRightTabPos:[I

.field private mTabIndicatorHeight:I

.field private mTextColor:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/fragments/SwipeyTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/fragments/SwipeyTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const-string v0, "SwipeyTabs"

    iput-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->TAG:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mBottomBarHeight:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mTabIndicatorHeight:I

    .line 30
    const v0, -0x6955c7

    iput v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mBottomBarColor:I

    .line 33
    const v0, -0x6b6b6c

    iput v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mTextColor:I

    .line 49
    iput v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mWidth:I

    .line 62
    invoke-direct {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->init()V

    .line 63
    return-void
.end method

.method private calculateTabPosition(I[I)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "tabPositions"    # [I

    .prologue
    .line 151
    iget-object v6, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    if-nez v6, :cond_1

    .line 186
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v6, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v6}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getCount()I

    move-result v1

    .line 157
    .local v1, "count":I
    if-ltz p1, :cond_5

    if-ge p1, v1, :cond_5

    .line 158
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getMeasuredWidth()I

    move-result v5

    .line 160
    .local v5, "width":I
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "centerTab":Landroid/view/View;
    div-int/lit8 v6, v5, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    aput v6, p2, p1

    .line 162
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 163
    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, "tab":Landroid/widget/TextView;
    add-int/lit8 v6, p1, -0x1

    if-ne v2, v6, :cond_2

    .line 165
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x0

    aput v6, p2, v2

    .line 169
    :goto_1
    aget v6, p2, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, p2, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, p2, v2

    .line 162
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x0

    sub-int/2addr v6, v5

    aput v6, p2, v2

    goto :goto_1

    .line 171
    .end local v4    # "tab":Landroid/widget/TextView;
    :cond_3
    add-int/lit8 v2, p1, 0x1

    :goto_2
    if-ge v2, v1, :cond_0

    .line 172
    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 173
    .restart local v4    # "tab":Landroid/widget/TextView;
    add-int/lit8 v6, p1, 0x1

    if-ne v2, v6, :cond_4

    .line 174
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, p2, v2

    .line 178
    :goto_3
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 179
    .local v3, "prevTab":Landroid/widget/TextView;
    aget v6, p2, v2

    add-int/lit8 v7, v2, -0x1

    aget v7, p2, v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, p2, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 176
    .end local v3    # "prevTab":Landroid/widget/TextView;
    :cond_4
    mul-int/lit8 v6, v5, 0x2

    aput v6, p2, v2

    goto :goto_3

    .line 182
    .end local v0    # "centerTab":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "tab":Landroid/widget/TextView;
    .end local v5    # "width":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v6, p2

    if-ge v2, v6, :cond_0

    .line 183
    const/4 v6, -0x1

    aput v6, p2, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private init()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/SwipeyTabs;->setHorizontalFadingEdgeEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x420c0000    # 35.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/SwipeyTabs;->setFadingEdgeLength(I)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/SwipeyTabs;->setWillNotDraw(Z)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCachedTabPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCachedTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mBottomBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    return-void
.end method

.method private interpolateColor(IIF)I
    .locals 21
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "fraction"    # F

    .prologue
    .line 381
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v2, v17, v18

    .line 382
    .local v2, "alpha1":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v15, v17, v18

    .line 383
    .local v15, "red1":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v12, v17, v18

    .line 384
    .local v12, "green1":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v5, v17, v18

    .line 386
    .local v5, "blue1":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v3, v17, v18

    .line 387
    .local v3, "alpha2":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v16, v17, v18

    .line 388
    .local v16, "red2":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v13, v17, v18

    .line 389
    .local v13, "green2":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v6, v17, v18

    .line 391
    .local v6, "blue2":F
    sub-float v7, v3, v2

    .line 392
    .local v7, "deltaAlpha":F
    sub-float v10, v16, v15

    .line 393
    .local v10, "deltaRed":F
    sub-float v9, v13, v12

    .line 394
    .local v9, "deltaGreen":F
    sub-float v8, v6, v5

    .line 396
    .local v8, "deltaBlue":F
    mul-float v17, v7, p3

    add-float v1, v2, v17

    .line 397
    .local v1, "alpha":F
    mul-float v17, v10, p3

    add-float v14, v15, v17

    .line 398
    .local v14, "red":F
    mul-float v17, v9, p3

    add-float v11, v12, v17

    .line 399
    .local v11, "green":F
    mul-float v17, v8, p3

    add-float v4, v5, v17

    .line 401
    .local v4, "blue":F
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 402
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 403
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 404
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 406
    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v17, v17, v1

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x437f0000    # 255.0f

    mul-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v17 .. v20}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    return v17
.end method

.method private measureTabs(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 242
    iget-object v7, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    if-nez v7, :cond_1

    .line 257
    :cond_0
    return-void

    .line 246
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 247
    .local v5, "widthSize":I
    int-to-double v7, v5

    const-wide v9, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v7, v9

    double-to-int v4, v7

    .line 249
    .local v4, "maxWidth":I
    iget-object v7, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v7}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getCount()I

    move-result v0

    .line 251
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 252
    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 253
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v7, -0x80000000

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 254
    .local v6, "widthSpec":I
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 255
    .local v1, "heightSpec":I
    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Landroid/view/View;->measure(II)V

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateEllipsize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x13

    .line 192
    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    if-nez v3, :cond_1

    .line 212
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v3}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getCount()I

    move-result v0

    .line 198
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    .local v2, "tab":Landroid/widget/TextView;
    iget v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    if-ge v1, v3, :cond_3

    .line 202
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 203
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 198
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_3
    iget v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    if-ne v1, v3, :cond_4

    .line 205
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 206
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 207
    :cond_4
    iget v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    if-le v1, v3, :cond_2

    .line 208
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 209
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method

.method private updateTabPositions(Z)V
    .locals 4
    .param p1, "forceLayout"    # Z

    .prologue
    .line 126
    iget-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    if-nez v2, :cond_1

    .line 142
    :cond_0
    return-void

    .line 130
    :cond_1
    iget v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mFrontedTabPos:[I

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/fragments/SwipeyTabs;->calculateTabPosition(I[I)V

    .line 131
    iget v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mLeftTabPos:[I

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/fragments/SwipeyTabs;->calculateTabPosition(I[I)V

    .line 132
    iget v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mRightTabPos:[I

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/fragments/SwipeyTabs;->calculateTabPosition(I[I)V

    .line 134
    invoke-direct {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->updateEllipsize()V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v2}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getCount()I

    move-result v0

    .line 138
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mFrontedTabPos:[I

    aget v3, v3, v1

    aput v3, v2, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 277
    iget v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mBottomBarHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mTabIndicatorHeight:I

    sub-int v14, v0, v1

    .line 281
    .local v14, "tabSelectedTop":I
    iget v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 282
    .local v10, "currentTab":Landroid/view/View;
    iget-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    iget v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    aget v0, v0, v1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 284
    .local v8, "centerOfTab":I
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 285
    .local v6, "center":I
    div-int/lit8 v7, v6, 0x3

    .line 286
    .local v7, "centerDiv3":I
    const/high16 v0, 0x3f800000    # 1.0f

    sub-int v1, v8, v6

    int-to-float v1, v1

    int-to-float v2, v7

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v12, v0, v1

    .line 288
    .local v12, "relativePos":F
    iget-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCachedTabPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v12

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 289
    iget-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    iget v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    aget v0, v0, v1

    int-to-float v1, v0

    int-to-float v2, v14

    iget-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    iget v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    aget v0, v0, v3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mTabIndicatorHeight:I

    add-int/2addr v0, v14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCachedTabPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 294
    iget-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v0}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getCount()I

    move-result v9

    .line 295
    .local v9, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_1

    .line 296
    invoke-virtual {p0, v11}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 297
    .local v13, "tab":Landroid/widget/TextView;
    iget v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    if-ne v0, v11, :cond_0

    .line 298
    iget v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mBottomBarColor:I

    iget v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mTextColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v12

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/fragments/SwipeyTabs;->interpolateColor(IIF)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mTextColor:I

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 306
    .end local v6    # "center":I
    .end local v7    # "centerDiv3":I
    .end local v8    # "centerOfTab":I
    .end local v9    # "count":I
    .end local v10    # "currentTab":Landroid/view/View;
    .end local v11    # "i":I
    .end local v12    # "relativePos":F
    .end local v13    # "tab":Landroid/widget/TextView;
    .end local v14    # "tabSelectedTop":I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 307
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 314
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mBottomBarHeight:I

    sub-int v6, v0, v1

    .line 315
    .local v6, "bottomBarTop":I
    iget-object v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCachedTabPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mBottomBarHeight:I

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCachedTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 317
    return-void
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 322
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 328
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 261
    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    if-nez v3, :cond_1

    .line 273
    :cond_0
    return-void

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v3}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getCount()I

    move-result v0

    .line 267
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 268
    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 270
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    aget v3, v3, v1

    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    aget v5, v5, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 216
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 218
    .local v2, "widthSize":I
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/fragments/SwipeyTabs;->measureTabs(II)V

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "height":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/biznessapps/fragments/SwipeyTabs;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, p1}, Lcom/biznessapps/fragments/SwipeyTabs;->resolveSize(II)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mBottomBarHeight:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4, p2}, Lcom/biznessapps/fragments/SwipeyTabs;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/fragments/SwipeyTabs;->setMeasuredDimension(II)V

    .line 229
    iget v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mWidth:I

    if-eq v3, v2, :cond_1

    .line 230
    iput v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mWidth:I

    .line 231
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/biznessapps/fragments/SwipeyTabs;->updateTabPositions(Z)V

    .line 233
    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 331
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 334
    iget-object v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    if-nez v8, :cond_0

    .line 373
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v8}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getCount()I

    move-result v0

    .line 340
    .local v0, "count":I
    const/4 v7, 0x0

    .line 341
    .local v7, "x":F
    const/4 v2, 0x0

    .line 344
    .local v2, "dir":I
    if-eqz p3, :cond_2

    iget v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    if-ne v8, p1, :cond_2

    .line 345
    const/4 v2, -0x1

    .line 346
    move v7, p2

    .line 353
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 354
    iget-object v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mFrontedTabPos:[I

    aget v8, v8, v3

    int-to-float v1, v8

    .line 355
    .local v1, "curX":F
    const/4 v6, 0x0

    .line 357
    .local v6, "toX":F
    if-gez v2, :cond_3

    .line 358
    iget-object v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mLeftTabPos:[I

    aget v8, v8, v3

    int-to-float v6, v8

    .line 365
    :goto_3
    sub-float v8, v6, v1

    mul-float/2addr v8, v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v5, v8

    .line 366
    .local v5, "offsetX":I
    int-to-float v8, v5

    add-float/2addr v8, v1

    float-to-int v4, v8

    .line 368
    .local v4, "newX":I
    iget-object v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    aput v4, v8, v3

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 347
    .end local v1    # "curX":F
    .end local v3    # "i":I
    .end local v4    # "newX":I
    .end local v5    # "offsetX":I
    .end local v6    # "toX":F
    :cond_2
    if-eqz p3, :cond_1

    iget v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    if-eq v8, p1, :cond_1

    .line 348
    const/4 v2, 0x1

    .line 349
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, p2

    goto :goto_1

    .line 359
    .restart local v1    # "curX":F
    .restart local v3    # "i":I
    .restart local v6    # "toX":F
    :cond_3
    if-lez v2, :cond_4

    .line 360
    iget-object v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mRightTabPos:[I

    aget v8, v8, v3

    int-to-float v6, v8

    goto :goto_3

    .line 362
    :cond_4
    iget-object v8, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mFrontedTabPos:[I

    aget v8, v8, v3

    int-to-float v6, v8

    goto :goto_3

    .line 371
    .end local v1    # "curX":F
    .end local v6    # "toX":F
    :cond_5
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->requestLayout()V

    .line 372
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->invalidate()V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/SwipeyTabs;->updateTabPositions(Z)V

    .line 378
    return-void
.end method

.method public setAdapter(Lcom/biznessapps/fragments/SwipeyTabsAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 85
    iget-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    if-eqz v2, :cond_0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    .line 90
    iput v4, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    .line 91
    iput-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mFrontedTabPos:[I

    .line 92
    iput-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mLeftTabPos:[I

    .line 93
    iput-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mRightTabPos:[I

    .line 94
    iput-object v3, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    .line 97
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->removeAllViews()V

    .line 99
    iget-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v2}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getCount()I

    move-result v0

    .line 103
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 104
    iget-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mAdapter:Lcom/biznessapps/fragments/SwipeyTabsAdapter;

    invoke-interface {v2, v1, p0}, Lcom/biznessapps/fragments/SwipeyTabsAdapter;->getTab(ILcom/biznessapps/fragments/SwipeyTabs;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/SwipeyTabs;->addView(Landroid/view/View;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentPos:I

    .line 108
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mFrontedTabPos:[I

    .line 109
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mLeftTabPos:[I

    .line 110
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mRightTabPos:[I

    .line 111
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mCurrentTabPos:[I

    .line 113
    iput v4, p0, Lcom/biznessapps/fragments/SwipeyTabs;->mWidth:I

    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/fragments/SwipeyTabs;->requestLayout()V

    .line 117
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
