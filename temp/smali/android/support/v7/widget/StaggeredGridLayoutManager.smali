.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# instance fields
.field private final mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Landroid/support/v7/widget/LayoutState;

.field mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 112
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 135
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 140
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 151
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 157
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 163
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 168
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 199
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 207
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 213
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 221
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 252
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 253
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 254
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 255
    new-instance v0, Landroid/support/v7/widget/LayoutState;

    invoke-direct {v0}, Landroid/support/v7/widget/LayoutState;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    .line 256
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 257
    return-void

    :cond_0
    move v0, v1

    .line 254
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 112
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 135
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 140
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 151
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 157
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 163
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 168
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 199
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 207
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 213
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 221
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 235
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v2

    .line 236
    iget v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 237
    iget v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 238
    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 239
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 240
    new-instance v0, Landroid/support/v7/widget/LayoutState;

    invoke-direct {v0}, Landroid/support/v7/widget/LayoutState;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    .line 241
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 242
    return-void

    :cond_0
    move v0, v1

    .line 239
    goto :goto_0
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1773
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1774
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1773
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1776
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 3

    .prologue
    .line 787
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_3

    .line 788
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_2

    .line 789
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_3

    .line 790
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 791
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v1, v0

    .line 792
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 793
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_1

    .line 794
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 799
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 802
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 803
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 806
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 807
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 808
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 810
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 811
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 812
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 816
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 817
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 818
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 820
    :cond_4
    return-void

    .line 814
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2
.end method

