.class Lcom/novel/reader/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/SearchActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/novel/reader/SearchActivity$2;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/novel/reader/SearchActivity$2;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v0}, Lcom/novel/reader/SearchActivity;->access$200(Lcom/novel/reader/SearchActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/novel/reader/SearchActivity$2;->this$0:Lcom/novel/reader/SearchActivity;

    iget-object v1, p0, Lcom/novel/reader/SearchActivity$2;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v1}, Lcom/novel/reader/SearchActivity;->access$300(Lcom/novel/reader/SearchActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/novel/reader/SearchActivity;->access$302(Lcom/novel/reader/SearchActivity;I)I

    .line 114
    iget-object v0, p0, Lcom/novel/reader/SearchActivity$2;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v0}, Lcom/novel/reader/SearchActivity;->access$400(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    new-instance v0, Lcom/novel/reader/SearchActivity$LoadDataTask;

    iget-object v1, p0, Lcom/novel/reader/SearchActivity$2;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {v0, v1}, Lcom/novel/reader/SearchActivity$LoadDataTask;-><init>(Lcom/novel/reader/SearchActivity;)V

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/novel/reader/SearchActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/SearchActivity$2;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v0}, Lcom/novel/reader/SearchActivity;->access$500(Lcom/novel/reader/SearchActivity;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwan/imageload/LoadMoreGridView;->onLoadMoreComplete()V

    goto :goto_0
.end method
