.class Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;
.super Landroid/os/AsyncTask;
.source "MyDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/MyDownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getNovelsInfoFromServerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/MyDownloadFragment;


# direct methods
.method private constructor <init>(Lcom/kosbrother/fragments/MyDownloadFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kosbrother/fragments/MyDownloadFragment;Lcom/kosbrother/fragments/MyDownloadFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;
    .param p2, "x1"    # Lcom/kosbrother/fragments/MyDownloadFragment$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;-><init>(Lcom/kosbrother/fragments/MyDownloadFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$100(Lcom/kosbrother/fragments/MyDownloadFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getCollectNovelsInfoFromServer(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/kosbrother/fragments/MyDownloadFragment;->novelsFromServer:Ljava/util/ArrayList;

    .line 122
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    iget-object v0, v0, Lcom/kosbrother/fragments/MyDownloadFragment;->novelsFromServer:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    iget-object v0, v0, Lcom/kosbrother/fragments/MyDownloadFragment;->novelsFromServer:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$200(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->updateNovelsInfo(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    iget-object v0, v0, Lcom/kosbrother/fragments/MyDownloadFragment;->novelsFromServer:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    new-instance v1, Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    iget-object v2, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$200(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    iget-object v3, v3, Lcom/kosbrother/fragments/MyDownloadFragment;->novelsFromServer:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$502(Lcom/kosbrother/fragments/MyDownloadFragment;Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    .line 132
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$600(Lcom/kosbrother/fragments/MyDownloadFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$500(Lcom/kosbrother/fragments/MyDownloadFragment;)Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    :cond_0
    return-void
.end method
