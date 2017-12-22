.class abstract Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;
.super Ljava/lang/Object;
.source "BaseSubtitleManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;


# static fields
.field protected static final H_REGION_PADDING:I = 0x5

.field protected static final PLAYER_PADDING_PHONE:I = 0x2e

.field protected static final PLAYER_PADDING_TABLET:I = 0x3b

.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_render"

.field protected static final TOP_PADDING:I = 0x5

.field protected static final V_REGION_PADDING:I = 0x1


# instance fields
.field protected mBottomPanelHeight:I

.field protected mBottomPanelPadding:I

.field protected mDisplayArea:Landroid/widget/RelativeLayout;

.field protected mHandler:Landroid/os/Handler;

.field protected mHorizontalRegionPadding:I

.field protected mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

.field protected mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

.field protected mSubtitleParserId:Ljava/lang/Integer;

.field protected mTopPanel:Landroid/view/View;

.field protected mTopPanelPadding:I

.field protected mTransparent:I

.field protected mVerticalRegionPadding:I

.field protected mVisibilitySetting:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPendingActions:Ljava/util/List;

    .line 105
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Player screen is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Create handler."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mHandler:Landroid/os/Handler;

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 115
    const v0, 0x7f1002be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 117
    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Display area w/h are 0, display area is not visible yet!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    .line 121
    invoke-static {v2, v5}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mHorizontalRegionPadding:I

    .line 122
    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mVerticalRegionPadding:I

    .line 123
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3b

    :goto_0
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelPadding:I

    .line 124
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a01b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelHeight:I

    .line 125
    invoke-static {v2, v5}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanelPadding:I

    .line 126
    const v0, 0x7f1002c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanel:Landroid/view/View;

    .line 127
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mVisibilitySetting:Z

    .line 128
    return-void

    .line 123
    :cond_3
    const/16 v0, 0x2e

    goto :goto_0
.end method


# virtual methods
.method protected abstract createRunnable(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;Z)Ljava/lang/Runnable;
.end method

.method public getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayAreaMarginBottom()I
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->hasHardwareNavigationKeys()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isNavigationBarRightOfContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelHeight:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelPadding:I

    add-int/2addr v0, v1

    .line 274
    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isNavigationBarBelowContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelHeight:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelPadding:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelHeight:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mBottomPanelPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getDisplayAreaMarginTop()I
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanel:Landroid/view/View;

    if-nez v1, :cond_0

    .line 255
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Top panel is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanelPadding:I

    add-int/2addr v0, v1

    .line 258
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mTopPanelPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected handleDelayedSubtitleBlocks(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 225
    if-nez p1, :cond_1

    .line 235
    :cond_0
    return-void

    .line 229
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 233
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->createRunnable(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;Z)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getEnd()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected isDisplayAreaVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 143
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Display area NOT found! This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 148
    :cond_1
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Display area w/h are 0, display area is not visible yet, postpone getting w/h"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected makeItVisible(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    .line 212
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mVisibilitySetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    .line 215
    :cond_1
    return-void
.end method

.method protected moveBlocksAppartIfNeeded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->REVERSE_SORT_BY_TOP:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->moveBlocksUpIfNeeded(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Blocks moved appart, but we hit top, reorder blocks and move appart by pushing to bottom"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->SORT_BY_TOP:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Sorted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->moveBlocksBottomIfNeeded(Ljava/util/List;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Blocks moved appart, no issues"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected moveBlocksBottomIfNeeded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 199
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 200
    add-int/lit8 v0, v2, 0x1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 205
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-static {v4, v0, v5}, Lcom/netflix/mediaclient/util/SubtitleUtils;->adjustIfIntersectByMovingSecondDown(Landroid/view/View;Landroid/view/View;I)Z

    .line 200
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 199
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method protected moveBlocksUpIfNeeded(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move v3, v0

    move v1, v0

    .line 179
    :goto_0
    if-ge v3, v4, :cond_2

    .line 180
    add-int/lit8 v0, v3, 0x1

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 185
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->adjustIfIntersectByMovingFirstUp(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 186
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 187
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "We hit top!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v2, 0x1

    .line 180
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 179
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v1, v2

    goto :goto_0

    .line 193
    :cond_2
    return v1
.end method

.method protected abstract removeVisibleSubtitleBlocks(Z)V
.end method
