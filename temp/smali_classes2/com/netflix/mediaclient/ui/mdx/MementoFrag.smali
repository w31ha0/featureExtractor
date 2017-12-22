.class public Lcom/netflix/mediaclient/ui/mdx/MementoFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "MementoFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# static fields
.field public static final PAGER_INDEX:Ljava/lang/String; = "pagerIndex"

.field public static final POS_TAG:Ljava/lang/String; = "POS_TAG"

.field public static final SHOW_RDP:Ljava/lang/String; = "showRDP"

.field private static final TAG:Ljava/lang/String; = "MementoFrag"


# instance fields
.field private actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;"
        }
    .end annotation
.end field

.field private currentTint:I

.field protected final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private isLoading:Z

.field private leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private pager:Lcom/viewpagerindicator/android/osp/ViewPager;

.field private pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private relatedTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:J

.field resetPager:Z

.field private stills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;"
        }
    .end annotation
.end field

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tintColors:[I

.field private tintIndex:I

.field videoCharacterRoles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->stills:Ljava/util/List;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintColors:[I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->currentTint:I

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetPager:Z

    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        -0x45000000    # -0.001953125f
        -0x4410a1d3
        -0x447b57c2
        -0x441f66d9
        -0x44f18180
    .end array-data
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->showStandardViews()V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->currentTint:I

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetTranslation(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintColors:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    return p1
.end method

.method static synthetic access$1408(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tintIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->showRDP(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->toggleTabs(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->requestId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->stills:Ljava/util/List;

    return-object p1
.end method

.method private fetchActorDetailsAndRelated()V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 203
    const-string/jumbo v0, "MementoFrag"

    const-string/jumbo v1, "Manager is null - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isLoading:Z

    .line 208
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->requestId:J

    .line 209
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->hideStandardViews()V

    .line 211
    const-string/jumbo v0, "MementoFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetching data for actor ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 118
    const v0, 0x7f100247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 119
    const v0, 0x7f100245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    .line 120
    return-void
.end method

.method private hideStandardViews()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->setVisibility(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(I)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setAlpha(F)V

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 237
    :cond_4
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->initTabs()V

    .line 124
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->initPager()V

    .line 125
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 126
    return-void
.end method

.method private initPager()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;)V

    .line 261
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    .line 309
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    const/4 v1, 0x0

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    invoke-virtual {v0, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setPageTransformer(ZLcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    .line 336
    :cond_1
    return-void
.end method

.method private initTabs()V
    .locals 6

    .prologue
    const v5, 0x7f10024a

    const v4, 0x7f0300a2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$TabListener;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 194
    :cond_0
    return-void
.end method

.method private isRDPShowing()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f100103

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 176
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 177
    goto :goto_0

    :cond_1
    move v0, v1

    .line 179
    goto :goto_0
.end method

.method private resetTranslation(I)V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-nez v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "POS_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_0

    .line 531
    const v0, 0x7f100108

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 532
    if-nez v0, :cond_2

    .line 533
    const v0, 0x7f10010d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 536
    :cond_2
    if-eqz v0, :cond_0

    .line 537
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 92
    if-eqz p1, :cond_0

    .line 94
    const-string/jumbo v0, "showRDP"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    const-string/jumbo v1, "pagerIndex"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 97
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;IZ)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_0
    return-void
.end method

.method private showRDP(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100103

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 159
    const v2, 0x7f050003

    const v3, 0x7f050004

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 160
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 162
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setStillImageHeight(I)V

    .line 163
    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->currentTint:I

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setImageTint(I)V

    .line 165
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setVideoId(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setActorId(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->reload()V

    .line 169
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method private showStandardViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setVisibility(I)V

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setAlpha(F)V

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 443
    :cond_3
    :goto_0
    return-void

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setAlpha(F)V

    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleTabs(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetPager:Z

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->relatedTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->actors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 351
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->resetPager:Z

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0
.end method


# virtual methods
.method protected adjustHeight(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 669
    const/4 v0, 0x1

    .line 670
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 671
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 673
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 674
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 675
    return-void

    .line 674
    :cond_0
    const/high16 v0, 0x3f100000    # 0.5625f

    goto :goto_0
.end method

.method public fetchData()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method getStill(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/model/branches/FalkorActorStill;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->stills:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 464
    :goto_0
    return-object v0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->stills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorActorStill;

    .line 453
    iget-object v3, v0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v3, v3, Lcom/netflix/model/branches/FalkorActorStill$Summary;->videoId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 457
    iget-object v3, v0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v3, v3, Lcom/netflix/model/branches/FalkorActorStill$Summary;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v3, v3, Lcom/netflix/model/branches/FalkorActorStill$Summary;->personId:Ljava/lang/String;

    .line 458
    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 681
    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 81
    const-string/jumbo v0, "MementoFrag"

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const v0, 0x7f0300a0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->findViews(Landroid/view/View;)V

    .line 85
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->init(Landroid/view/View;)V

    .line 86
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method

.method public onRetryRequested()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isRDPShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v0, "showRDP"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    :cond_0
    const-string/jumbo v0, "pagerIndex"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method public setVideoCharacterRoles(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoCharacterRoles:Ljava/util/Set;

    .line 369
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoId:Ljava/lang/String;

    .line 364
    return-void
.end method
