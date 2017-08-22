.class Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;
.super Ljava/lang/Object;
.source "CategoryLatestNovelsFragment.java"

# interfaces
.implements Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->access$000(Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    iget-object v2, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->access$100(Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->access$102(Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;I)I

    .line 96
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->access$200(Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    invoke-virtual {v1}, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 98
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->access$300(Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 102
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManager;
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment$1;->this$0:Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->access$400(Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taiwan/imageload/LoadMoreGridView;->onLoadMoreComplete()V

    goto :goto_0
.end method
