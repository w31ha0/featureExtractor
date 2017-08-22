.class public Lcom/kosbrother/fragments/GridGplayFragment;
.super Landroid/support/v4/app/Fragment;
.source "GridGplayFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;,
        Lcom/kosbrother/fragments/GridGplayFragment$DownloadRecommnedLoader;
    }
.end annotation


# static fields
.field private static final LOADER_ID:I = 0x3e8


# instance fields
.field private isNetworkConnect:Z

.field private mGridView:Landroid/widget/GridView;

.field protected mListView:Landroid/widget/ListView;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kosbrother/fragments/GridGplayFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/kosbrother/fragments/GridGplayFragment;Landroid/widget/GridView;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/GridGplayFragment;
    .param p1, "x1"    # Landroid/widget/GridView;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/kosbrother/fragments/GridGplayFragment;->initCards(Landroid/widget/GridView;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private initCards(Landroid/widget/GridView;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p1, "gridView"    # Landroid/widget/GridView;
    .param p3, "cateName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    new-instance v0, Lcom/novel/reader/adapter/GridViewAdapter;

    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/novel/reader/api/NovelAPI;->getAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/novel/reader/adapter/GridViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 149
    .local v0, "mCardArrayAdapter":Lcom/novel/reader/adapter/GridViewAdapter;
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_0
    new-instance v1, Lcom/kosbrother/fragments/GridGplayFragment$2;

    invoke-direct {v1, p0, p2}, Lcom/kosbrother/fragments/GridGplayFragment$2;-><init>(Lcom/kosbrother/fragments/GridGplayFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    return-void
.end method


# virtual methods
.method public newInstance()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-direct {v0}, Lcom/kosbrother/fragments/GridGplayFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/novel/reader/util/NovelReaderUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kosbrother/fragments/GridGplayFragment;->isNetworkConnect:Z

    .line 78
    :goto_0
    iget-boolean v3, p0, Lcom/kosbrother/fragments/GridGplayFragment;->isNetworkConnect:Z

    if-eqz v3, :cond_1

    .line 79
    const v3, 0x7f030020

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "contentView":Landroid/view/View;
    const v3, 0x7f0e009e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/kosbrother/fragments/GridGplayFragment;->mListView:Landroid/widget/ListView;

    move-object v1, v0

    .line 87
    .end local v0    # "contentView":Landroid/view/View;
    .local v1, "contentView":Landroid/view/View;
    :goto_1
    return-object v1

    .line 75
    .end local v1    # "contentView":Landroid/view/View;
    :cond_0
    iput-boolean v4, p0, Lcom/kosbrother/fragments/GridGplayFragment;->isNetworkConnect:Z

    goto :goto_0

    .line 83
    :cond_1
    const v3, 0x7f03004c

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .restart local v0    # "contentView":Landroid/view/View;
    const v3, 0x7f0e00f0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/kosbrother/fragments/GridGplayFragment;->mGridView:Landroid/widget/GridView;

    .line 85
    const v3, 0x7f0e0098

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, "indexCategoryName":Landroid/widget/TextView;
    const v3, 0x7f070095

    invoke-virtual {p0, v3}, Lcom/kosbrother/fragments/GridGplayFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 87
    .end local v0    # "contentView":Landroid/view/View;
    .restart local v1    # "contentView":Landroid/view/View;
    goto :goto_1
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 94
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 96
    iget-boolean v3, p0, Lcom/kosbrother/fragments/GridGplayFragment;->isNetworkConnect:Z

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/kosbrother/fragments/GridGplayFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 98
    iget-object v3, p0, Lcom/kosbrother/fragments/GridGplayFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 101
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    new-instance v5, Lcom/kosbrother/fragments/GridGplayFragment$1;

    invoke-direct {v5, p0}, Lcom/kosbrother/fragments/GridGplayFragment$1;-><init>(Lcom/kosbrother/fragments/GridGplayFragment;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 125
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManager;
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/novel/reader/api/NovelAPI;->getDownloadedNovels(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 122
    .local v2, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    new-instance v1, Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 123
    .local v1, "myGridViewAdapter":Lcom/novel/reader/adapter/GridViewDownloadAdapter;
    iget-object v3, p0, Lcom/kosbrother/fragments/GridGplayFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
