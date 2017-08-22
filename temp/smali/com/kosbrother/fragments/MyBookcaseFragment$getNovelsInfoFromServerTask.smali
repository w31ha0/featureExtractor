.class Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;
.super Landroid/os/AsyncTask;
.source "MyBookcaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/MyBookcaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getNovelsInfoFromServerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;


# direct methods
.method private constructor <init>(Lcom/kosbrother/fragments/MyBookcaseFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kosbrother/fragments/MyBookcaseFragment;Lcom/kosbrother/fragments/MyBookcaseFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;
    .param p2, "x1"    # Lcom/kosbrother/fragments/MyBookcaseFragment$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;-><init>(Lcom/kosbrother/fragments/MyBookcaseFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getCollectNovelsInfoFromServer(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/kosbrother/fragments/MyBookcaseFragment;->novelsFromServer:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    iget-object v0, v0, Lcom/kosbrother/fragments/MyBookcaseFragment;->novelsFromServer:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    iget-object v0, v0, Lcom/kosbrother/fragments/MyBookcaseFragment;->novelsFromServer:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$200(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->updateNovelsInfo(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    iget-object v0, v0, Lcom/kosbrother/fragments/MyBookcaseFragment;->novelsFromServer:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    new-instance v1, Lcom/novel/reader/adapter/GridViewAdapter;

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$200(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    iget-object v3, v3, Lcom/kosbrother/fragments/MyBookcaseFragment;->novelsFromServer:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/novel/reader/adapter/GridViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$502(Lcom/kosbrother/fragments/MyBookcaseFragment;Lcom/novel/reader/adapter/GridViewAdapter;)Lcom/novel/reader/adapter/GridViewAdapter;

    .line 143
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$600(Lcom/kosbrother/fragments/MyBookcaseFragment;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$500(Lcom/kosbrother/fragments/MyBookcaseFragment;)Lcom/novel/reader/adapter/GridViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    iget-object v1, v1, Lcom/kosbrother/fragments/MyBookcaseFragment;->novelsFromServer:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$102(Lcom/kosbrother/fragments/MyBookcaseFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 146
    :cond_0
    return-void
.end method
