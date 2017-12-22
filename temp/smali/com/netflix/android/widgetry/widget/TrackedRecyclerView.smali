.class public abstract Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "TrackedRecyclerView.java"


# instance fields
.field private mLastLayoutCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->mLastLayoutCount:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->mLastLayoutCount:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->mLastLayoutCount:I

    .line 38
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView$Adapter;)I
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->getAdapterCount(Landroid/support/v7/widget/RecyclerView$Adapter;)I

    move-result v0

    return v0
.end method

.method private static getAdapterCount(Landroid/support/v7/widget/RecyclerView$Adapter;)I
    .locals 1

    .prologue
    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getTrackingName()Ljava/lang/String;
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 45
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    .line 46
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->getAdapterCount(Landroid/support/v7/widget/RecyclerView$Adapter;)I

    move-result v0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->mLastLayoutCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 49
    new-instance v0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$RowRecyclerException;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->getTrackingName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->mLastLayoutCount:I

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$RowRecyclerException;-><init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$Adapter;Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$1;)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
