.class public Lcom/biznessapps/layout/adapters/PodcastAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "PodcastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/PodcastItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/PodcastItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/PodcastItem;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->podcast_row:I

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    if-nez p2, :cond_2

    .line 30
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/PodcastAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/layout/adapters/PodcastAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;-><init>()V

    .line 33
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;
    sget v2, Lcom/biznessapps/layout/R$id;->podcast_item_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->setPodcastImageView(Landroid/widget/ImageView;)V

    .line 34
    sget v2, Lcom/biznessapps/layout/R$id;->podcast_subtitle_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->setSubtitleTextView(Landroid/widget/TextView;)V

    .line 35
    sget v2, Lcom/biznessapps/layout/R$id;->podcast_summary_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->setSummaryTextView(Landroid/widget/TextView;)V

    .line 36
    sget v2, Lcom/biznessapps/layout/R$id;->podcast_title_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->setTitleView(Landroid/widget/TextView;)V

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/PodcastAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/PodcastItem;

    .line 44
    .local v1, "item":Lcom/biznessapps/model/PodcastItem;
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->getSubtitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/PodcastItem;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/PodcastItem;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/PodcastItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1}, Lcom/biznessapps/model/PodcastItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/biznessapps/model/PodcastItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/layout/adapters/PodcastAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {v1}, Lcom/biznessapps/model/PodcastItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->getSubtitleTextView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/adapters/PodcastAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/PodcastAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v1}, Lcom/biznessapps/model/PodcastItem;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;->getPodcastImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 56
    :cond_1
    return-object p2

    .line 39
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;
    .end local v1    # "item":Lcom/biznessapps/model/PodcastItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$PodcastItem;
    goto :goto_0
.end method
