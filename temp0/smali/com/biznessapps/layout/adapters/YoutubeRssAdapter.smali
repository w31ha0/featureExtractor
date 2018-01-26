.class public Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "YoutubeRssAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/YoutubeRssItem;",
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
            "Lcom/biznessapps/model/YoutubeRssItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/YoutubeRssItem;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->youtube_rss_row:I

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
    if-nez p2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;-><init>()V

    .line 33
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;
    sget v2, Lcom/biznessapps/layout/R$id;->count_hint_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->setCountHintTextView(Landroid/widget/TextView;)V

    .line 34
    sget v2, Lcom/biznessapps/layout/R$id;->rating_average_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->setRatingAverageTextView(Landroid/widget/TextView;)V

    .line 35
    sget v2, Lcom/biznessapps/layout/R$id;->youtube_item_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->setTitleView(Landroid/widget/TextView;)V

    .line 36
    sget v2, Lcom/biznessapps/layout/R$id;->view_count_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->setViewCountTextView(Landroid/widget/TextView;)V

    .line 37
    sget v2, Lcom/biznessapps/layout/R$id;->youtube_item_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->setYoutubeImageView(Landroid/widget/ImageView;)V

    .line 38
    sget v2, Lcom/biznessapps/layout/R$id;->youtube_info_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->setInfoContainer(Landroid/view/ViewGroup;)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/YoutubeRssItem;

    .line 46
    .local v1, "item":Lcom/biznessapps/model/YoutubeRssItem;
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getCountHintTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getFeedlinkCountHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getRatingAverageTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getRatingAverage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getViewCountTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getStatisticsViewCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getMediaThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getYoutubeImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 54
    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getInfoContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getItemColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getCountHintTextView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getRatingAverageTextView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getViewCountTextView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 61
    :cond_0
    return-object p2

    .line 41
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;
    .end local v1    # "item":Lcom/biznessapps/model/YoutubeRssItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$YoutubeRssItem;
    goto/16 :goto_0
.end method
