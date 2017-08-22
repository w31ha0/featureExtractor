.class Lcom/kosbrother/fragments/GridGplayFragment$1;
.super Ljava/lang/Object;
.source "GridGplayFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/GridGplayFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/novel/reader/entity/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/GridGplayFragment;


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/GridGplayFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/fragments/GridGplayFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kosbrother/fragments/GridGplayFragment$1;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/kosbrother/fragments/GridGplayFragment$DownloadRecommnedLoader;

    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$1;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-virtual {v1}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kosbrother/fragments/GridGplayFragment$DownloadRecommnedLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/kosbrother/fragments/GridGplayFragment$1;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;>;"
    .local p2, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;"
    new-instance v0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$1;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    iget-object v2, p0, Lcom/kosbrother/fragments/GridGplayFragment$1;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-virtual {v2}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;-><init>(Lcom/kosbrother/fragments/GridGplayFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 111
    .local v0, "listItemAdapter":Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;
    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$1;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    iget-object v1, v1, Lcom/kosbrother/fragments/GridGplayFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$1;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    iget-object v1, v1, Lcom/kosbrother/fragments/GridGplayFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 113
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;>;"
    return-void
.end method
