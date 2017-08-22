.class Lcom/novel/reader/DownloadActivity$DownloadToDBTask;
.super Landroid/os/AsyncTask;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadToDBTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/DownloadActivity;


# direct methods
.method private constructor <init>(Lcom/novel/reader/DownloadActivity;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;->this$0:Lcom/novel/reader/DownloadActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/novel/reader/DownloadActivity;Lcom/novel/reader/DownloadActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novel/reader/DownloadActivity;
    .param p2, "x1"    # Lcom/novel/reader/DownloadActivity$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;-><init>(Lcom/novel/reader/DownloadActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 199
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v9, "checkedArticles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;->this$0:Lcom/novel/reader/DownloadActivity;

    invoke-static {v0}, Lcom/novel/reader/DownloadActivity;->access$100(Lcom/novel/reader/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 201
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;->this$0:Lcom/novel/reader/DownloadActivity;

    invoke-static {v0}, Lcom/novel/reader/DownloadActivity;->access$100(Lcom/novel/reader/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/tool/Group;

    invoke-virtual {v0}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;->this$0:Lcom/novel/reader/DownloadActivity;

    invoke-static {v0}, Lcom/novel/reader/DownloadActivity;->access$100(Lcom/novel/reader/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/tool/Group;

    invoke-virtual {v0, v11}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v8

    .line 203
    .local v8, "aChildArticle":Lcom/kosbrother/tool/ChildArticle;
    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->isDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getId()I

    move-result v1

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getNovelId()I

    move-result v2

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->isDownload()Z

    move-result v6

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getNum()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 204
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 200
    .end local v8    # "aChildArticle":Lcom/kosbrother/tool/ChildArticle;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 211
    .end local v11    # "j":I
    :cond_2
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "i":I
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;->this$0:Lcom/novel/reader/DownloadActivity;

    const-class v1, Lcom/novel/reader/service/DownloadService;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v10, "i":Landroid/content/Intent;
    invoke-static {v9}, Lcom/novel/reader/service/DownloadService;->addArticles(Ljava/util/ArrayList;)V

    .line 213
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;->this$0:Lcom/novel/reader/DownloadActivity;

    invoke-virtual {v0, v10}, Lcom/novel/reader/DownloadActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method
