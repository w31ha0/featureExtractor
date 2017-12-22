.class public Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;
.super Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;
.source "LolomoRecyclerView.java"


# static fields
.field public static final DEFAULT_FLING_SPEED_SCALE:F = 0.8f

.field public static final SLOW_FLING_SPEED_SCALE:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "LolomoRecyclerView"


# instance fields
.field private final mDownEvent:Landroid/graphics/PointF;

.field private mFlingSpeedScale:F

.field private mWillScrollHorizontal:Z

.field private mWillScrollVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mFlingSpeedScale:F

    .line 39
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mDownEvent:Landroid/graphics/PointF;

    .line 41
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollVertical:Z

    .line 42
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollHorizontal:Z

    .line 54
    return-void
.end method

.method private shouldDelegateToLomo(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollHorizontal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mDownEvent:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 85
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mDownEvent:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 86
    iput-boolean v2, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollVertical:Z

    .line 87
    iput-boolean v2, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollHorizontal:Z

    .line 93
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollHorizontal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollVertical:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mDownEvent:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollVertical:Z

    .line 91
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mDownEvent:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollHorizontal:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 90
    goto :goto_1

    :cond_3
    move v1, v2

    .line 91
    goto :goto_2
.end method

.method public fling(II)Z
    .locals 2

    .prologue
    .line 121
    int-to-float v0, p2

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mFlingSpeedScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 122
    invoke-super {p0, p1, v0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->fling(II)Z

    move-result v0

    return v0
.end method

.method protected getTrackingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "LolomoRecyclerView"

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->shouldDelegateToLomo(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 138
    instance-of v0, p1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;

    if-nez v0, :cond_1

    .line 139
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 142
    check-cast v0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 143
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    check-cast p1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;

    iget-object v1, p1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;->mInnerLayoutStates:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 127
    new-instance v1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;

    invoke-super {p0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->onSaveInstanceState(Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;->mInnerLayoutStates:Landroid/os/Parcelable;

    .line 133
    :goto_0
    return-object v1

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView$SavedState;->mInnerLayoutStates:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollVertical:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mWillScrollHorizontal:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->setLolomoAdapter(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V

    .line 113
    return-void
.end method

.method public setFlingSpeedScale(F)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->mFlingSpeedScale:F

    .line 117
    return-void
.end method

.method public setLolomoAdapter(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 63
    return-void
.end method
