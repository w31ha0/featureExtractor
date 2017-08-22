.class public Lcom/kosbrother/fragments/IndexNovelFragment;
.super Landroid/support/v4/app/Fragment;
.source "IndexNovelFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/novel/reader/entity/Novel;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final HOT_NOVEL:I = 0x1

.field public static final LATEST_NOVEL:I = 0x4

.field public static final MONTH_NOVEL:I = 0x2

.field public static final NEW_UPLOADED:I = 0x5

.field public static final WEEK_NOVEL:I = 0x3


# instance fields
.field private buttonReload:Landroid/widget/Button;

.field private checkLoad:Ljava/lang/Boolean;

.field private layoutReload:Landroid/widget/LinearLayout;

.field private loadmoreLayout:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private moreNovels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation
.end field

.field private myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

.field private myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

.field private myPage:I

.field private novelFragment:I

.field private novels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation
.end field

.field private progressLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novels:Ljava/util/ArrayList;

    .line 42
    iput v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myPage:I

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->checkLoad:Ljava/lang/Boolean;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novelFragment:I

    return-void
.end method

.method static synthetic access$000(Lcom/kosbrother/fragments/IndexNovelFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->checkLoad:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kosbrother/fragments/IndexNovelFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/kosbrother/fragments/IndexNovelFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myPage:I

    return p1
.end method

.method static synthetic access$200(Lcom/kosbrother/fragments/IndexNovelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kosbrother/fragments/IndexNovelFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novelFragment:I

    return v0
.end method

.method static synthetic access$400(Lcom/kosbrother/fragments/IndexNovelFragment;)Lcom/taiwan/imageload/LoadMoreGridView;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kosbrother/fragments/IndexNovelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->progressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kosbrother/fragments/IndexNovelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->layoutReload:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kosbrother/fragments/IndexNovelFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/IndexNovelFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static newInstance(I)Lcom/kosbrother/fragments/IndexNovelFragment;
    .locals 3
    .param p0, "novelFragment"    # I

    .prologue
    .line 62
    new-instance v1, Lcom/kosbrother/fragments/IndexNovelFragment;

    invoke-direct {v1}, Lcom/kosbrother/fragments/IndexNovelFragment;-><init>()V

    .line 63
    .local v1, "fragment":Lcom/kosbrother/fragments/IndexNovelFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "bdl":Landroid/os/Bundle;
    const-string v2, "NovelFragment"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/kosbrother/fragments/IndexNovelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method

.method private setLoadMoreNovels()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->moreNovels:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->moreNovels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/novel/reader/api/NovelAPI;->getAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/novel/reader/adapter/GridViewAdapter;->addDatas(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 125
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    invoke-virtual {v0}, Lcom/novel/reader/adapter/GridViewAdapter;->notifyDataSetChanged()V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    invoke-virtual {v0}, Lcom/taiwan/imageload/LoadMoreGridView;->onLoadMoreComplete()V

    .line 131
    return-void

    .line 127
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->checkLoad:Ljava/lang/Boolean;

    .line 128
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "no more data"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setNovesAdapter()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novels:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->layoutReload:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    new-instance v0, Lcom/novel/reader/adapter/GridViewAdapter;

    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/novel/reader/api/NovelAPI;->getAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/novel/reader/adapter/GridViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    .line 138
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    new-instance v1, Lcom/kosbrother/fragments/IndexNovelFragment$3;

    invoke-direct {v1, p0}, Lcom/kosbrother/fragments/IndexNovelFragment$3;-><init>(Lcom/kosbrother/fragments/IndexNovelFragment;)V

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->layoutReload:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    iput-object p1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->mActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/kosbrother/fragments/IndexNovelFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NovelFragment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novelFragment:I

    .line 75
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4
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
            "Lcom/novel/reader/entity/Novel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;

    invoke-virtual {p0}, Lcom/kosbrother/fragments/IndexNovelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novelFragment:I

    iget v3, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myPage:I

    invoke-direct {v0, v1, v2, v3}, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "myFragmentView":Landroid/view/View;
    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->progressLayout:Landroid/widget/LinearLayout;

    .line 82
    const v1, 0x7f0e0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    .line 83
    const v1, 0x7f0e0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->layoutReload:Landroid/widget/LinearLayout;

    .line 84
    const v1, 0x7f0e0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->buttonReload:Landroid/widget/Button;

    .line 85
    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taiwan/imageload/LoadMoreGridView;

    iput-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    .line 86
    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/kosbrother/fragments/IndexNovelFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;>;"
    .local p2, "getNovels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const/16 v3, 0x8

    .line 182
    iput-object p2, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->moreNovels:Ljava/util/ArrayList;

    .line 184
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->moreNovels:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myPage:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/kosbrother/fragments/IndexNovelFragment;->setLoadMoreNovels()V

    .line 198
    :goto_1
    return-void

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/kosbrother/fragments/IndexNovelFragment;->setNovesAdapter()V

    goto :goto_1
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
            "Lcom/novel/reader/entity/Novel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;>;"
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 92
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    new-instance v2, Lcom/kosbrother/fragments/IndexNovelFragment$1;

    invoke-direct {v2, p0}, Lcom/kosbrother/fragments/IndexNovelFragment$1;-><init>(Lcom/kosbrother/fragments/IndexNovelFragment;)V

    invoke-virtual {v1, v2}, Lcom/taiwan/imageload/LoadMoreGridView;->setOnLoadMoreListener(Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;)V

    .line 106
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->buttonReload:Landroid/widget/Button;

    new-instance v2, Lcom/kosbrother/fragments/IndexNovelFragment$2;

    invoke-direct {v2, p0}, Lcom/kosbrother/fragments/IndexNovelFragment$2;-><init>(Lcom/kosbrother/fragments/IndexNovelFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/kosbrother/fragments/IndexNovelFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 118
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    iget v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment;->novelFragment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 120
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManager;
    :cond_0
    return-void
.end method
