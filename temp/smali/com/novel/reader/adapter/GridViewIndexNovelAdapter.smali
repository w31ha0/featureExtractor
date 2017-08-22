.class public Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewIndexNovelAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private collect_nove_size:I

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x3

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->activity:Landroid/app/Activity;

    .line 34
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, v3}, Lcom/novel/db/SQLiteNovel;->getLastCollectNovels(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 36
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->collect_nove_size:I

    .line 37
    invoke-virtual {v0, v3}, Lcom/novel/db/SQLiteNovel;->getLastDownloadNovels(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    iput-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    .line 39
    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sput-object v2, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x1

    const v10, 0x7f020069

    .line 56
    move-object v6, p2

    .line 58
    .local v6, "vi":Landroid/view/View;
    sget-object v7, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03003d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 60
    invoke-virtual {v6, v11}, Landroid/view/View;->setClickable(Z)V

    .line 61
    invoke-virtual {v6, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 63
    const v7, 0x7f0e00ac

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 64
    .local v4, "textName":Landroid/widget/TextView;
    const v7, 0x7f0e00ab

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .local v0, "image":Landroid/widget/ImageView;
    const v7, 0x7f0e00ca

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, "textAuthor":Landroid/widget/TextView;
    const v7, 0x7f0e00cb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    .local v2, "textCounts":Landroid/widget/TextView;
    const v7, 0x7f0e00cc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "textFinish":Landroid/widget/TextView;
    const v7, 0x7f0e00cd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 70
    .local v5, "textSerialize":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v8, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 76
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_0
    iget v7, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->collect_nove_size:I

    if-ge p1, v7, :cond_1

    .line 82
    const-string/jumbo v7, "\u6536\u85cf\u5c0f\u8aaa"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v7, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;-><init>(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :goto_1
    return-object v6

    .line 78
    :cond_0
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v8

    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string/jumbo v7, "\u4e0b\u8f09\u5c0f\u8aaa"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v7, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$2;

    invoke-direct {v7, p0, p1}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$2;-><init>(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
