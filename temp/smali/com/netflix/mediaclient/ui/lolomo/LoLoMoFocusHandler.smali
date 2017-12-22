.class public Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;
.super Landroid/database/DataSetObserver;
.source "LoLoMoFocusHandler.java"


# static fields
.field private static final LEFT:Z = false

.field private static final LOG_VERBOSE:Z = false

.field private static final RIGHT:Z = true

.field private static final TAG:Ljava/lang/String; = "LoLoMoFocusHandler"

.field private static final VIEW_ID_ROW_MULTIPLIER:I = 0x3e8

.field private static viewIdsValidated:Z


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private col:I

.field private final listView:Landroid/widget/ListView;

.field private prevFocusView:Landroid/view/View;

.field private row:I

.field private touchEnabled:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->validateViewIdsIfNecessary()V

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 53
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    return p1
.end method

.method private canScrollHorizontally(Z)Z
    .locals 3

    .prologue
    .line 109
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    add-int/lit8 v0, v0, 0x1

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 115
    :goto_1
    return v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private computeColFromViewId(I)I
    .locals 1

    .prologue
    .line 119
    rem-int/lit16 v0, p1, 0x3e8

    return v0
.end method

.method private computeCurrViewId()I
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    .line 127
    return v0
.end method

.method public static computeViewId(II)I
    .locals 1

    .prologue
    .line 71
    add-int/lit8 v0, p0, 0x1

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, p1

    return v0
.end method

.method private disableTouchMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    if-eqz v1, :cond_0

    .line 136
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->touchEnabled:Z

    .line 137
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->requestFocusAtCurrPos()V

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVideoViewGroup(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
            "<**>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 147
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-object v1

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 153
    instance-of v2, v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    if-nez v2, :cond_1

    .line 154
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 156
    :cond_1
    instance-of v2, v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    if-eqz v2, :cond_2

    .line 157
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    :goto_1
    move-object v1, v0

    .line 159
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getViewPager(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->getVideoViewGroup(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager;

    goto :goto_0
.end method

.method private handleDpadEvent(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 197
    const-string/jumbo v0, "LoLoMoFocusHandler"

    const-string/jumbo v1, "Unknown keyCode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    move v2, v1

    .line 201
    :goto_1
    if-eqz v2, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->requestFocusAtCurrPos()V

    .line 203
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->scrollHorizontallyIfRequired()V

    goto :goto_0

    .line 180
    :pswitch_1
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    move v2, v1

    .line 181
    goto :goto_1

    .line 185
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->canScrollHorizontally(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    move v2, v0

    goto :goto_1

    .line 191
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->canScrollHorizontally(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    move v2, v0

    goto :goto_1

    .line 206
    :cond_1
    const/16 v2, 0x14

    if-ne p1, v2, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->handleVerticalKeyEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->row:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->scrollVertically(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 206
    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleVerticalKeyEvent(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    .line 233
    :cond_0
    if-eqz p1, :cond_2

    const/16 v0, 0x82

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    .line 256
    :goto_1
    return v0

    .line 233
    :cond_2
    const/16 v0, 0x21

    goto :goto_0

    .line 242
    :cond_3
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->getVideoViewGroup(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;

    move-result-object v0

    .line 243
    if-nez v0, :cond_4

    move v0, v1

    .line 244
    goto :goto_1

    .line 247
    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getChildCount()I

    move-result v3

    rem-int/2addr v2, v3

    .line 248
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 249
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeColFromViewId(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->col:I

    .line 255
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->requestFocusAtCurrPos()V

    .line 256
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private requestFocusAtCurrPos()V
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeCurrViewId()I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 272
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->prevFocusView:Landroid/view/View;

    goto :goto_0
.end method

.method private scrollHorizontallyIfRequired()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeCurrViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->getViewPager(Landroid/view/View;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v1

    .line 279
    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 283
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 284
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 285
    const/4 v3, 0x0

    aget v2, v2, v3

    .line 286
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v3, v2, v0

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v4

    .line 293
    invoke-virtual {v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getCurrentItem()I

    move-result v0

    .line 294
    if-gez v2, :cond_2

    .line 295
    add-int/lit8 v0, v0, -0x1

    .line 300
    :cond_1
    :goto_1
    invoke-virtual {v1, v0, v5, v5}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(IZZ)V

    goto :goto_0

    .line 297
    :cond_2
    if-le v3, v4, :cond_1

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private scrollVertically(I)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 308
    return-void
.end method

.method private validateViewIdsIfNecessary()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->disableTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->handleDpadEvent(I)V

    .line 91
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 106
    return-void
.end method
