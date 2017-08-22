.class public Lcom/kosbrother/fragments/MyBookcaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyBookcaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/fragments/MyBookcaseFragment$UpdateServerCollectTask;,
        Lcom/kosbrother/fragments/MyBookcaseFragment$getNovelsInfoFromServerTask;,
        Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;
    }
.end annotation


# instance fields
.field private loadmoreLayout:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

.field private myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

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
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->novels:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->novels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kosbrother/fragments/MyBookcaseFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->novels:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->progressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kosbrother/fragments/MyBookcaseFragment;)Lcom/novel/reader/adapter/GridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/kosbrother/fragments/MyBookcaseFragment;Lcom/novel/reader/adapter/GridViewAdapter;)Lcom/novel/reader/adapter/GridViewAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;
    .param p1, "x1"    # Lcom/novel/reader/adapter/GridViewAdapter;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->myGridViewAdapter:Lcom/novel/reader/adapter/GridViewAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kosbrother/fragments/MyBookcaseFragment;)Lcom/taiwan/imageload/LoadMoreGridView;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kosbrother/fragments/MyBookcaseFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookcaseFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->noDataLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static newInstance()Lcom/kosbrother/fragments/MyBookcaseFragment;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-direct {v0}, Lcom/kosbrother/fragments/MyBookcaseFragment;-><init>()V

    .line 46
    .local v0, "fragment":Lcom/kosbrother/fragments/MyBookcaseFragment;
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 39
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->mActivity:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;-><init>(Lcom/kosbrother/fragments/MyBookcaseFragment;Lcom/kosbrother/fragments/MyBookcaseFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "myFragmentView":Landroid/view/View;
    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->progressLayout:Landroid/widget/LinearLayout;

    .line 62
    const v1, 0x7f0e0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->loadmoreLayout:Landroid/widget/LinearLayout;

    .line 63
    const v1, 0x7f0e0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->noDataLayout:Landroid/widget/LinearLayout;

    .line 64
    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taiwan/imageload/LoadMoreGridView;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    .line 65
    return-object v0
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
