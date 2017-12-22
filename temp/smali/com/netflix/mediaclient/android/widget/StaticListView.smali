.class public Lcom/netflix/mediaclient/android/widget/StaticListView;
.super Landroid/widget/ListView;
.source "StaticListView.java"


# instance fields
.field private isStatic:Z

.field private mExtraText:Ljava/lang/String;

.field private mLastNotifiedCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 5

    .prologue
    .line 52
    :try_start_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 55
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SPY-11315 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": currentCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", lastNotifiedCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->mLastNotifiedCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", extraText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->mExtraText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    if-eqz v0, :cond_0

    .line 31
    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 32
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    return-void

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setAsStatic(Z)V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    if-eq v0, p1, :cond_0

    .line 44
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->requestLayout()V

    .line 47
    :cond_0
    return-void
.end method

.method public setLastNotifiedCount(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->mLastNotifiedCount:I

    .line 61
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->mExtraText:Ljava/lang/String;

    .line 62
    return-void
.end method