.method private attachViewToSpans(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/LayoutState;)V
    .locals 2

    .prologue
    .line 1717
    iget v0, p3, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1718
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    .line 1719
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1730
    :goto_0
    return-void

    .line 1721
    :cond_0
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1724
    :cond_1
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_2

    .line 1725
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1727
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 2010
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2011
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    .line 2014
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2011
    goto :goto_0

    .line 2013
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    .line 2014
    if-ge p1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_3

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private checkSpanForGap(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 406
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 407
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 408
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 416
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 408
    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 412
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 413
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 414
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    .line 416
    goto :goto_0
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1093
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1097
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1098
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1096
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1097
    goto :goto_2
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1073
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1077
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1078
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1076
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1077
    goto :goto_2
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1113
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1117
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1118
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1116
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1117
    goto :goto_2
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 2357
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2390
    :cond_0
    :goto_0
    return v0

    .line 2359
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v2, :cond_0

    .line 2361
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 2362
    goto :goto_0

    .line 2367
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 2368
    goto :goto_0

    .line 2369
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2372
    goto :goto_0

    .line 2375
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2378
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2381
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2384
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 2357
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private createFullSpanItemFromEnd(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    .line 1699
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1700
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1701
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_0

    .line 1702
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v0

    .line 1701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1704
    :cond_0
    return-object v1
.end method

.method private createFullSpanItemFromStart(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    .line 1708
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1709
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1710
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_0

    .line 1711
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v0

    .line 1710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1713
    :cond_0
    return-object v1
.end method

.method private createOrientationHelpers()V
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 261
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    .line 262
    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 263
    return-void
.end method

.method private fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 18

    .prologue
    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-boolean v2, v2, Landroid/support/v7/widget/LayoutState;->mInfinite:Z

    if-eqz v2, :cond_4

    .line 1548
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1549
    const v2, 0x7fffffff

    move v15, v2

    .line 1561
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1568
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 1569
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    move/from16 v16, v2

    .line 1571
    :goto_1
    const/4 v2, 0x0

    .line 1572
    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-boolean v3, v3, Landroid/support/v7/widget/LayoutState;->mInfinite:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1573
    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1574
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    .line 1575
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1576
    invoke-virtual {v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v5

    .line 1579
    const/4 v2, -0x1

    if-ne v5, v2, :cond_7

    const/4 v2, 0x1

    move v4, v2

    .line 1580
    :goto_3
    if-eqz v4, :cond_9

    .line 1581
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    .line 1582
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILandroid/support/v7/widget/StaggeredGridLayoutManager$Span;)V

    move-object/from16 v17, v2

    .line 1593
    :goto_5
    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 1594
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 1595
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    .line 1599
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1603
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 1604
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    .line 1606
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int v7, v2, v5

    .line 1607
    if-eqz v4, :cond_1e

    iget-boolean v5, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_1e

    .line 1609
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1610
    const/4 v8, -0x1

    iput v8, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1611
    iput v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1612
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v5, v2

    .line 1628
    :goto_8
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 1629
    if-eqz v4, :cond_f

    .line 1630
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1648
    :cond_1
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v14, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/LayoutState;)V

    .line 1651
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 1652
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    .line 1655
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int v4, v2, v4

    move v6, v2

    .line 1663
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_17

    move-object/from16 v2, p0

    .line 1664
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1669
    :goto_c
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_18

    .line 1670
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1674
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-boolean v2, v2, Landroid/support/v7/widget/LayoutState;->mStopInFocusable:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1676
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_19

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 1682
    :cond_2
    :goto_e
    const/4 v2, 0x1

    .line 1683
    goto/16 :goto_2

    .line 1551
    :cond_3
    const/high16 v2, -0x80000000

    move v15, v2

    goto/16 :goto_0

    .line 1554
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1555
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    add-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1557
    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    sub-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1569
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 1570
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_1

    .line 1579
    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 1581
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getNextSpan(Landroid/support/v7/widget/LayoutState;)Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-result-object v2

    goto/16 :goto_4

    .line 1590
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v5

    move-object/from16 v17, v2

    goto/16 :goto_5

    .line 1597
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1605
    :cond_b
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    goto/16 :goto_7

    .line 1615
    :cond_c
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v2

    .line 1617
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    sub-int v5, v2, v5

    .line 1618
    if-eqz v4, :cond_d

    iget-boolean v7, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v7, :cond_d

    .line 1620
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    .line 1621
    const/4 v8, 0x1

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1622
    iput v6, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1623
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_d
    move v7, v2

    goto/16 :goto_8

    .line 1616
    :cond_e
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    goto :goto_f

    .line 1633
    :cond_f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 1634
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    .line 1638
    :goto_10
    if-eqz v2, :cond_1

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1640
    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    .line 1641
    if-eqz v2, :cond_10

    .line 1642
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1644
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    .line 1634
    :cond_11
    const/4 v2, 0x0

    goto :goto_10

    .line 1636
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 1652
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 1653
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v4, v6

    sub-int/2addr v2, v4

    goto/16 :goto_a

    .line 1657
    :cond_15
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 1660
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int v6, v2, v4

    move v4, v2

    goto/16 :goto_b

    .line 1657
    :cond_16
    move-object/from16 v0, v17

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 1659
    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_11

    :cond_17
    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v5

    move v11, v4

    move v12, v7

    move v13, v6

    .line 1666
    invoke-virtual/range {v8 .. v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1672
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_d

    .line 1679
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1684
    :cond_1a
    if-nez v2, :cond_1b

    .line 1685
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V

    .line 1688
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 1689
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v2

    .line 1690
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v2, v3, v2

    .line 1695
    :goto_12
    if-lez v2, :cond_1d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_13
    return v2

    .line 1692
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    .line 1693
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_12

    .line 1695
    :cond_1d
    const/4 v2, 0x0

    goto :goto_13

    :cond_1e
    move v5, v2

    goto/16 :goto_8
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2183
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    move v2, v1

    .line 2184
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2185
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2186
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2187
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2191
    :goto_1
    return v0

    .line 2184
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2191
    goto :goto_1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2201
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2202
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2203
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2207
    :goto_1
    return v0

    .line 2200
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2207
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1378
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    .line 1379
    if-ne v0, v1, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v0, v1, v0

    .line 1384
    if-lez v0, :cond_0

    .line 1385
    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    neg-int v1, v1

    .line 1389
    sub-int/2addr v0, v1

    .line 1390
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1391
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    goto :goto_0
.end method

.method private fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 1397
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    .line 1398
    if-ne v0, v1, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1403
    if-lez v0, :cond_0

    .line 1404
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 1408
    sub-int/2addr v0, v1

    .line 1409
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1410
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 3

    .prologue
    .line 1852
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1853
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    .line 1854
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1855
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1853
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1859
    :cond_1
    return v1
.end method

.method private getMaxStart(I)I
    .locals 3

    .prologue
    .line 1810
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1811
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    .line 1812
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1813
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1811
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1817
    :cond_1
    return v1
.end method

.method private getMinEnd(I)I
    .locals 3

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1864
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    .line 1865
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1866
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1864
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1870
    :cond_1
    return v1
.end method

.method private getMinStart(I)I
    .locals 3

    .prologue
    .line 1821
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1822
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    .line 1823
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1824
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1822
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1828
    :cond_1
    return v1
.end method

.method private getNextSpan(Landroid/support/v7/widget/LayoutState;)Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1947
    iget v2, p1, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v2

    .line 1949
    if-eqz v2, :cond_0

    .line 1950
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v0

    .line 1958
    :goto_0
    iget v4, p1, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v4, v1, :cond_1

    .line 1960
    const v1, 0x7fffffff

    .line 1961
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move v6, v3

    move v3, v1

    .line 1962
    :goto_1
    if-eq v6, v2, :cond_2

    .line 1963
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v1, v6

    .line 1964
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1965
    if-ge v1, v3, :cond_4

    move-object v3, v4

    .line 1962
    :goto_2
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_1

    .line 1954
    :cond_0
    const/4 v2, 0x0

    .line 1955
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v3, v2

    move v2, v0

    move v0, v1

    .line 1956
    goto :goto_0

    .line 1973
    :cond_1
    const/high16 v1, -0x80000000

    .line 1974
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v6, v3

    move v3, v1

    .line 1975
    :goto_3
    if-eq v6, v2, :cond_2

    .line 1976
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v1, v6

    .line 1977
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1978
    if-le v1, v3, :cond_3

    move-object v3, v4

    .line 1975
    :goto_4
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_3

    .line 1983
    :cond_2
    return-object v5

    :cond_3
    move v1, v3

    move-object v3, v5

    goto :goto_4

    :cond_4
    move v1, v3

    move-object v3, v5

    goto :goto_2
.end method

.method private handleUpdate(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1498
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    move v2, v0

    .line 1502
    :goto_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    .line 1503
    if-ge p1, p2, :cond_2

    .line 1504
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p1

    .line 1515
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    .line 1516
    sparse-switch p3, :sswitch_data_0

    .line 1530
    :goto_2
    if-gt v1, v2, :cond_4

    .line 1538
    :cond_0
    :goto_3
    return-void

    .line 1498
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1507
    :cond_2
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    move v0, p2

    .line 1508
    goto :goto_1

    .line 1512
    :cond_3
    add-int v0, p1, p2

    move v1, v0

    move v0, p1

    goto :goto_1

    .line 1518
    :sswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1521
    :sswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_2

    .line 1525
    :sswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1526
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1534
    :cond_4
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    .line 1535
    :goto_4
    if-gt v0, v1, :cond_0

    .line 1536
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_3

    .line 1534
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_4

    .line 1516
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 5

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1157
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1158
    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v1

    .line 1160
    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v2

    .line 1162
    if-eqz p4, :cond_1

    .line 1163
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    .line 1165
    :goto_0
    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1169
    :cond_0
    return-void

    .line 1164
    :cond_1
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1129
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_1

    .line 1130
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_0

    .line 1131
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1132
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1131
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 1152
    :goto_0
    return-void

    .line 1136
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1135
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1140
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_2

    .line 1141
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1142
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 1143
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1141
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1147
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1148
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1146
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 612
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 613
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v7, :cond_2

    .line 614
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 615
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 616
    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 723
    :cond_1
    :goto_0
    return-void

    .line 621
    :cond_2
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_9

    :cond_3
    move v0, v2

    .line 623
    :goto_1
    if-eqz v0, :cond_4

    .line 624
    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 625
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_a

    .line 626
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 631
    :goto_2
    invoke-virtual {p0, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 632
    iput-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 634
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v4, :cond_6

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v4, v7, :cond_6

    .line 635
    iget-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v4, v5, :cond_5

    .line 636
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v4

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v4, v5, :cond_6

    .line 637
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 638
    iput-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 642
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v4, v2, :cond_e

    .line 644
    :cond_7
    iget-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v4, :cond_b

    move v0, v1

    .line 645
    :goto_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_e

    .line 647
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 648
    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_8

    .line 649
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    iget v5, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 645
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v1

    .line 621
    goto :goto_1

    .line 628
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 629
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2

    .line 653
    :cond_b
    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v0, :cond_12

    :cond_c
    move v0, v1

    .line 654
    :goto_4
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_d

    .line 655
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v6, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 658
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)V

    .line 668
    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 669
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput-boolean v1, v0, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    .line 670
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 672
    iget v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 673
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_13

    .line 675
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 676
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    .line 678
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 679
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    .line 691
    :goto_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 693
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 694
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_14

    .line 695
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 696
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 703
    :cond_f
    :goto_6
    if-eqz p3, :cond_16

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_16

    .line 704
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_15

    .line 705
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v0, :cond_10

    .line 706
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    :cond_10
    move v0, v2

    .line 707
    :goto_7
    if-eqz v0, :cond_16

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 709
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 714
    :goto_8
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 715
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 717
    :cond_11
    iget-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 718
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 719
    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 721
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 660
    :goto_9
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_e

    .line 661
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    .line 662
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 663
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 683
    :cond_13
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    .line 686
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 687
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 688
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    goto/16 :goto_5

    .line 698
    :cond_14
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 699
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    goto/16 :goto_6

    :cond_15
    move v0, v1

    .line 706
    goto :goto_7

    :cond_16
    move v0, v1

    goto :goto_8
.end method

.method private preferLastSpan(I)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1937
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    .line 1938
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    .line 1940
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1938
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1940
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1780
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1781
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1780
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1783
    :cond_0
    return-void
.end method

.method private recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1733
    iget-boolean v0, p2, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1736
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    if-nez v0, :cond_3

    .line 1738
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_2

    .line 1739
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1741
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1746
    :cond_3
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_5

    .line 1748
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    iget v1, p2, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1750
    if-gez v0, :cond_4

    .line 1751
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    .line 1755
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1753
    :cond_4
    iget v1, p2, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    iget v2, p2, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_1

    .line 1758
    :cond_5
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v0

    iget v1, p2, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    sub-int/2addr v0, v1

    .line 1760
    if-gez v0, :cond_6

    .line 1761
    iget v0, p2, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    .line 1765
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1763
    :cond_6
    iget v1, p2, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    iget v2, p2, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1903
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1905
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 1906
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1907
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 1908
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1909
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1911
    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_3

    move v0, v1

    .line 1912
    :goto_1
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_2

    .line 1913
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1931
    :cond_0
    return-void

    .line 1912
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1917
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_4

    .line 1918
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1917
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1921
    :cond_3
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1924
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1926
    :cond_4
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1905
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1874
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1875
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1876
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 1877
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1878
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1880
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 1881
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_2

    .line 1882
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1900
    :cond_0
    return-void

    .line 1881
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1886
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_4

    .line 1887
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1886
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1890
    :cond_3
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1893
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1895
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 735
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 781
    :cond_0
    return-void

    .line 738
    :cond_1
    const/4 v2, 0x0

    .line 739
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    move v4, v3

    .line 740
    :goto_0
    if-ge v4, v5, :cond_3

    .line 741
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 742
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    .line 743
    cmpg-float v6, v1, v2

    if-gez v6, :cond_2

    move v0, v2

    .line 740
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 746
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 747
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 748
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 750
    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 752
    :cond_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 753
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 754
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    .line 755
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 757
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 758
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    if-eq v0, v4, :cond_0

    move v1, v3

    .line 761
    :goto_3
    if-ge v1, v5, :cond_0

    .line 762
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 763
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 764
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_5

    .line 761
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 767
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v3, v7, :cond_6

    .line 768
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v3, v6

    neg-int v3, v3

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v3, v6

    .line 769
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v6, v6, -0x1

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int v0, v6, v0

    neg-int v0, v0

    mul-int/2addr v0, v4

    .line 770
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 772
    :cond_6
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v3, v6

    .line 773
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    mul-int/2addr v0, v4

    .line 774
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v6, v7, :cond_7

    .line 775
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 777
    :cond_7
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 561
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1446
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput p1, v2, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    .line 1447
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    .line 1449
    return-void

    .line 1447
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2

    .prologue
    .line 1786
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 1787
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1790
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    .line 1792
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v0

    .line 843
    :goto_0
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 844
    const/high16 v0, -0x80000000

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 845
    const/4 v0, 0x1

    return v0

    .line 843
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1415
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput v1, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 1416
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput p1, v0, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 1419
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1420
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v0

    .line 1421
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 1422
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge v0, p1, :cond_1

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_2

    .line 1423
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    move v2, v1

    .line 1431
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v4

    .line 1432
    if-eqz v4, :cond_3

    .line 1433
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int v2, v5, v2

    iput v2, v4, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    .line 1434
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    .line 1439
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput-boolean v1, v0, Landroid/support/v7/widget/LayoutState;->mStopInFocusable:Z

    .line 1440
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput-boolean v3, v0, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    .line 1441
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 1442
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, v0, Landroid/support/v7/widget/LayoutState;->mInfinite:Z

    .line 1443
    return-void

    :cond_1
    move v0, v1

    .line 1422
    goto :goto_0

    .line 1425
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 1436
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    .line 1437
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    neg-int v2, v2

    iput v2, v0, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    goto :goto_2

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1795
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    .line 1796
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1797
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v1

    .line 1798
    add-int/2addr v0, v1

    if-gt v0, p3, :cond_0

    .line 1799
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1807
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v1

    .line 1803
    sub-int v0, v1, v0

    if-lt v0, p3, :cond_0

    .line 1804
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 3

    .prologue
    .line 1172
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return p1

    .line 1175
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1176
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 1177
    :cond_2
    const/4 v1, 0x0

    .line 1178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1177
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1832
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v0, v1

    .line 1833
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_0

    .line 1834
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1838
    :cond_0
    return v1

    .line 1833
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method areAllStartsEqual()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1842
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v0, v1

    .line 1843
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_0

    .line 1844
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1848
    :cond_0
    return v1

    .line 1843
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 530
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 1994
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1989
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkForGaps()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 272
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 313
    :goto_0
    return v1

    .line 276
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    move v4, v3

    move v3, v0

    .line 283
    :goto_1
    if-nez v4, :cond_3

    .line 284
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 288
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    .line 281
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 292
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v0, :cond_4

    move v1, v2

    .line 293
    goto :goto_0

    .line 295
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 296
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v3, 0x1

    .line 297
    invoke-virtual {v5, v4, v6, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 298
    if-nez v5, :cond_6

    .line 299
    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move v1, v2

    .line 301
    goto :goto_0

    :cond_5
    move v0, v1

    .line 295
    goto :goto_2

    .line 303
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v0, v0, -0x1

    .line 304
    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 306
    if-nez v0, :cond_7

    .line 307
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 311
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    .line 309
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_3
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2238
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2089
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    .line 2090
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 2120
    :cond_0
    return-void

    :cond_1
    move p1, p2

    .line 2089
    goto :goto_0

    .line 2094
    :cond_2
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 2097
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    array-length v0, v0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_4

    .line 2098
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    :cond_4
    move v0, v1

    move v2, v1

    .line 2102
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_7

    .line 2104
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    .line 2105
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2107
    :goto_2
    if-ltz v3, :cond_5

    .line 2109
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aput v3, v4, v2

    .line 2110
    add-int/lit8 v2, v2, 0x1

    .line 2102
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2105
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v4, v4, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    .line 2106
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v4, v4, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    sub-int/2addr v3, v4

    goto :goto_2

    .line 2113
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 2116
    :goto_3
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aget v3, v3, v1

    invoke-interface {p4, v0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 2118
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v3, v0, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v4, v4, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 2116
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2019
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v1

    .line 2020
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2021
    if-nez v1, :cond_0

    .line 2022
    const/4 v0, 0x0

    .line 2031
    :goto_0
    return-object v0

    .line 2024
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_1

    .line 2025
    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2026
    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2028
    :cond_1
    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 2029
    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1124
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 7

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    .line 1356
    const/4 v1, 0x0

    .line 1357
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 1358
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1359
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1360
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 1361
    if-le v6, v3, :cond_0

    if-lt v5, v4, :cond_1

    .line 1357
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 1364
    :cond_1
    if-le v6, v4, :cond_2

    if-nez p1, :cond_3

    .line 1373
    :cond_2
    :goto_2
    return-object v1

    .line 1369
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1370
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1373
    goto :goto_2
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 8

    .prologue
    .line 1324
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    .line 1325
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    .line 1327
    const/4 v1, 0x0

    .line 1328
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v5, :cond_4

    .line 1329
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1330
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 1331
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 1332
    if-le v7, v3, :cond_0

    if-lt v6, v4, :cond_1

    .line 1328
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1335
    :cond_1
    if-ge v6, v3, :cond_2

    if-nez p1, :cond_3

    .line 1344
    :cond_2
    :goto_2
    return-object v1

    .line 1340
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1341
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1344
    goto :goto_2
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1294
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    .line 1296
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 1295
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1296
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2213
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 2214
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 2217
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 2224
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 2229
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2230
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2232
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .prologue
    .line 1311
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1312
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1314
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method getFirstChildPosition()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2173
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    .line 2174
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method getLastChildPosition()I
    .locals 1

    .prologue
    .line 2168
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 2169
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1302
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1303
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1305
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 341
    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 342
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v9, v5, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 345
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 347
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1

    move v8, v0

    .line 354
    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    .line 355
    :goto_3
    if-eq v7, v8, :cond_c

    .line 356
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 357
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 358
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkSpanForGap(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 399
    :goto_4
    return-object v0

    :cond_0
    move v2, v0

    .line 345
    goto :goto_0

    .line 352
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v0

    .line 354
    goto :goto_2

    .line 362
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    .line 364
    :cond_4
    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_6

    .line 355
    :cond_5
    add-int v0, v7, v4

    move v7, v0

    goto :goto_3

    .line 368
    :cond_6
    add-int v1, v7, v4

    if-eq v1, v8, :cond_5

    .line 369
    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 371
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_8

    .line 373
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 374
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 375
    if-ge v1, v11, :cond_7

    move-object v0, v6

    .line 376
    goto :goto_4

    .line 377
    :cond_7
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 389
    :goto_5
    if-eqz v1, :cond_5

    .line 391
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 392
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_a

    move v1, v3

    :goto_6
    if-gez v2, :cond_b

    move v0, v3

    :goto_7
    if-eq v1, v0, :cond_5

    move-object v0, v6

    .line 393
    goto :goto_4

    .line 381
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    .line 382
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    .line 383
    if-le v1, v11, :cond_9

    move-object v0, v6

    .line 384
    goto :goto_4

    .line 385
    :cond_9
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 386
    goto :goto_5

    :cond_a
    move v1, v5

    .line 392
    goto :goto_6

    :cond_b
    move v0, v5

    goto :goto_7

    .line 399
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    move v1, v5

    goto :goto_5
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 551
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 552
    return-void
.end method

.method isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2

    .prologue
    .line 1453
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1454
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1455
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1457
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2

    .prologue
    .line 1461
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1462
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1463
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1465
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 331
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2249
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 2343
    :cond_0
    :goto_0
    return-object v0

    .line 2253
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 2254
    if-nez v6, :cond_2

    move-object v0, v3

    .line 2255
    goto :goto_0

    .line 2258
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2259
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v7

    .line 2260
    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_3

    move-object v0, v3

    .line 2261
    goto :goto_0

    .line 2263
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2264
    iget-boolean v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2265
    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2267
    if-ne v7, v5, :cond_4

    .line 2268
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    .line 2272
    :goto_1
    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 2273
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2275
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v4, v4, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v4, v0

    iput v4, v1, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 2276
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const v4, 0x3eaaaaab

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, v1, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 2277
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput-boolean v5, v1, Landroid/support/v7/widget/LayoutState;->mStopInFocusable:Z

    .line 2278
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput-boolean v2, v1, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    .line 2279
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-direct {p0, p3, v1, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    .line 2280
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2281
    if-nez v8, :cond_5

    .line 2282
    invoke-virtual {v9, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v1

    .line 2283
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_5

    move-object v0, v1

    .line 2284
    goto :goto_0

    .line 2270
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    goto :goto_1

    .line 2290
    :cond_5
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2291
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_2
    if-ltz v4, :cond_9

    .line 2292
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v1

    .line 2293
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_6

    move-object v0, v1

    .line 2294
    goto/16 :goto_0

    .line 2291
    :cond_6
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_2

    :cond_7
    move v1, v2

    .line 2298
    :goto_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v4, :cond_9

    .line 2299
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v4

    .line 2300
    if-eqz v4, :cond_8

    if-eq v4, v6, :cond_8

    move-object v0, v4

    .line 2301
    goto/16 :goto_0

    .line 2298
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2310
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v0, :cond_c

    move v1, v5

    :goto_4
    const/4 v0, -0x1

    if-ne v7, v0, :cond_d

    move v0, v5

    :goto_5
    if-ne v1, v0, :cond_e

    move v4, v5

    .line 2312
    :goto_6
    if-nez v8, :cond_a

    .line 2313
    if-eqz v4, :cond_f

    .line 2314
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v0

    .line 2313
    :goto_7
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2316
    if-eqz v0, :cond_a

    if-ne v0, v6, :cond_0

    .line 2321
    :cond_a
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2322
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-ltz v1, :cond_15

    .line 2323
    iget v0, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    if-ne v1, v0, :cond_10

    .line 2322
    :cond_b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8

    :cond_c
    move v1, v2

    .line 2310
    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move v4, v2

    goto :goto_6

    .line 2315
    :cond_f
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v0

    goto :goto_7

    .line 2326
    :cond_10
    if-eqz v4, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v1

    .line 2327
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v0

    .line 2326
    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2329
    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_b

    goto/16 :goto_0

    .line 2327
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v1

    .line 2328
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v0

    goto :goto_9

    .line 2334
    :cond_12
    add-int/lit8 v2, v2, 0x1

    :cond_13
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v0, :cond_15

    .line 2335
    if-eqz v4, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v2

    .line 2336
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v0

    .line 2335
    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2338
    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_12

    goto/16 :goto_0

    .line 2336
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v2

    .line 2337
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v0

    goto :goto_a

    :cond_15
    move-object v0, v3

    .line 2343
    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1267
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1268
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1270
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 1271
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v1

    .line 1272
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v2

    .line 1273
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1277
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1278
    if-ge v1, v2, :cond_2

    .line 1279
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1280
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0

    .line 1282
    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1283
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 1246
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1247
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 1248
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1263
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    .line 1251
    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1252
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    .line 1254
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    iget-boolean v1, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1253
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 1254
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1258
    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1260
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    iget-boolean v3, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_2
    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1258
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 1260
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1474
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1475
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1480
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1481
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 1485
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1486
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1469
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1470
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1491
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1492
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 607
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 727
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 728
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 729
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 731
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 732
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1185
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1186
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1187
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1191
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 1195
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1196
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1240
    :goto_0
    return-object v0

    .line 1198
    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1199
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1200
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1201
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1203
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_2

    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1205
    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v0, v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1206
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1211
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1212
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    .line 1213
    :goto_2
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1214
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1215
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1216
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v0, v1

    .line 1217
    :goto_3
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_6

    .line 1219
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v1, :cond_4

    .line 1220
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1221
    if-eq v1, v4, :cond_1

    .line 1222
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1230
    :cond_1
    :goto_4
    iget-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v0

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1208
    :cond_2
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    .line 1213
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    goto :goto_2

    .line 1225
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1226
    if-eq v1, v4, :cond_1

    .line 1227
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    .line 1233
    :cond_5
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1234
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1235
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    :cond_6
    move-object v0, v2

    .line 1240
    goto/16 :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 321
    :cond_0
    return-void
.end method

.method prepareLayoutStateForDelta(ILandroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2125
    if-lez p1, :cond_0

    .line 2127
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 2132
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput-boolean v1, v3, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    .line 2133
    invoke-direct {p0, v2, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 2134
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2135
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 2136
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 2137
    return-void

    .line 2129
    :cond_0
    const/4 v0, -0x1

    .line 2130
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    goto :goto_0
.end method

.method scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2140
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v1

    .line 2164
    :goto_0
    return p1

    .line 2144
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 2145
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 2146
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 2148
    if-ge v2, v0, :cond_2

    .line 2159
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    neg-int v2, p1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 2161
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2162
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iput v1, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 2163
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V

    goto :goto_0

    .line 2150
    :cond_2
    if-gez p1, :cond_3

    .line 2151
    neg-int p1, v0

    goto :goto_1

    :cond_3
    move p1, v0

    .line 2153
    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 2000
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    .line 2045
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2047
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2048
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2049
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2050
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 2006
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 589
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 590
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 591
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 592
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 593
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 594
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v2

    .line 593
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v1

    .line 601
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    .line 602
    return-void

    .line 596
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 597
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v1

    .line 598
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 599
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v2

    .line 598
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 449
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_1

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 458
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    iput-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 459
    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 460
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 479
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 481
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 482
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 483
    return-void
.end method

.method public setSpanCount(I)V
    .locals 3

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 430
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v0, :cond_1

    .line 431
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 432
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 433
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 434
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 435
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {v2, p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    aput-object v2, v1, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 440
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    .prologue
    .line 2037
    new-instance v0, Landroid/support/v7/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 2038
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2039
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2040
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x1

    .line 850
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v2, v5, :cond_1

    :cond_0
    move v1, v0

    .line 924
    :goto_0
    return v1

    .line 854
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 855
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 856
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    move v1, v0

    .line 857
    goto :goto_0

    .line 860
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v2, v1, :cond_f

    .line 863
    :cond_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 864
    if-eqz v2, :cond_c

    .line 867
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    .line 868
    :goto_1
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 869
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v0, v4, :cond_7

    .line 870
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_6

    .line 871
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v3

    .line 873
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0

    .line 868
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    goto :goto_1

    .line 875
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v3

    .line 877
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0

    .line 883
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    .line 884
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v0, v3, :cond_9

    .line 886
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 887
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 888
    :goto_2
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    .line 887
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 888
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_2

    .line 892
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 893
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v0, v3

    .line 894
    if-gez v0, :cond_a

    .line 895
    neg-int v0, v0

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    .line 898
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 899
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 900
    if-gez v0, :cond_b

    .line 901
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    .line 905
    :cond_b
    iput v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    .line 909
    :cond_c
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 910
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v2, v4, :cond_e

    .line 911
    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v2

    .line 913
    if-ne v2, v1, :cond_d

    move v0, v1

    :cond_d
    iput-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 914
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 918
    :goto_3
    iput-boolean v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto/16 :goto_0

    .line 916
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_3

    .line 921
    :cond_f
    iput v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 922
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_0
.end method

.method updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1

    .prologue
    .line 823
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 833
    const/4 v0, 0x0

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0
.end method

.method updateMeasureSpecs(I)V
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 930
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 931
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v0

    .line 930
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 932
    return-void
.end method
