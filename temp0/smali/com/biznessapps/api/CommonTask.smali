.class public abstract Lcom/biznessapps/api/CommonTask;
.super Landroid/os/AsyncTask;
.source "CommonTask.java"


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
        "Landroid/os/AsyncTask",
        "<TTParams;TTProgress;TTResult;>;"
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected application:Lcom/biznessapps/layout/BAcore;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/biznessapps/api/CommonTask;->activity:Landroid/app/Activity;

    .line 25
    iget-object v0, p0, Lcom/biznessapps/api/CommonTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/BAcore;

    iput-object v0, p0, Lcom/biznessapps/api/CommonTask;->application:Lcom/biznessapps/layout/BAcore;

    .line 26
    return-void
.end method


# virtual methods
.method protected onActivityAttached()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    return-void
.end method

.method protected onActivityDetached()V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 57
    iget-object v0, p0, Lcom/biznessapps/api/CommonTask;->application:Lcom/biznessapps/layout/BAcore;

    invoke-virtual {v0, p0}, Lcom/biznessapps/layout/BAcore;->removeTask(Lcom/biznessapps/api/CommonTask;)V

    .line 58
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/biznessapps/api/CommonTask;->application:Lcom/biznessapps/layout/BAcore;

    invoke-virtual {v0, p0}, Lcom/biznessapps/layout/BAcore;->removeTask(Lcom/biznessapps/api/CommonTask;)V

    .line 52
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 45
    iget-object v0, p0, Lcom/biznessapps/api/CommonTask;->application:Lcom/biznessapps/layout/BAcore;

    iget-object v1, p0, Lcom/biznessapps/api/CommonTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/biznessapps/layout/BAcore;->addTask(Landroid/app/Activity;Lcom/biznessapps/api/CommonTask;)V

    .line 46
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/biznessapps/api/CommonTask;->onActivityDetached()V

    .line 31
    iput-object p1, p0, Lcom/biznessapps/api/CommonTask;->activity:Landroid/app/Activity;

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/api/CommonTask;->activity:Landroid/app/Activity;

    .line 34
    invoke-virtual {p0}, Lcom/biznessapps/api/CommonTask;->onActivityAttached()V

    goto :goto_0
.end method
