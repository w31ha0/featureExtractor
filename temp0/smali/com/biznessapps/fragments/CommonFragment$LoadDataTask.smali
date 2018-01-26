.class Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;
.super Lcom/biznessapps/api/UnModalAsyncTask;
.source "CommonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/CommonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/UnModalAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/CommonFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/fragments/CommonFragment;Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "progressBar"    # Landroid/view/View;
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
    .line 212
    .local p4, "refOfViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    iput-object p1, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    .line 213
    invoke-direct {p0, p2, p3, p4}, Lcom/biznessapps/api/UnModalAsyncTask;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 218
    iget-object v2, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/CommonFragment;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "data":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-virtual {v2, v0}, Lcom/biznessapps/fragments/CommonFragment;->tryParseData(Ljava/lang/String;)Z

    move-result v1

    .line 220
    .local v1, "isCorrectData":Z
    iget-object v2, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 221
    iget-object v2, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/CommonFragment;->handleInBackground()V

    .line 223
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isCorrectData"    # Ljava/lang/Boolean;

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/biznessapps/api/UnModalAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/biznessapps/activities/CommonFragmentActivity;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/activities/CommonFragmentActivity;

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 232
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    iget-object v1, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->data_loading_failure:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected placeProgressBar()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/biznessapps/activities/CommonFragmentActivity;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/activities/CommonFragmentActivity;

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    :cond_0
    return-void
.end method
