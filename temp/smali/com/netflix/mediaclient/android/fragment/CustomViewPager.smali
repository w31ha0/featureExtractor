.class public Lcom/netflix/mediaclient/android/fragment/CustomViewPager;
.super Lcom/viewpagerindicator/android/osp/ViewPager;
.source "CustomViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomViewPager"


# instance fields
.field private final onPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;-><init>(Lcom/netflix/mediaclient/android/fragment/CustomViewPager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/viewpagerindicator/android/osp/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;-><init>(Lcom/netflix/mediaclient/android/fragment/CustomViewPager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->init()V

    .line 24
    return-void
.end method

.method private getListViewParent()Landroid/view/ViewParent;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 63
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "CustomViewPager"

    const-string/jumbo v1, "Created view pager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method


# virtual methods
.method protected addNewItem(II)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;-><init>()V

    .line 101
    iput p1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->widthFactor:F

    .line 105
    iget-object v1, v0, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    instance-of v1, v1, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 114
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_2

    .line 115
    :cond_1
    const-string/jumbo v1, "CustomViewPager"

    const-string/jumbo v2, "Add to end"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/viewpagerindicator/android/osp/ViewPager;->addNewItem(II)Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getOnPageChangeListener()Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onPageChangeListener:Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->getListViewParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 53
    :cond_0
    return v0
.end method

.method protected onPageSelected(I)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
