.class Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;
.super Landroid/os/AsyncTask;
.source "MyBookcaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/MyBookcaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadChannelsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;


# direct methods
.method private constructor <init>(Lcom/kosbrother/fragments/MyBookcaseFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kosbrother/fragments/MyBookcaseFragment;Lcom/kosbrother/fragments/MyBookcaseFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;
    .param p2, "x1"    # Lcom/kosbrother/fragments/MyBookcaseFragment$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;-><init>(Lcom/kosbrother/fragments/MyBookcaseFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$200(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getCollectedNovels(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$102(Lcom/kosbrother/fragments/MyBookcaseFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 96
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$300(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$400(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    new-instance v1, Lcom/novel/reader/adapter/GridViewAdapter;

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$200(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v3}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/novel/reader/adapter/GridViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$502(Lcom/kosbrother/fragments/MyBookcaseFragment;Lcom/novel/reader/adapter/GridViewAdapter;)Lcom/novel/reader/adapter/GridViewAdapter;

    .line 102
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$600(Lcom/kosbrother/fragments/MyBookcaseFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$500(Lcom/kosbrother/fragments/MyBookcaseFragment;)Lcom/novel/reader/adapter/GridViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$600(Lcom/kosbrother/fragments/MyBookcaseFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v0

    new-instance v1, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;

    invoke-direct {v1, p0}, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;-><init>(Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;)V

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    :goto_0
    new-instance v0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;-><init>(Lcom/kosbrother/fragments/MyBookcaseFragment;Lcom/kosbrother/fragments/MyBookcaseFragment$1;)V

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$600(Lcom/kosbrother/fragments/MyBookcaseFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$700(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 81
    return-void
.end method
