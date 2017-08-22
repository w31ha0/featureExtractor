.class public Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewIndexBookmarkAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private bookmark_size:I

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x3

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->activity:Landroid/app/Activity;

    .line 32
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v1, v3}, Lcom/novel/db/SQLiteNovel;->getLastBookmarks(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 34
    .local v0, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->bookmark_size:I

    .line 35
    invoke-virtual {v1, v3}, Lcom/novel/db/SQLiteNovel;->getLastRecentBookmarks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    iput-object v0, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->data:Ljava/util/ArrayList;

    .line 37
    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sput-object v2, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    .line 54
    move-object v4, p2

    .line 56
    .local v4, "vi":Landroid/view/View;
    sget-object v5, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03003c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 58
    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    .line 59
    invoke-virtual {v4, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 60
    new-instance v5, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;-><init>(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v5, 0x7f0e00ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, "textName":Landroid/widget/TextView;
    const v5, 0x7f0e00ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    .local v0, "image":Landroid/widget/ImageView;
    const v5, 0x7f0e00c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "textArticleTitle":Landroid/widget/TextView;
    const v5, 0x7f0e00c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "textSerialize":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v5}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v6, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v5}, Lcom/novel/reader/entity/Bookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v5}, Lcom/novel/reader/entity/Bookmark;->getNovelPic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    const v5, 0x7f020069

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :goto_0
    iget v5, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->bookmark_size:I

    if-ge p1, v5, :cond_1

    .line 93
    const-string/jumbo v5, "\u66f8\u7c64"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_1
    return-object v4

    .line 89
    :cond_0
    iget-object v5, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-object v5, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v5}, Lcom/novel/reader/entity/Bookmark;->getNovelPic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 95
    :cond_1
    const-string/jumbo v5, "\u6700\u8fd1\u95b1\u8b80"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
