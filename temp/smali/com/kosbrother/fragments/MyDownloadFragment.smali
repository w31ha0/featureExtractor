.class public Lcom/kosbrother/fragments/MyDownloadFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/fragments/MyDownloadFragment$UpdateServerDownloadTask;,
        Lcom/kosbrother/fragments/MyDownloadFragment$getNovelsInfoFromServerTask;,
        Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;
    }
.end annotation


# instance fields
.field private loadmoreLayout:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

.field private myGridViewAdapter:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

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

.field public novelsFromServer:Ljava/util/ArrayList;
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
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->novels:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/kosbrother/fragments/MyDownloadFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->novels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kosbrother/fragments/MyDownloadFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->novels:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->progressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kosbrother/fragments/MyDownloadFragment;)Lcom/novel/reader/adapter/GridViewDownloadAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/kosbrother/fragments/MyDownloadFragment;Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Lcom/novel/reader/adapter/GridViewDownloadAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;
    .param p1, "x1"    # Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kosbrother/fragments/MyDownloadFragment;)Lcom/taiwan/imageload/LoadMoreGridView;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyDownloadFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->noDataLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static newInstance()Lcom/kosbrother/fragments/MyDownloadFragment;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-direct {v0}, Lcom/kosbrother/fragments/MyDownloadFragment;-><init>()V

    .line 42
    .local v0, "fragment":Lcom/kosbrother/fragments/MyDownloadFragment;
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    iput-object p1, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->mActivity:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "myFragmentView":Landroid/view/View;
    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->progressLayout:Landroid/widget/LinearLayout;

    .line 56
    const v1, 0x7f0e0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    .line 57
    const v1, 0x7f0e0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->noDataLayout:Landroid/widget/LinearLayout;

    .line 58
    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taiwan/imageload/LoadMoreGridView;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyDownloadFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    .line 59
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 65
    new-instance v0, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;-><init>(Lcom/kosbrother/fragments/MyDownloadFragment;Lcom/kosbrother/fragments/MyDownloadFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/kosbrother/fragments/MyDownloadFragment$DownloadChannelsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
