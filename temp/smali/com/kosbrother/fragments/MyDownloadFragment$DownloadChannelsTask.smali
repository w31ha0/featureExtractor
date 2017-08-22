.class Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;
.super Landroid/os/AsyncTask;
.source "MyDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/MyDownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadChannelsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/MyDownloadFragment;


# direct methods
.method private constructor <init>(Lcom/kosbrother/fragments/MyDownloadFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kosbrother/fragments/MyDownloadFragment;Lcom/kosbrother/fragments/MyDownloadFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;
    .param p2, "x1"    # Lcom/kosbrother/fragments/MyDownloadFragment$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;-><init>(Lcom/kosbrother/fragments/MyDownloadFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$200(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getDownloadedNovels(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$102(Lcom/kosbrother/fragments/MyDownloadFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    .line 96
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$300(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$400(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$100(Lcom/kosbrother/fragments/MyDownloadFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$100(Lcom/kosbrother/fragments/MyDownloadFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    new-instance v1, Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    iget-object v2, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$200(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v3}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$100(Lcom/kosbrother/fragments/MyDownloadFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$502(Lcom/kosbrother/fragments/MyDownloadFragment;Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    .line 103
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$600(Lcom/kosbrother/fragments/MyDownloadFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$500(Lcom/kosbrother/fragments/MyDownloadFragment;)Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    new-instance v0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;-><init>(Lcom/kosbrother/fragments/MyDownloadFragment;Lcom/kosbrother/fragments/MyDownloadFragment$1;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$600(Lcom/kosbrother/fragments/MyDownloadFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$700(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

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
