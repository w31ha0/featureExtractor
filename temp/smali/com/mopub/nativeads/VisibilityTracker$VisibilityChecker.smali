.class Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VisibilityChecker"
.end annotation


# instance fields
.field private final mClipRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method hasRequiredTimeElapsed(JI)Z
    .locals 5
    .param p1, "startTimeMillis"    # J
    .param p3, "minTimeViewed"    # I

    .prologue
    .line 270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible(Landroid/view/View;Landroid/view/View;I)Z
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "minPercentageViewed"    # I

    .prologue
    const/4 v4, 0x0

    .line 283
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v4

    .line 287
    :cond_1
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-long v6, v5

    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-long v8, v5

    mul-long v2, v6, v8

    .line 294
    .local v2, "visibleViewArea":J
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-long v8, v5

    mul-long v0, v6, v8

    .line 296
    .local v0, "totalViewArea":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 300
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v2

    int-to-long v8, p3

    mul-long/2addr v8, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method
