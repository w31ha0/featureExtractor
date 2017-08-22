.class public Lcom/kosbrother/tool/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/tool/FastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static MIN_PAGES:I = 0x0

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2


# instance fields
.field private mChangedBounds:Z

.field private mDrawOverlay:Z

.field private final mHandler:Landroid/os/Handler;

.field private mItemCount:I

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private final mOverlaySize:I

.field private mPaint:Landroid/text/TextPaint;

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/kosbrother/tool/FastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbY:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x4

    sput v0, Lcom/kosbrother/tool/FastScroller;->MIN_PAGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/16 v0, 0x68

    iput v0, p0, Lcom/kosbrother/tool/FastScroller;->mOverlaySize:I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/kosbrother/tool/FastScroller;->mItemCount:I

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mHandler:Landroid/os/Handler;

    .line 139
    iput-object p2, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 140
    invoke-direct {p0, p1}, Lcom/kosbrother/tool/FastScroller;->init(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/kosbrother/tool/FastScroller;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/tool/FastScroller;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 377
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 378
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 379
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 380
    return-void
.end method

.method private getSections()V
    .locals 5

    .prologue
    .line 323
    iget-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 324
    .local v0, "adapter":Landroid/widget/Adapter;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 325
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 326
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Lcom/kosbrother/tool/FastScroller;->mListOffset:I

    .line 327
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 329
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    iget-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 331
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 332
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 333
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 334
    iget-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mSections:[Ljava/lang/Object;

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 337
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 338
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 339
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 340
    iget-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 343
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 344
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " "

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    .local v1, "res":Landroid/content/res/Resources;
    const v6, 0x7f0200cb

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kosbrother/tool/FastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    const v6, 0x7f0200cc

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iput-boolean v8, p0, Lcom/kosbrother/tool/FastScroller;->mScrollCompleted:Z

    .line 194
    invoke-direct {p0}, Lcom/kosbrother/tool/FastScroller;->getSections()V

    .line 196
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 197
    new-instance v6, Lcom/kosbrother/tool/FastScroller$ScrollFade;

    invoke-direct {v6, p0}, Lcom/kosbrother/tool/FastScroller$ScrollFade;-><init>(Lcom/kosbrother/tool/FastScroller;)V

    iput-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mScrollFade:Lcom/kosbrother/tool/FastScroller$ScrollFade;

    .line 198
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    iput-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mPaint:Landroid/text/TextPaint;

    .line 199
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 200
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 201
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mPaint:Landroid/text/TextPaint;

    const/high16 v7, 0x42080000    # 34.0f

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v8, [I

    const v8, 0x1010036

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 203
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 204
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 205
    .local v4, "textColorNormal":I
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 206
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    iput v9, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    .line 212
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    .line 213
    .local v5, "w":I
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 214
    .local v0, "h":I
    invoke-virtual {p0, v5, v0, v5, v0}, Lcom/kosbrother/tool/FastScroller;->onSizeChanged(IIII)V

    .line 215
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 172
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 174
    .local v0, "viewWidth":I
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/kosbrother/tool/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 176
    return-void
.end method

.method private scrollTo(F)V
    .locals 10
    .param p1, "position"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 350
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 351
    .local v0, "count":I
    iput-boolean v8, p0, Lcom/kosbrother/tool/FastScroller;->mScrollCompleted:Z

    .line 352
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v9, v0

    div-float/2addr v6, v9

    const/high16 v9, 0x41000000    # 8.0f

    div-float v1, v6, v9

    .line 353
    .local v1, "fThreshold":F
    iget-object v4, p0, Lcom/kosbrother/tool/FastScroller;->mSections:[Ljava/lang/Object;

    .line 356
    .local v4, "sections":[Ljava/lang/Object;
    int-to-float v6, v0

    mul-float/2addr v6, p1

    float-to-int v2, v6

    .line 357
    .local v2, "index":I
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v6, v6, Landroid/widget/ListView;

    if-eqz v6, :cond_1

    .line 358
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ListView;

    iget v9, p0, Lcom/kosbrother/tool/FastScroller;->mListOffset:I

    add-int/2addr v9, v2

    invoke-virtual {v6, v9, v8}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 362
    :goto_0
    if-eqz v4, :cond_2

    array-length v6, v4

    if-le v6, v7, :cond_2

    .line 363
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v2}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 367
    .local v3, "sectionIndex":I
    :goto_1
    if-ltz v3, :cond_4

    .line 368
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kosbrother/tool/FastScroller;->mSectionText:Ljava/lang/String;

    .line 369
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v7, :cond_0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x20

    if-eq v6, v9, :cond_3

    :cond_0
    array-length v6, v4

    if-ge v3, v6, :cond_3

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/kosbrother/tool/FastScroller;->mDrawOverlay:Z

    .line 373
    .end local v5    # "text":Ljava/lang/String;
    :goto_3
    return-void

    .line 360
    .end local v3    # "sectionIndex":I
    :cond_1
    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v9, p0, Lcom/kosbrother/tool/FastScroller;->mListOffset:I

    add-int/2addr v9, v2

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0

    .line 365
    :cond_2
    const/4 v3, -0x1

    .restart local v3    # "sectionIndex":I
    goto :goto_1

    .restart local v5    # "text":Ljava/lang/String;
    :cond_3
    move v6, v8

    .line 369
    goto :goto_2

    .line 371
    .end local v5    # "text":Ljava/lang/String;
    :cond_4
    iput-boolean v8, p0, Lcom/kosbrother/tool/FastScroller;->mDrawOverlay:Z

    goto :goto_3
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v0, 0x4e

    .line 179
    iput-object p1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iput v0, p0, Lcom/kosbrother/tool/FastScroller;->mThumbW:I

    .line 181
    iput v0, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kosbrother/tool/FastScroller;->mChangedBounds:Z

    .line 183
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 230
    iget v9, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-nez v9, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget v8, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    .line 236
    .local v8, "y":I
    iget-object v9, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    .line 237
    .local v7, "viewWidth":I
    iget-object v5, p0, Lcom/kosbrother/tool/FastScroller;->mScrollFade:Lcom/kosbrother/tool/FastScroller$ScrollFade;

    .line 239
    .local v5, "scrollFade":Lcom/kosbrother/tool/FastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 240
    .local v0, "alpha":I
    iget v9, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-ne v9, v13, :cond_3

    .line 241
    invoke-virtual {v5}, Lcom/kosbrother/tool/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 242
    const/16 v9, 0x68

    if-ge v0, v9, :cond_2

    .line 243
    iget-object v9, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    :cond_2
    iget v9, p0, Lcom/kosbrother/tool/FastScroller;->mThumbW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v2, v7, v9

    .line 246
    .local v2, "left":I
    iget-object v9, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    invoke-virtual {v9, v2, v12, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/kosbrother/tool/FastScroller;->mChangedBounds:Z

    .line 250
    .end local v2    # "left":I
    :cond_3
    int-to-float v9, v8

    invoke-virtual {p1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    iget-object v9, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    neg-int v9, v8

    int-to-float v9, v9

    invoke-virtual {p1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    iget v9, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    iget-boolean v9, p0, Lcom/kosbrother/tool/FastScroller;->mDrawOverlay:Z

    if-eqz v9, :cond_4

    .line 256
    iget-object v9, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    iget-object v3, p0, Lcom/kosbrother/tool/FastScroller;->mPaint:Landroid/text/TextPaint;

    .line 258
    .local v3, "paint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v1

    .line 259
    .local v1, "descent":F
    iget-object v4, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 260
    .local v4, "rectF":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/kosbrother/tool/FastScroller;->mSectionText:Ljava/lang/String;

    iget-object v10, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v11

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v9, v3, v10, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "text":Ljava/lang/String;
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    iget v11, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x11

    int-to-float v10, v10

    sub-float/2addr v10, v1

    invoke-virtual {p1, v6, v9, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 264
    .end local v1    # "descent":F
    .end local v3    # "paint":Landroid/text/TextPaint;
    .end local v4    # "rectF":Landroid/graphics/RectF;
    .end local v6    # "text":Ljava/lang/String;
    :cond_4
    iget v9, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-ne v9, v13, :cond_0

    .line 265
    if-nez v0, :cond_5

    .line 266
    invoke-virtual {p0, v12}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    goto/16 :goto_0

    .line 268
    :cond_5
    iget-object v9, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v10, p0, Lcom/kosbrother/tool/FastScroller;->mThumbW:I

    sub-int v10, v7, v10

    iget v11, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    add-int/2addr v11, v8

    invoke-virtual {v9, v10, v8, v7, v11}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/kosbrother/tool/FastScroller;->mThumbW:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    iget v2, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 385
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    .line 386
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    .line 295
    iput p4, p0, Lcom/kosbrother/tool/FastScroller;->mItemCount:I

    .line 296
    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v3, Lcom/kosbrother/tool/FastScroller;->MIN_PAGES:I

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kosbrother/tool/FastScroller;->mLongList:Z

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/kosbrother/tool/FastScroller;->mLongList:Z

    if-nez v0, :cond_3

    .line 299
    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0, v2}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    .line 320
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 296
    goto :goto_0

    .line 304
    :cond_3
    sub-int v0, p4, p3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-eq v0, v4, :cond_4

    .line 305
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    sub-int/2addr v0, v3

    mul-int/2addr v0, p2

    sub-int v3, p4, p3

    div-int/2addr v0, v3

    iput v0, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    .line 306
    iget-boolean v0, p0, Lcom/kosbrother/tool/FastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_4

    .line 307
    invoke-direct {p0}, Lcom/kosbrother/tool/FastScroller;->resetThumbPos()V

    .line 308
    iput-boolean v2, p0, Lcom/kosbrother/tool/FastScroller;->mChangedBounds:Z

    .line 311
    :cond_4
    iput-boolean v1, p0, Lcom/kosbrother/tool/FastScroller;->mScrollCompleted:Z

    .line 312
    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_1

    .line 315
    iput p2, p0, Lcom/kosbrother/tool/FastScroller;->mVisibleItem:I

    .line 316
    iget v0, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-eq v0, v4, :cond_1

    .line 317
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    .line 318
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mScrollFade:Lcom/kosbrother/tool/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/kosbrother/tool/FastScroller;->mThumbW:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 283
    .local v0, "pos":Landroid/graphics/RectF;
    div-int/lit8 v1, p1, 0x8

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 284
    iget v1, v0, Landroid/graphics/RectF;->left:F

    mul-int/lit8 v2, p1, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 285
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 286
    iget v1, v0, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x42d00000    # 104.0f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 287
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 393
    iget v5, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-nez v5, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v3

    .line 396
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/kosbrother/tool/FastScroller;->mThumbW:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    iget v7, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 399
    invoke-virtual {p0, v8}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    .line 400
    iget-object v3, p0, Lcom/kosbrother/tool/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/kosbrother/tool/FastScroller;->getSections()V

    .line 404
    :cond_2
    invoke-direct {p0}, Lcom/kosbrother/tool/FastScroller;->cancelFling()V

    move v3, v4

    .line 405
    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 408
    iget v5, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-ne v5, v8, :cond_0

    .line 409
    invoke-virtual {p0, v6}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    .line 410
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller;->mHandler:Landroid/os/Handler;

    .line 411
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/kosbrother/tool/FastScroller;->mScrollFade:Lcom/kosbrother/tool/FastScroller$ScrollFade;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iget-object v3, p0, Lcom/kosbrother/tool/FastScroller;->mScrollFade:Lcom/kosbrother/tool/FastScroller$ScrollFade;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v3, v4

    .line 413
    goto :goto_0

    .line 415
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 416
    iget v5, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    if-ne v5, v8, :cond_0

    .line 417
    iget-object v3, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    .line 419
    .local v2, "viewHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    sub-int/2addr v3, v5

    add-int/lit8 v1, v3, 0xa

    .line 420
    .local v1, "newThumbY":I
    if-gez v1, :cond_6

    .line 421
    const/4 v1, 0x0

    .line 425
    :cond_5
    :goto_1
    iget v3, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_7

    move v3, v4

    .line 426
    goto/16 :goto_0

    .line 422
    :cond_6
    iget v3, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    add-int/2addr v3, v1

    if-le v3, v2, :cond_5

    .line 423
    iget v3, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    sub-int v1, v2, v3

    goto :goto_1

    .line 428
    :cond_7
    iput v1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    .line 430
    iget-boolean v3, p0, Lcom/kosbrother/tool/FastScroller;->mScrollCompleted:Z

    if-eqz v3, :cond_8

    .line 431
    iget v3, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    int-to-float v3, v3

    iget v5, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/kosbrother/tool/FastScroller;->scrollTo(F)V

    :cond_8
    move v3, v4

    .line 433
    goto/16 :goto_0
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 145
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    .line 165
    return-void

    .line 148
    :pswitch_1
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mScrollFade:Lcom/kosbrother/tool/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 152
    :pswitch_2
    iget v1, p0, Lcom/kosbrother/tool/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/kosbrother/tool/FastScroller;->resetThumbPos()V

    .line 157
    :cond_0
    :pswitch_3
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kosbrother/tool/FastScroller;->mScrollFade:Lcom/kosbrother/tool/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 160
    :pswitch_4
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 161
    .local v0, "viewWidth":I
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/kosbrother/tool/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    iget v4, p0, Lcom/kosbrother/tool/FastScroller;->mThumbY:I

    iget v5, p0, Lcom/kosbrother/tool/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    .line 220
    iput-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    iput-object v1, p0, Lcom/kosbrother/tool/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    return-void
.end method
