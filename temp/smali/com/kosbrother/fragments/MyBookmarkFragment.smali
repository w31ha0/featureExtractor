.class public Lcom/kosbrother/fragments/MyBookmarkFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyBookmarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;,
        Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;
    }
.end annotation


# static fields
.field public static BOOKMARK_VIEW:I

.field public static RECENT_READ_VIEW:I


# instance fields
.field private bookmarkListView:Lcom/ifixit/android/sectionheaders/SectionListView;

.field private bookmarks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private deleteBookmarks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private isRecent:I

.field public isShowDeleteCallbackAction:Z

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/kosbrother/fragments/MyBookmarkFragment;->BOOKMARK_VIEW:I

    .line 44
    const/4 v0, 0x2

    sput v0, Lcom/kosbrother/fragments/MyBookmarkFragment;->RECENT_READ_VIEW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->isShowDeleteCallbackAction:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kosbrother/fragments/MyBookmarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookmarkFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->fetchData()V

    return-void
.end method

.method static synthetic access$100(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookmarkFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kosbrother/fragments/MyBookmarkFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookmarkFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->setListAdatper(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookmarkFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->deleteBookmarks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/kosbrother/fragments/MyBookmarkFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookmarkFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->deleteBookmarks:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kosbrother/fragments/MyBookmarkFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookmarkFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private fetchData()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 147
    iget v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->isRecent:I

    sget v2, Lcom/kosbrother/fragments/MyBookmarkFragment;->RECENT_READ_VIEW:I

    if-ne v0, v2, :cond_1

    .line 148
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/novel/reader/api/NovelAPI;->getAllRecentReadBookmarks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarks:Ljava/util/ArrayList;

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v9, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarks:Ljava/util/ArrayList;

    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/novel/reader/api/NovelAPI;->getAllBookmarks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarks:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/kosbrother/fragments/MyBookmarkFragment;
    .locals 3
    .param p0, "isRecent"    # I

    .prologue
    .line 56
    new-instance v1, Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-direct {v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;-><init>()V

    .line 57
    .local v1, "fragment":Lcom/kosbrother/fragments/MyBookmarkFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "bdl":Landroid/os/Bundle;
    const-string v2, "IS_RECNET"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method

.method private setListAdatper(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "bs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "arrayKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 123
    .local v2, "bookMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 124
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/novel/reader/entity/Bookmark;

    .line 126
    .local v3, "bookmark":Lcom/novel/reader/entity/Bookmark;
    invoke-virtual {v3}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    invoke-virtual {v3}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v5, "newBookList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v3}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v3}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 136
    .end local v3    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    .end local v5    # "newBookList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    :cond_1
    new-instance v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;

    invoke-direct {v0}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;-><init>()V

    .line 138
    .local v0, "adapter":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 139
    new-instance v8, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    iget-object v9, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, p0, v9, v6, v7}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;-><init>(Lcom/kosbrother/fragments/MyBookmarkFragment;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->addSection(Lcom/ifixit/android/sectionheaders/Section;)V

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 141
    :cond_2
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarkListView:Lcom/ifixit/android/sectionheaders/SectionListView;

    invoke-virtual {v6, v0}, Lcom/ifixit/android/sectionheaders/SectionListView;->setAdapter(Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;)V

    .line 142
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarkListView:Lcom/ifixit/android/sectionheaders/SectionListView;

    invoke-virtual {v6}, Lcom/ifixit/android/sectionheaders/SectionListView;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarkListView:Lcom/ifixit/android/sectionheaders/SectionListView;

    invoke-virtual {v6}, Lcom/ifixit/android/sectionheaders/SectionListView;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public deleteAndReload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    iput-boolean v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->isShowDeleteCallbackAction:Z

    .line 292
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->deleteBookmarks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->deleteBookmarks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->deleteBookmarks(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 294
    :cond_0
    new-instance v0, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;

    invoke-direct {v0, p0}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;-><init>(Lcom/kosbrother/fragments/MyBookmarkFragment;)V

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->mActivity:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IS_RECNET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->isRecent:I

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "myFragmentView":Landroid/view/View;
    const v1, 0x7f0e00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ifixit/android/sectionheaders/SectionListView;

    iput-object v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarkListView:Lcom/ifixit/android/sectionheaders/SectionListView;

    .line 81
    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->bookmarkListView:Lcom/ifixit/android/sectionheaders/SectionListView;

    invoke-virtual {v1}, Lcom/ifixit/android/sectionheaders/SectionListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 83
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 73
    new-instance v0, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;

    invoke-direct {v0, p0}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;-><init>(Lcom/kosbrother/fragments/MyBookmarkFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public resetIsShowDeleteCallbackAction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    iput-boolean v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment;->isShowDeleteCallbackAction:Z

    .line 299
    new-instance v0, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;

    invoke-direct {v0, p0}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;-><init>(Lcom/kosbrother/fragments/MyBookmarkFragment;)V

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    return-void
.end method
