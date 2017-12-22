.class public abstract Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "TrackedLinearLayoutManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract getTrackingName()Ljava/lang/String;
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager$Exception;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;->getTrackingName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager$Exception;-><init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager$1;)V

    throw v1
.end method
