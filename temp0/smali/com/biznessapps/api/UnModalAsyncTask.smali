.class public abstract Lcom/biznessapps/api/UnModalAsyncTask;
.super Lcom/biznessapps/api/CommonTask;
.source "UnModalAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TParams:",
        "Ljava/lang/Object;",
        "TProgress:",
        "Ljava/lang/Object;",
        "TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/biznessapps/api/CommonTask",
        "<TTParams;TTProgress;TTResult;>;"
    }
.end annotation


# instance fields
.field private isActive:Z

.field protected progressBar:Landroid/view/View;

.field private refOfViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressBar"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/biznessapps/api/UnModalAsyncTask;, "Lcom/biznessapps/api/UnModalAsyncTask<TTParams;TTProgress;TTResult;>;"
    .local p3, "refOfViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    invoke-direct {p0, p1}, Lcom/biznessapps/api/CommonTask;-><init>(Landroid/app/Activity;)V

    .line 28
    iput-object p2, p0, Lcom/biznessapps/api/UnModalAsyncTask;->progressBar:Landroid/view/View;

    .line 29
    iput-object p3, p0, Lcom/biznessapps/api/UnModalAsyncTask;->refOfViews:Ljava/util/List;

    .line 30
    return-void
.end method

.method private refreshControls()V
    .locals 4

    .prologue
    .line 75
    .local p0, "this":Lcom/biznessapps/api/UnModalAsyncTask;, "Lcom/biznessapps/api/UnModalAsyncTask<TTParams;TTProgress;TTResult;>;"
    iget-object v2, p0, Lcom/biznessapps/api/UnModalAsyncTask;->refOfViews:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/biznessapps/api/UnModalAsyncTask;->refOfViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 77
    .local v1, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-boolean v3, p0, Lcom/biznessapps/api/UnModalAsyncTask;->isActive:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityAttached()V
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Lcom/biznessapps/api/UnModalAsyncTask;, "Lcom/biznessapps/api/UnModalAsyncTask<TTParams;TTProgress;TTResult;>;"
    invoke-virtual {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/biznessapps/api/UnModalAsyncTask;->isActive:Z

    .line 40
    invoke-direct {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->refreshControls()V

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityDetached()V
    .locals 2

    .prologue
    .line 45
    .local p0, "this":Lcom/biznessapps/api/UnModalAsyncTask;, "Lcom/biznessapps/api/UnModalAsyncTask<TTParams;TTProgress;TTResult;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/api/UnModalAsyncTask;->isActive:Z

    .line 46
    iget-object v0, p0, Lcom/biznessapps/api/UnModalAsyncTask;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-direct {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->refreshControls()V

    .line 48
    return-void
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lcom/biznessapps/api/UnModalAsyncTask;, "Lcom/biznessapps/api/UnModalAsyncTask<TTParams;TTProgress;TTResult;>;"
    invoke-super {p0}, Lcom/biznessapps/api/CommonTask;->onCancelled()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/api/UnModalAsyncTask;->isActive:Z

    .line 70
    iget-object v0, p0, Lcom/biznessapps/api/UnModalAsyncTask;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-direct {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->refreshControls()V

    .line 72
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/biznessapps/api/UnModalAsyncTask;, "Lcom/biznessapps/api/UnModalAsyncTask<TTParams;TTProgress;TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-super {p0, p1}, Lcom/biznessapps/api/CommonTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/api/UnModalAsyncTask;->isActive:Z

    .line 62
    iget-object v0, p0, Lcom/biznessapps/api/UnModalAsyncTask;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-direct {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->refreshControls()V

    .line 64
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/biznessapps/api/UnModalAsyncTask;, "Lcom/biznessapps/api/UnModalAsyncTask<TTParams;TTProgress;TTResult;>;"
    invoke-super {p0}, Lcom/biznessapps/api/CommonTask;->onPreExecute()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/api/UnModalAsyncTask;->isActive:Z

    .line 54
    invoke-direct {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->refreshControls()V

    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->placeProgressBar()V

    .line 56
    return-void
.end method

.method protected abstract placeProgressBar()V
.end method
