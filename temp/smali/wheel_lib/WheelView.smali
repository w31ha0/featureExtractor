.class public Lwheel_lib/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lwheel_lib/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lwheel_lib/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private recycle:Lwheel_lib/WheelRecycle;

.field private scroller:Lwheel_lib/WheelScroller;

.field scrollingListener:Lwheel_lib/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lwheel_lib/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lwheel_lib/WheelView;->SHADOWS_COLORS:[I

    .line 50
    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    iput v1, p0, Lwheel_lib/WheelView;->currentItem:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lwheel_lib/WheelView;->visibleItems:I

    .line 59
    iput v1, p0, Lwheel_lib/WheelView;->itemHeight:I

    .line 74
    iput-boolean v1, p0, Lwheel_lib/WheelView;->isCyclic:Z

    .line 86
    new-instance v0, Lwheel_lib/WheelRecycle;

    invoke-direct {v0, p0}, Lwheel_lib/WheelRecycle;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->changingListeners:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->scrollingListeners:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->clickingListeners:Ljava/util/List;

    .line 126
    new-instance v0, Lwheel_lib/WheelView$1;

    invoke-direct {v0, p0}, Lwheel_lib/WheelView$1;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->scrollingListener:Lwheel_lib/WheelScroller$ScrollingListener;

    .line 199
    new-instance v0, Lwheel_lib/WheelView$2;

    invoke-direct {v0, p0}, Lwheel_lib/WheelView$2;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 114
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->initData(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v1, p0, Lwheel_lib/WheelView;->currentItem:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lwheel_lib/WheelView;->visibleItems:I

    .line 59
    iput v1, p0, Lwheel_lib/WheelView;->itemHeight:I

    .line 74
    iput-boolean v1, p0, Lwheel_lib/WheelView;->isCyclic:Z

    .line 86
    new-instance v0, Lwheel_lib/WheelRecycle;

    invoke-direct {v0, p0}, Lwheel_lib/WheelRecycle;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->changingListeners:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->scrollingListeners:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->clickingListeners:Ljava/util/List;

    .line 126
    new-instance v0, Lwheel_lib/WheelView$1;

    invoke-direct {v0, p0}, Lwheel_lib/WheelView$1;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->scrollingListener:Lwheel_lib/WheelScroller$ScrollingListener;

    .line 199
    new-instance v0, Lwheel_lib/WheelView$2;

    invoke-direct {v0, p0}, Lwheel_lib/WheelView$2;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 106
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->initData(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput v1, p0, Lwheel_lib/WheelView;->currentItem:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lwheel_lib/WheelView;->visibleItems:I

    .line 59
    iput v1, p0, Lwheel_lib/WheelView;->itemHeight:I

    .line 74
    iput-boolean v1, p0, Lwheel_lib/WheelView;->isCyclic:Z

    .line 86
    new-instance v0, Lwheel_lib/WheelRecycle;

    invoke-direct {v0, p0}, Lwheel_lib/WheelRecycle;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->changingListeners:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->scrollingListeners:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lwheel_lib/WheelView;->clickingListeners:Ljava/util/List;

    .line 126
    new-instance v0, Lwheel_lib/WheelView$1;

    invoke-direct {v0, p0}, Lwheel_lib/WheelView$1;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->scrollingListener:Lwheel_lib/WheelScroller$ScrollingListener;

    .line 199
    new-instance v0, Lwheel_lib/WheelView$2;

    invoke-direct {v0, p0}, Lwheel_lib/WheelView$2;-><init>(Lwheel_lib/WheelView;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 98
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->initData(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lwheel_lib/WheelView;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lwheel_lib/WheelView;->isScrollingPerformed:Z

    return-void
.end method

.method static synthetic access$1(Lwheel_lib/WheelView;I)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$2(Lwheel_lib/WheelView;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$3(Lwheel_lib/WheelView;I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    return-void
.end method

.method static synthetic access$4(Lwheel_lib/WheelView;)Lwheel_lib/WheelScroller;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lwheel_lib/WheelView;->scroller:Lwheel_lib/WheelScroller;

    return-object v0
.end method

.method static synthetic access$5(Lwheel_lib/WheelView;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lwheel_lib/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method private addViewItem(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "first"    # Z

    .prologue
    const/4 v1, 0x0

    .line 819
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 820
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 821
    if-eqz p2, :cond_1

    .line 822
    iget-object v2, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 827
    :goto_0
    const/4 v1, 0x1

    .line 830
    :cond_0
    return v1

    .line 824
    :cond_1
    iget-object v1, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    .line 797
    iget-object v2, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 798
    iget-object v2, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    iget-object v3, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lwheel_lib/WheelView;->firstItem:I

    new-instance v5, Lwheel_lib/ItemsRange;

    invoke-direct {v5}, Lwheel_lib/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lwheel_lib/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILwheel_lib/ItemsRange;)I

    .line 804
    :goto_0
    iget v2, p0, Lwheel_lib/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 805
    .local v0, "addItems":I
    iget v2, p0, Lwheel_lib/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lwheel_lib/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 810
    return-void

    .line 800
    .end local v0    # "addItems":I
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lwheel_lib/WheelView;->createItemsLayout()V

    goto :goto_0

    .line 806
    .restart local v0    # "addItems":I
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lwheel_lib/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 807
    iput v1, p0, Lwheel_lib/WheelView;->firstItem:I

    .line 805
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 474
    invoke-direct {p0}, Lwheel_lib/WheelView;->initResourcesIfNecessary()V

    .line 477
    iget-object v1, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    iget-object v1, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 479
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 478
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 480
    iget-object v1, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 482
    .local v0, "width":I
    if-ne p2, v5, :cond_1

    .line 483
    move v0, p1

    .line 495
    :cond_0
    :goto_0
    iget-object v1, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x14

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 496
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 495
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 498
    return v0

    .line 485
    :cond_1
    add-int/lit8 v0, v0, 0x14

    .line 488
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 490
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 491
    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 788
    iget-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 790
    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 8
    .param p1, "delta"    # I

    .prologue
    .line 632
    iget v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    .line 634
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v3

    .line 635
    .local v3, "itemHeight":I
    iget v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    div-int v0, v6, v3

    .line 637
    .local v0, "count":I
    iget v6, p0, Lwheel_lib/WheelView;->currentItem:I

    sub-int v5, v6, v0

    .line 638
    .local v5, "pos":I
    iget-object v6, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    invoke-interface {v6}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 640
    .local v2, "itemCount":I
    iget v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    rem-int v1, v6, v3

    .line 641
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_0

    .line 642
    const/4 v1, 0x0

    .line 644
    :cond_0
    iget-boolean v6, p0, Lwheel_lib/WheelView;->isCyclic:Z

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 645
    if-lez v1, :cond_4

    .line 646
    add-int/lit8 v5, v5, -0x1

    .line 647
    add-int/lit8 v0, v0, 0x1

    .line 653
    :cond_1
    :goto_0
    if-ltz v5, :cond_5

    .line 656
    rem-int/2addr v5, v2

    .line 674
    :cond_2
    :goto_1
    iget v4, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    .line 675
    .local v4, "offset":I
    iget v6, p0, Lwheel_lib/WheelView;->currentItem:I

    if-eq v5, v6, :cond_a

    .line 676
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lwheel_lib/WheelView;->setCurrentItem(IZ)V

    .line 682
    :goto_2
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    .line 683
    iget v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 684
    iget v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    .line 686
    :cond_3
    return-void

    .line 648
    .end local v4    # "offset":I
    :cond_4
    if-gez v1, :cond_1

    .line 649
    add-int/lit8 v5, v5, 0x1

    .line 650
    add-int/lit8 v0, v0, -0x1

    .line 653
    goto :goto_0

    .line 654
    :cond_5
    add-int/2addr v5, v2

    goto :goto_0

    .line 659
    :cond_6
    if-gez v5, :cond_7

    .line 660
    iget v0, p0, Lwheel_lib/WheelView;->currentItem:I

    .line 661
    const/4 v5, 0x0

    .line 662
    goto :goto_1

    :cond_7
    if-lt v5, v2, :cond_8

    .line 663
    iget v6, p0, Lwheel_lib/WheelView;->currentItem:I

    sub-int/2addr v6, v2

    add-int/lit8 v0, v6, 0x1

    .line 664
    add-int/lit8 v5, v2, -0x1

    .line 665
    goto :goto_1

    :cond_8
    if-lez v5, :cond_9

    if-lez v1, :cond_9

    .line 666
    add-int/lit8 v5, v5, -0x1

    .line 667
    add-int/lit8 v0, v0, 0x1

    .line 668
    goto :goto_1

    :cond_9
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_2

    if-gez v1, :cond_2

    .line 669
    add-int/lit8 v5, v5, 0x1

    .line 670
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 678
    .restart local v4    # "offset":I
    :cond_a
    invoke-virtual {p0}, Lwheel_lib/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 589
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 590
    .local v0, "center":I
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 591
    .local v1, "offset":I
    iget-object v2, p0, Lwheel_lib/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getWidth()I

    move-result v5

    add-int v6, v0, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 592
    iget-object v2, p0, Lwheel_lib/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 593
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 576
    iget v1, p0, Lwheel_lib/WheelView;->currentItem:I

    iget v2, p0, Lwheel_lib/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 577
    .local v0, "top":I
    const/high16 v1, 0x41200000    # 10.0f

    neg-int v2, v0

    iget v3, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 579
    iget-object v1, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 582
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 561
    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 562
    .local v0, "height":I
    iget-object v1, p0, Lwheel_lib/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 563
    iget-object v1, p0, Lwheel_lib/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 565
    iget-object v1, p0, Lwheel_lib/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 566
    iget-object v1, p0, Lwheel_lib/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 567
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v2, 0x0

    .line 441
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lwheel_lib/WheelView;->itemHeight:I

    .line 445
    :cond_0
    iget v1, p0, Lwheel_lib/WheelView;->itemHeight:I

    iget v2, p0, Lwheel_lib/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    iget v2, p0, Lwheel_lib/WheelView;->itemHeight:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x32

    sub-int v0, v1, v2

    .line 447
    .local v0, "desired":I
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 455
    iget v0, p0, Lwheel_lib/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 456
    iget v0, p0, Lwheel_lib/WheelView;->itemHeight:I

    .line 464
    :goto_0
    return v0

    .line 459
    :cond_0
    iget-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lwheel_lib/WheelView;->itemHeight:I

    .line 461
    iget v0, p0, Lwheel_lib/WheelView;->itemHeight:I

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lwheel_lib/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 849
    iget-object v1, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 850
    :cond_0
    const/4 v1, 0x0

    .line 862
    :goto_0
    return-object v1

    .line 852
    :cond_1
    iget-object v1, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 853
    .local v0, "count":I
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 854
    iget-object v1, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    iget-object v2, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    invoke-virtual {v2}, Lwheel_lib/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lwheel_lib/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 857
    :cond_2
    add-int/2addr p1, v0

    .line 856
    :cond_3
    if-ltz p1, :cond_2

    .line 861
    rem-int/2addr p1, v0

    .line 862
    iget-object v1, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    iget-object v2, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    invoke-virtual {v2}, Lwheel_lib/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lwheel_lib/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getItemsRange()Lwheel_lib/ItemsRange;
    .locals 7

    .prologue
    .line 703
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 704
    const/4 v3, 0x0

    .line 726
    :goto_0
    return-object v3

    .line 707
    :cond_0
    iget v2, p0, Lwheel_lib/WheelView;->currentItem:I

    .line 708
    .local v2, "first":I
    const/4 v0, 0x1

    .line 710
    .local v0, "count":I
    :goto_1
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 715
    iget v3, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_2

    .line 716
    iget v3, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    if-lez v3, :cond_1

    .line 717
    add-int/lit8 v2, v2, -0x1

    .line 719
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 722
    iget v3, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 723
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 724
    int-to-double v3, v0

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 726
    .end local v1    # "emptyItems":I
    :cond_2
    new-instance v3, Lwheel_lib/ItemsRange;

    invoke-direct {v3, v2, v0}, Lwheel_lib/ItemsRange;-><init>(II)V

    goto :goto_0

    .line 711
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 712
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    new-instance v0, Lwheel_lib/WheelScroller;

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lwheel_lib/WheelView;->scrollingListener:Lwheel_lib/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lwheel_lib/WheelScroller;-><init>(Landroid/content/Context;Lwheel_lib/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lwheel_lib/WheelView;->scroller:Lwheel_lib/WheelScroller;

    .line 123
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lwheel_lib/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lwheel_lib/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 422
    :cond_0
    iget-object v0, p0, Lwheel_lib/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 423
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lwheel_lib/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lwheel_lib/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 426
    :cond_1
    iget-object v0, p0, Lwheel_lib/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 427
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lwheel_lib/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lwheel_lib/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 430
    :cond_2
    const v0, 0x7f020039

    invoke-virtual {p0, v0}, Lwheel_lib/WheelView;->setBackgroundResource(I)V

    .line 431
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 839
    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 840
    iget-boolean v0, p0, Lwheel_lib/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 839
    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layout(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 537
    add-int/lit8 v0, p1, -0x14

    .line 539
    .local v0, "itemsWidth":I
    iget-object v1, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 540
    return-void
.end method

.method private rebuildItems()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 735
    const/4 v3, 0x0

    .line 736
    .local v3, "updated":Z
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemsRange()Lwheel_lib/ItemsRange;

    move-result-object v2

    .line 737
    .local v2, "range":Lwheel_lib/ItemsRange;
    iget-object v6, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 738
    iget-object v6, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    iget-object v7, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lwheel_lib/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lwheel_lib/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILwheel_lib/ItemsRange;)I

    move-result v0

    .line 739
    .local v0, "first":I
    iget v6, p0, Lwheel_lib/WheelView;->firstItem:I

    if-eq v6, v0, :cond_2

    move v3, v4

    .line 740
    :goto_0
    iput v0, p0, Lwheel_lib/WheelView;->firstItem:I

    .line 746
    .end local v0    # "first":I
    :goto_1
    if-nez v3, :cond_0

    .line 747
    iget v6, p0, Lwheel_lib/WheelView;->firstItem:I

    invoke-virtual {v2}, Lwheel_lib/ItemsRange;->getFirst()I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual {v2}, Lwheel_lib/ItemsRange;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_4

    move v3, v5

    .line 750
    :cond_0
    :goto_2
    iget v6, p0, Lwheel_lib/WheelView;->firstItem:I

    invoke-virtual {v2}, Lwheel_lib/ItemsRange;->getFirst()I

    move-result v7

    if-le v6, v7, :cond_6

    iget v6, p0, Lwheel_lib/WheelView;->firstItem:I

    invoke-virtual {v2}, Lwheel_lib/ItemsRange;->getLast()I

    move-result v7

    if-gt v6, v7, :cond_6

    .line 751
    iget v6, p0, Lwheel_lib/WheelView;->firstItem:I

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_3
    invoke-virtual {v2}, Lwheel_lib/ItemsRange;->getFirst()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 761
    .end local v1    # "i":I
    :cond_1
    :goto_4
    iget v0, p0, Lwheel_lib/WheelView;->firstItem:I

    .line 762
    .restart local v0    # "first":I
    iget-object v4, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {v2}, Lwheel_lib/ItemsRange;->getCount()I

    move-result v4

    if-lt v1, v4, :cond_7

    .line 767
    iput v0, p0, Lwheel_lib/WheelView;->firstItem:I

    .line 769
    return v3

    .end local v1    # "i":I
    :cond_2
    move v3, v5

    .line 739
    goto :goto_0

    .line 742
    .end local v0    # "first":I
    :cond_3
    invoke-direct {p0}, Lwheel_lib/WheelView;->createItemsLayout()V

    .line 743
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 747
    goto :goto_2

    .line 752
    .restart local v1    # "i":I
    :cond_5
    invoke-direct {p0, v1, v4}, Lwheel_lib/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 755
    iput v1, p0, Lwheel_lib/WheelView;->firstItem:I

    .line 751
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 758
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v2}, Lwheel_lib/ItemsRange;->getFirst()I

    move-result v4

    iput v4, p0, Lwheel_lib/WheelView;->firstItem:I

    goto :goto_4

    .line 763
    .restart local v0    # "first":I
    .restart local v1    # "i":I
    :cond_7
    iget v4, p0, Lwheel_lib/WheelView;->firstItem:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lwheel_lib/WheelView;->addViewItem(IZ)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_8

    .line 764
    add-int/lit8 v0, v0, 0x1

    .line 762
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 776
    invoke-direct {p0}, Lwheel_lib/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lwheel_lib/WheelView;->calculateLayoutWidth(II)I

    .line 778
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lwheel_lib/WheelView;->layout(II)V

    .line 780
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lwheel_lib/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lwheel_lib/OnWheelChangedListener;

    .prologue
    .line 234
    iget-object v0, p0, Lwheel_lib/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public addClickingListener(Lwheel_lib/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lwheel_lib/OnWheelClickedListener;

    .prologue
    .line 295
    iget-object v0, p0, Lwheel_lib/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method public addScrollingListener(Lwheel_lib/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lwheel_lib/OnWheelScrollListener;

    .prologue
    .line 261
    iget-object v0, p0, Lwheel_lib/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lwheel_lib/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lwheel_lib/adapters/WheelViewAdapter;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lwheel_lib/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .param p1, "clearCaches"    # Z

    .prologue
    .line 400
    if-eqz p1, :cond_2

    .line 401
    iget-object v0, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    invoke-virtual {v0}, Lwheel_lib/WheelRecycle;->clearAll()V

    .line 402
    iget-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    .line 411
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lwheel_lib/WheelView;->invalidate()V

    .line 412
    return-void

    .line 406
    :cond_2
    iget-object v0, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lwheel_lib/WheelView;->recycle:Lwheel_lib/WheelRecycle;

    iget-object v1, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lwheel_lib/WheelView;->firstItem:I

    new-instance v3, Lwheel_lib/ItemsRange;

    invoke-direct {v3}, Lwheel_lib/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lwheel_lib/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILwheel_lib/ItemsRange;)I

    goto :goto_0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lwheel_lib/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 251
    iget-object v1, p0, Lwheel_lib/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    return-void

    .line 251
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwheel_lib/OnWheelChangedListener;

    .line 252
    .local v0, "listener":Lwheel_lib/OnWheelChangedListener;
    invoke-interface {v0, p0, p1, p2}, Lwheel_lib/OnWheelChangedListener;->onChanged(Lwheel_lib/WheelView;II)V

    goto :goto_0
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lwheel_lib/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    return-void

    .line 310
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwheel_lib/OnWheelClickedListener;

    .line 311
    .local v0, "listener":Lwheel_lib/OnWheelClickedListener;
    invoke-interface {v0, p0, p1}, Lwheel_lib/OnWheelClickedListener;->onItemClicked(Lwheel_lib/WheelView;I)V

    goto :goto_0
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lwheel_lib/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    return-void

    .line 285
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwheel_lib/OnWheelScrollListener;

    .line 286
    .local v0, "listener":Lwheel_lib/OnWheelScrollListener;
    invoke-interface {v0, p0}, Lwheel_lib/OnWheelScrollListener;->onScrollingFinished(Lwheel_lib/WheelView;)V

    goto :goto_0
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lwheel_lib/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    return-void

    .line 276
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwheel_lib/OnWheelScrollListener;

    .line 277
    .local v0, "listener":Lwheel_lib/OnWheelScrollListener;
    invoke-interface {v0, p0}, Lwheel_lib/OnWheelScrollListener;->onScrollingStarted(Lwheel_lib/WheelView;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 546
    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 547
    invoke-direct {p0}, Lwheel_lib/WheelView;->updateView()V

    .line 549
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 550
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 553
    :cond_0
    invoke-direct {p0, p1}, Lwheel_lib/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    .line 554
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 528
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lwheel_lib/WheelView;->layout(II)V

    .line 529
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 503
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 504
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 505
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 506
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 508
    .local v2, "heightSize":I
    invoke-direct {p0}, Lwheel_lib/WheelView;->buildViewForMeasuring()V

    .line 510
    invoke-direct {p0, v5, v4}, Lwheel_lib/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 513
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 514
    move v0, v2

    .line 523
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lwheel_lib/WheelView;->setMeasuredDimension(II)V

    .line 524
    return-void

    .line 516
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lwheel_lib/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lwheel_lib/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 518
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 519
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 597
    invoke-virtual {p0}, Lwheel_lib/WheelView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getViewAdapter()Lwheel_lib/adapters/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v2

    .line 601
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 624
    :cond_2
    :goto_1
    iget-object v2, p0, Lwheel_lib/WheelView;->scroller:Lwheel_lib/WheelScroller;

    invoke-virtual {v2, p1}, Lwheel_lib/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 603
    :pswitch_0
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 604
    invoke-virtual {p0}, Lwheel_lib/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 609
    :pswitch_1
    iget-boolean v2, p0, Lwheel_lib/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lwheel_lib/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 611
    .local v0, "distance":I
    if-lez v0, :cond_3

    .line 612
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 616
    :goto_2
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 617
    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lwheel_lib/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lwheel_lib/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 618
    iget v2, p0, Lwheel_lib/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lwheel_lib/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 614
    .end local v1    # "items":I
    :cond_3
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeChangingListener(Lwheel_lib/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lwheel_lib/OnWheelChangedListener;

    .prologue
    .line 242
    iget-object v0, p0, Lwheel_lib/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public removeClickingListener(Lwheel_lib/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lwheel_lib/OnWheelClickedListener;

    .prologue
    .line 303
    iget-object v0, p0, Lwheel_lib/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public removeScrollingListener(Lwheel_lib/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lwheel_lib/OnWheelScrollListener;

    .prologue
    .line 269
    iget-object v0, p0, Lwheel_lib/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 694
    invoke-direct {p0}, Lwheel_lib/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 695
    .local v0, "distance":I
    iget-object v1, p0, Lwheel_lib/WheelView;->scroller:Lwheel_lib/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lwheel_lib/WheelScroller;->scroll(II)V

    .line 696
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lwheel_lib/WheelView;->setCurrentItem(IZ)V

    .line 376
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 331
    iget-object v4, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v4, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 336
    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    .line 337
    :cond_2
    iget-boolean v4, p0, Lwheel_lib/WheelView;->isCyclic:Z

    if-eqz v4, :cond_0

    .line 338
    :goto_1
    if-ltz p1, :cond_5

    .line 341
    rem-int/2addr p1, v0

    .line 346
    :cond_3
    iget v4, p0, Lwheel_lib/WheelView;->currentItem:I

    if-eq p1, v4, :cond_0

    .line 347
    if-eqz p2, :cond_7

    .line 348
    iget v4, p0, Lwheel_lib/WheelView;->currentItem:I

    sub-int v1, p1, v4

    .line 349
    .local v1, "itemsToScroll":I
    iget-boolean v4, p0, Lwheel_lib/WheelView;->isCyclic:Z

    if-eqz v4, :cond_4

    .line 350
    iget v4, p0, Lwheel_lib/WheelView;->currentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lwheel_lib/WheelView;->currentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 351
    .local v3, "scroll":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 352
    if-gez v1, :cond_6

    move v1, v3

    .line 355
    .end local v3    # "scroll":I
    :cond_4
    :goto_2
    invoke-virtual {p0, v1, v6}, Lwheel_lib/WheelView;->scroll(II)V

    goto :goto_0

    .line 339
    .end local v1    # "itemsToScroll":I
    :cond_5
    add-int/2addr p1, v0

    goto :goto_1

    .line 352
    .restart local v1    # "itemsToScroll":I
    .restart local v3    # "scroll":I
    :cond_6
    neg-int v1, v3

    goto :goto_2

    .line 357
    .end local v1    # "itemsToScroll":I
    .end local v3    # "scroll":I
    :cond_7
    iput v6, p0, Lwheel_lib/WheelView;->scrollingOffset:I

    .line 359
    iget v2, p0, Lwheel_lib/WheelView;->currentItem:I

    .line 360
    .local v2, "old":I
    iput p1, p0, Lwheel_lib/WheelView;->currentItem:I

    .line 362
    iget v4, p0, Lwheel_lib/WheelView;->currentItem:I

    invoke-virtual {p0, v2, v4}, Lwheel_lib/WheelView;->notifyChangingListeners(II)V

    .line 364
    invoke-virtual {p0}, Lwheel_lib/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 1
    .param p1, "isCyclic"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lwheel_lib/WheelView;->isCyclic:Z

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwheel_lib/WheelView;->invalidateWheel(Z)V

    .line 393
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 167
    iget-object v0, p0, Lwheel_lib/WheelView;->scroller:Lwheel_lib/WheelScroller;

    invoke-virtual {v0, p1}, Lwheel_lib/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    return-void
.end method

.method public setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V
    .locals 2
    .param p1, "viewAdapter"    # Lwheel_lib/adapters/WheelViewAdapter;

    .prologue
    .line 218
    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    iget-object v1, p0, Lwheel_lib/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lwheel_lib/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 221
    :cond_0
    iput-object p1, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    .line 222
    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lwheel_lib/WheelView;->viewAdapter:Lwheel_lib/adapters/WheelViewAdapter;

    iget-object v1, p0, Lwheel_lib/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lwheel_lib/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 226
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwheel_lib/WheelView;->invalidateWheel(Z)V

    .line 227
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 187
    iput p1, p0, Lwheel_lib/WheelView;->visibleItems:I

    .line 188
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lwheel_lib/WheelView;->scroller:Lwheel_lib/WheelScroller;

    invoke-virtual {v0}, Lwheel_lib/WheelScroller;->stopScrolling()V

    .line 870
    return-void
.end method
