.class Lcom/kosbrother/fragments/IndexNovelFragment$1;
.super Ljava/lang/Object;
.source "IndexNovelFragment.java"

# interfaces
.implements Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/IndexNovelFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/IndexNovelFragment;


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/IndexNovelFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/IndexNovelFragment;->access$000(Lcom/kosbrother/fragments/IndexNovelFragment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    iget-object v2, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/IndexNovelFragment;->access$100(Lcom/kosbrother/fragments/IndexNovelFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/kosbrother/fragments/IndexNovelFragment;->access$102(Lcom/kosbrother/fragments/IndexNovelFragment;I)I

    .line 96
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/IndexNovelFragment;->access$200(Lcom/kosbrother/fragments/IndexNovelFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-virtual {v1}, Lcom/kosbrother/fragments/IndexNovelFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 98
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/IndexNovelFragment;->access$300(Lcom/kosbrother/fragments/IndexNovelFragment;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 103
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManager;
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$1;->this$0:Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/IndexNovelFragment;->access$400(Lcom/kosbrother/fragments/IndexNovelFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taiwan/imageload/LoadMoreGridView;->onLoadMoreComplete()V

    goto :goto_0
.end method
