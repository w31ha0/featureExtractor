.class public final Lcom/kosbrother/fragments/CategroyHotNovelsFragment;
.super Landroid/support/v4/app/Fragment;
.source "CategroyHotNovelsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/fragments/CategroyHotNovelsFragment$NovelLoader;
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


# instance fields
.field private Loader_Id:I

.field public apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;"
        }
    .end annotation
.end field

.field private buttonReload:Landroid/widget/Button;

.field private categoryName:Ljava/lang/String;

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

.field private noDataLayout:Landroid/widget/LinearLayout;

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

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->novels:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    .line 38
    iput v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myPage:I

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->checkLoad:Ljava/lang/Boolean;

    .line 46
    const/16 v0, 0x2a

    iput v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->Loader_Id:I

    return-void
.end method

.method static synthetic access$000(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->checkLoad:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myPage:I

    return p1
.end method

.method static synthetic access$200(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->Loader_Id:I

    return v0
.end method

.method static synthetic access$400(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Lcom/taiwan/imageload/LoadMoreGridView;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->progressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->layoutReload:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->novels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/kosbrother/fragments/CategroyHotNovelsFragment;
    .locals 3
    .param p0, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v1, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-direct {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;-><init>()V

    .line 61
    .local v1, "fragment":Lcom/kosbrother/fragments/CategroyHotNovelsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "CategoryName"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method

.method private setLoadMoreNovels()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/novel/reader/api/NovelAPI;->getAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/novel/reader/adapter/GridViewAdapter;->addDatas(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 126
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    invoke-virtual {v0}, Lcom/novel/reader/adapter/GridViewAdapter;->notifyDataSetChanged()V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    invoke-virtual {v0}, Lcom/taiwan/imageload/LoadMoreGridView;->onLoadMoreComplete()V

    .line 132
    return-void

    .line 128
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->checkLoad:Ljava/lang/Boolean;

    .line 129
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "no more data"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setNovesAdapter()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->novels:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->layoutReload:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    new-instance v0, Lcom/novel/reader/adapter/GridViewAdapter;

    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->novels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/novel/reader/api/NovelAPI;->getAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/novel/reader/adapter/GridViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    .line 139
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    new-instance v1, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;

    invoke-direct {v1, p0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;-><init>(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)V

    invoke-virtual {v0, v1}, Lcom/taiwan/imageload/LoadMoreGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    :goto_1
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->layoutReload:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    iput-object p1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->mActivity:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
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
    .line 174
    new-instance v0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$NovelLoader;

    invoke-virtual {p0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myPage:I

    invoke-direct {v0, v1, v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$NovelLoader;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CategoryName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->categoryName:Ljava/lang/String;

    .line 78
    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "myFragmentView":Landroid/view/View;
    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->progressLayout:Landroid/widget/LinearLayout;

    .line 80
    const v1, 0x7f0e0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    .line 81
    const v1, 0x7f0e0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->noDataLayout:Landroid/widget/LinearLayout;

    .line 82
    const v1, 0x7f0e0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->layoutReload:Landroid/widget/LinearLayout;

    .line 83
    const v1, 0x7f0e0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->buttonReload:Landroid/widget/Button;

    .line 84
    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taiwan/imageload/LoadMoreGridView;

    iput-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    .line 86
    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V

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

    .line 180
    iput-object p2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    .line 182
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->novels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myPage:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->setLoadMoreNovels()V

    .line 196
    :goto_1
    return-void

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->setNovesAdapter()V

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
    .line 201
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;>;"
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 92
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    new-instance v2, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$1;

    invoke-direct {v2, p0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$1;-><init>(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)V

    invoke-virtual {v1, v2}, Lcom/taiwan/imageload/LoadMoreGridView;->setOnLoadMoreListener(Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;)V

    .line 107
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->buttonReload:Landroid/widget/Button;

    new-instance v2, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;

    invoke-direct {v2, p0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;-><init>(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 119
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    iget v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->Loader_Id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 121
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManager;
    :cond_0
    return-void
.end method