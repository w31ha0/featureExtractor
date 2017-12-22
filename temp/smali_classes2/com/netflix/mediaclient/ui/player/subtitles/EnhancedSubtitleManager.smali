.class public Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;
.super Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;
.source "EnhancedSubtitleManager.java"


# static fields
.field private static final DEFAULT_REGION_ID:Ljava/lang/String; = "DEFAULT"

.field private static final SAFE_DISPLAY_AREA_MARGIN:F = 5.0f


# instance fields
.field private mAspectRatio:Landroid/graphics/Point;

.field private mDefaultRegion:Landroid/widget/LinearLayout;

.field private mDefaultTextSize:F

.field private mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mDoNotDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

.field private mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeDisplayArea:Landroid/widget/RelativeLayout;

.field private mVisibleBlocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 403
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$1;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDoNotDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 98
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultTextSize:F

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mTransparent:I

    .line 105
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultTextSize:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setVisibilityForAllRegions(Z)V

    return-void
.end method

.method private addRegion(Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 292
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Add region "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 295
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setInitialRegionPosition(Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 298
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    .line 308
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v0

    .line 312
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 316
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toGravity(Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 318
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private calculateRegionSize(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Landroid/widget/LinearLayout;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;",
            "Landroid/widget/LinearLayout;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x2

    const/4 v3, 0x0

    .line 717
    move v2, v3

    move-object v1, v4

    move v5, v3

    move v6, v3

    .line 720
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 721
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    .line 722
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->toTextView(Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;)Landroid/widget/TextView;

    move-result-object v7

    .line 723
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getLineBreaks()I

    move-result v0

    if-lez v0, :cond_8

    .line 724
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v8, "This node belongs to its own line"

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {v1, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 727
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v5, v0

    .line 728
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 729
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    :cond_0
    move v0, v5

    move v1, v6

    move-object v5, v4

    .line 735
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->isNextNodeInSameLine(Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 736
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v8, "Next node is in same line, add current node to horizontal LL."

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-nez v5, :cond_1

    .line 738
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 739
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 741
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 747
    :cond_1
    :goto_2
    if-eqz v5, :cond_4

    .line 748
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v8, "Adding node to horizontal wrapper"

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 720
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    move-object v1, v5

    move v5, v0

    goto :goto_0

    .line 744
    :cond_3
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v8, "Next node is not in same line"

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 751
    :cond_4
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v8, "Adding node directly to a window region"

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 753
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v0, v6

    .line 754
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 755
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_3

    .line 760
    :cond_5
    if-eqz v1, :cond_7

    .line 761
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Last horizontal wrapper needs to be measured"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v1, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 763
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 764
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 765
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 776
    :cond_6
    :goto_4
    invoke-virtual {p2, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 782
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 768
    :cond_7
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No unmeasured last horizontal wrapper"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move v0, v5

    move-object v5, v1

    move v1, v6

    goto/16 :goto_1
.end method

.method private declared-synchronized clearDelayedPosts()V
    .locals 3

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 507
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 502
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 503
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 506
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private createRegions([Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    .locals 5

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setMarginsForSafeDisplayArea()V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    const-string/jumbo v1, "DEFAULT"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 266
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "createRegions:: no region found to be added!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    return-void

    .line 270
    :cond_2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 272
    aget-object v1, p1, v0

    .line 273
    if-nez v1, :cond_3

    .line 274
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createRegions:: region is null on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 278
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createRegions:: region ID is null on position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Ignore region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    :cond_4
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->addRegion(Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V

    goto :goto_1
.end method

.method private findRegionLayout(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 1052
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "findRegionLayout start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1057
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Block does not have region, put it in default region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    .line 1078
    :goto_0
    return-object v0

    .line 1063
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1064
    if-nez v0, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 1074
    :cond_2
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "LL for region found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findTextView(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 635
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 636
    if-nez v0, :cond_1

    .line 637
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Text view can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v4, "Text view found for removal"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 650
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Text view NOT found for removal for block "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_3
    return-object v2
.end method

.method private getHorizontalOffsetForDisplayArea()I
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    .line 1199
    if-nez v0, :cond_0

    .line 1200
    const/4 v0, 0x0

    .line 1202
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getHorizontalOffset()I

    move-result v0

    goto :goto_0
.end method

.method private getVerticalOffsetForDisplayArea()I
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    .line 1189
    if-nez v0, :cond_0

    .line 1190
    const/4 v0, 0x0

    .line 1192
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getVerticalOffset()I

    move-result v0

    goto :goto_0
.end method

.method private moveRegionInsideVisibleDisplayArea(Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;IILandroid/graphics/Rect;)Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 986
    new-instance v5, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;

    invoke-direct {v5}, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;-><init>()V

    .line 987
    iget v2, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    .line 988
    iget v4, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    .line 993
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lt v0, p3, :cond_0

    .line 994
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Original region is high enough, keep original measure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget v0, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->bottom:I

    .line 1001
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, p2, :cond_1

    .line 1002
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v6, "Original region is wide enough, keep original measure"

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget v1, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->right:I

    .line 1009
    :goto_1
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v7, "Check if region bottom is lower than display area"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_2

    .line 1011
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    sub-int/2addr v0, v6

    sub-int v0, v2, v0

    .line 1019
    :goto_2
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v6, "Check if region top is higher than display area"

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    if-gez v0, :cond_3

    .line 1022
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Top is 0"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1027
    :goto_3
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v6, "Check if region right is pass right of display area"

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 1029
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, v4, v1

    .line 1037
    :goto_4
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v4, "Check if region left is pass left of display area"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    if-gez v1, :cond_5

    .line 1040
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Left is 0"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :goto_5
    iput v3, v5, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    .line 1046
    iput v0, v5, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    .line 1048
    return-object v5

    .line 997
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Original region is NOT high enough, recalculate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget v0, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 1005
    :cond_1
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v6, "Original region is NOT wide enough, recalculate"

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget v1, p1, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    add-int/2addr v1, p2

    iget v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    goto/16 :goto_1

    .line 1016
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v6, "No need to change top"

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_2

    .line 1024
    :cond_3
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v6, "No need to change top"

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1034
    :cond_4
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "No need to change left"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_4

    .line 1042
    :cond_5
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v3, "No need to change left"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    goto :goto_5
.end method

.method private removeAll(Z)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->clearDelayedPosts()V

    .line 522
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeVisibleSubtitleBlocks(Z)V

    .line 523
    return-void
.end method

.method private removeBlock(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 588
    if-nez p1, :cond_1

    .line 589
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Block id can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 594
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Views are null or empty, nothing to remove!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    :cond_3
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 599
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, p3, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->findTextView(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeViews(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 604
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 605
    if-nez v0, :cond_5

    .line 606
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Text view can not be null!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized removeRegions()V
    .locals 3

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 226
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "removeRegions:: no region found to remove."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 232
    if-eqz v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 246
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private removeSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 4

    .prologue
    .line 566
    if-nez p1, :cond_0

    .line 567
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle block can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    .line 572
    if-nez v0, :cond_1

    .line 573
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove block from default region for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    const-string/jumbo v2, "DEFAULT"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string/jumbo v2, "DEFAULT"

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeBlock(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v1

    .line 577
    if-nez v1, :cond_2

    .line 578
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Region id can NOT be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove block from region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for block id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeBlock(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private removeViews(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    if-nez p1, :cond_1

    .line 616
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Region is null, can not remove views!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    if-nez p2, :cond_2

    .line 621
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Blocks are null, can not remove views!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 626
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing block from region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 628
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAspectRatioIfNeeded()V
    .locals 5

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->aspectRatioDimension:Landroid/graphics/Point;

    .line 210
    :cond_0
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "AspectRatio dimensions: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    if-nez v0, :cond_1

    .line 213
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "AspectRatio is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mAspectRatio:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mAspectRatio:Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "AspectRatio not changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "AspectRatio is changed, update"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mAspectRatio:Landroid/graphics/Point;

    .line 219
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->createMeasureTranslator(IILandroid/view/View;)Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    goto :goto_0
.end method

.method private setBackgroundColorToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 3

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 1090
    const/4 v1, 0x0

    .line 1091
    if-nez v0, :cond_0

    .line 1092
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "No user overides for window color"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1094
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1096
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowOpacity()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1104
    :goto_0
    if-nez v0, :cond_1

    .line 1105
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Sets region background color to transparent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1113
    :goto_1
    return-void

    .line 1100
    :cond_0
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "User overides found for window color"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowOpacity()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1111
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private setDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 112
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Find root display area"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->isDisplayAreaVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Create safe display area"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    .line 119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Create safe display area done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Create default region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    .line 126
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    const-string/jumbo v1, "DEFAULT"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private setInitialRegionPosition(Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 322
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Set initial region position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    .line 324
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v2

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;

    move-result-object v3

    .line 328
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v4, "Region w/h not know, wrap around content"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 357
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setMargins(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)V

    .line 361
    :cond_1
    return-object v0

    .line 333
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 334
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 348
    if-ge v5, v0, :cond_3

    .line 349
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v5, "Use wrap content for height"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 352
    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v6, "Use region height"

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private setMargins(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 366
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 367
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 368
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int v4, v1, v4

    .line 369
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    .line 376
    if-gez v1, :cond_0

    .line 377
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v6, "Bottom margin is less than 0, correct"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    add-int/2addr v2, v1

    move v1, v0

    .line 384
    :cond_0
    if-gez v2, :cond_2

    .line 385
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v6, "Top margin is less than 0, correct"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    add-int/2addr v1, v2

    .line 388
    if-gez v1, :cond_1

    .line 389
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Bottom margin is left than 0, after fixing top, set to 0"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 397
    :goto_0
    invoke-virtual {p1, v3, v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 398
    return-void

    :cond_1
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private setMarginsForSafeDisplayArea()V
    .locals 4

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 251
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Sets margin for safe display area"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 253
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 254
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 255
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSafeDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    return-void
.end method

.method private setRegionPosition(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    .locals 8

    .prologue
    .line 849
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Set region position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    .line 851
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v2

    .line 853
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 855
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v3, v1, v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;

    move-result-object v3

    .line 856
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 857
    :cond_0
    const-string/jumbo v4, "nf_subtitles_render"

    const-string/jumbo v5, "Region w/h not know, skip setting w/h"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setMargins(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)V

    .line 890
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 892
    return-void

    .line 860
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 861
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 869
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    .line 875
    if-ge v5, v6, :cond_3

    .line 876
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v6, "Use wrap content for height"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 878
    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 880
    :cond_3
    const-string/jumbo v6, "nf_subtitles_render"

    const-string/jumbo v7, "Use region height"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 882
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setVisibilityForAllRegions(Z)V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 492
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    .line 494
    :cond_1
    return-void
.end method

.method private shouldUpdateRegionPosition(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 905
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 907
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;

    move-result-object v1

    .line 908
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, p4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p3, :cond_0

    .line 909
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Text does not fit into region by height AND width. Update region position taking into account measured data."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :goto_0
    return v0

    .line 911
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, p4, :cond_1

    .line 912
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Text does not fit into region by height. Update region position taking into account measured data."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v1, p3, :cond_2

    .line 915
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Text does not fit into region by width. Update region position taking into account measured data."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 918
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Text fits into region."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    const/4 v1, 0x1

    .line 663
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 664
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Block is empty! Can not show!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    return-void

    .line 672
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->findRegionLayout(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 679
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 680
    if-eqz p2, :cond_2

    .line 681
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;-><init>(Landroid/view/View;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_2
    invoke-static {v2, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->isPositionDefinedInBlock(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 687
    :goto_1
    invoke-static {v2, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->setAlignmentToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    .line 690
    if-eqz v0, :cond_4

    .line 691
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v3, "Using extent/origin from original region, add wrapper region that will be wrapped around block and that will be used for background color for region"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 693
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->setAlignmentToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    .line 694
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    iget v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    iget v6, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 696
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 697
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v1, v0

    .line 702
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->calculateRegionSize(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Landroid/widget/LinearLayout;)Landroid/util/Pair;

    move-result-object v3

    .line 703
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, p1, v4, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->updatePositionIfNeeded(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;II)V

    .line 704
    invoke-direct {p0, v1, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setBackgroundColorToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    .line 705
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->displayed()V

    goto :goto_0

    .line 685
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 699
    :cond_4
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Using extent/origin from block, region will be wrapped around block and background color will be applied to it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_2
.end method

.method private showSubtitleBlocks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDoNotDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 423
    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->moveBlocksAppartIfNeeded(Ljava/util/List;)V

    .line 427
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->makeItVisible(Ljava/util/List;)V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDoNotDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 434
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Add displayed block to pending queue to be removed at end time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->handleDelayedSubtitleBlocks(Ljava/util/List;Z)V

    .line 436
    return-void
.end method

.method private toTextView(Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;)Landroid/widget/TextView;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1117
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getLineBreaks()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1123
    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    .line 1124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 1125
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 1127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getTextStyleDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 1130
    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->isStrokeTextViewRequired(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    new-instance v0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;-><init>(Landroid/content/Context;)V

    .line 1136
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1137
    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setSingleLine(Z)V

    .line 1138
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getUnderline()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1141
    const-string/jumbo v3, "nf_subtitles_render"

    const-string/jumbo v4, "Sets underline"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setUnderline(Z)V

    .line 1144
    :cond_0
    iget v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultTextSize:F

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyStyle(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V

    .line 1145
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setGravity(I)V

    .line 1148
    invoke-virtual {v0, v5, v5}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->measure(II)V

    .line 1154
    return-object v0

    .line 1133
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updatePositionIfNeeded(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;II)V
    .locals 6

    .prologue
    .line 795
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v1

    .line 798
    if-nez v1, :cond_1

    .line 799
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded no region, no update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "updatePositionIfNeeded start for real"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 805
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded no text blocks!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 809
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    .line 810
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-nez v0, :cond_4

    .line 811
    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded p missing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 815
    :cond_4
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v4

    .line 816
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v5

    .line 819
    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v5}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 820
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "updatePositionIfNeeded using block extent and origin overrides"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    .line 821
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->updateRegionPosition(Landroid/widget/LinearLayout;IILcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)V

    goto :goto_0

    .line 824
    :cond_5
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "updatePositionIfNeeded using region defaults for extent and origin"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setRegionPosition(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V

    .line 834
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->shouldUpdateRegionPosition(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->updateRegionPosition(Landroid/widget/LinearLayout;IILcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)V

    goto/16 :goto_0
.end method

.method private updateRegionPosition(Landroid/widget/LinearLayout;IILcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 927
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 933
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v1, p4, p5}, Lcom/netflix/mediaclient/util/SubtitleUtils;->createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;

    move-result-object v2

    .line 934
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v1, p4, p5}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getMarginsForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;

    move-result-object v1

    .line 935
    invoke-direct {p0, v1, p2, p3, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->moveRegionInsideVisibleDisplayArea(Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;IILandroid/graphics/Rect;)Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;

    move-result-object v3

    .line 941
    iget v1, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    iget v4, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-virtual {v0, v1, v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 944
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, p3, :cond_0

    .line 945
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v4, "Original region is high enough, keep original measure"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 947
    iget v1, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v1, v4

    .line 954
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, p2, :cond_1

    .line 955
    const-string/jumbo v4, "nf_subtitles_render"

    const-string/jumbo v5, "Original region is wide enough, keep original measure"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 957
    iget v4, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v4

    .line 965
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    iget v3, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    invoke-direct {v4, v5, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 966
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 968
    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 969
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    return-void

    .line 949
    :cond_0
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v4, "Original region is NOT high enough, recalculate"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVerticalRegionPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 951
    iget v1, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v1, v4

    goto :goto_0

    .line 959
    :cond_1
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v4, "Original region is NOT wide enough, recalculate"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHorizontalRegionPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 961
    iget v2, v3, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v2, v4

    goto :goto_1
.end method


# virtual methods
.method public canHandleSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1170
    if-nez p1, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return v0

    .line 1175
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq p1, v1, :cond_0

    .line 1179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Remove current and pending actions"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeAll(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearPendingUpdates()V
    .locals 0

    .prologue
    .line 1159
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->clearDelayedPosts()V

    .line 1160
    return-void
.end method

.method protected createRunnable(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;Z)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 441
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    .line 442
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;ZLcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    .line 463
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public declared-synchronized onPlayerOverlayVisibiltyChange(Z)V
    .locals 5

    .prologue
    .line 1213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1215
    if-eqz p1, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getDisplayAreaMarginTop()I

    move-result v1

    .line 1218
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getDisplayAreaMarginBottom()I

    move-result v2

    .line 1222
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getHorizontalOffsetForDisplayArea()I

    move-result v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getHorizontalOffsetForDisplayArea()I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1227
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeVisibleSubtitleBlocks(Z)V

    .line 1228
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    :goto_1
    monitor-exit p0

    return-void

    .line 1224
    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Reset all margins to display area on not visible"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getHorizontalOffsetForDisplayArea()I

    move-result v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getVerticalOffsetForDisplayArea()I

    move-result v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getHorizontalOffsetForDisplayArea()I

    move-result v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->getVerticalOffsetForDisplayArea()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1231
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Display area is null, unable to set margins!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 2

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "EnhancedSubtitleManager:: update subtitle data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-nez p1, :cond_1

    .line 148
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle data is null. This should never happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-nez v0, :cond_2

    .line 153
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle parser is null. This should never happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Try to set defaults. They were not initialized before"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setDefaults()V

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultsInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Initialization was ok, proceed with subtitles."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeAll(Z)V

    .line 180
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->setAspectRatioIfNeeded()V

    .line 182
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 196
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getDisplayNowBlocks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->showSubtitleBlocks(Ljava/util/List;)V

    .line 197
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getDisplayLaterBlocks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->handleDelayedSubtitleBlocks(Ljava/util/List;Z)V

    goto :goto_0

    .line 174
    :cond_4
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Initialization was NOT ok, exit."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    .line 192
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeRegions()V

    .line 193
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getRegions()[Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->createRegions([Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onSubtitleRemove()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Remove all subtitles."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->removeAll(Z)V

    .line 140
    return-void
.end method

.method protected declared-synchronized removeVisibleSubtitleBlocks(Z)V
    .locals 3

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mTransparent:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    if-eqz p1, :cond_2

    .line 536
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 542
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mRegions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 547
    if-eqz v0, :cond_1

    .line 552
    iget v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mTransparent:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 553
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    if-eqz p1, :cond_3

    .line 555
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 538
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mDefaultRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    goto :goto_0

    .line 557
    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    goto :goto_1

    .line 561
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSubtitleVisibility(Z)V
    .locals 2

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mVisibilitySetting:Z

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$3;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
