.class public Lcom/biznessapps/layout/adapters/RssAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "RssAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/RssItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/RssItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/RssItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    if-nez p2, :cond_2

    .line 33
    iget-object v4, p0, Lcom/biznessapps/layout/adapters/RssAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/biznessapps/layout/adapters/RssAdapter;->layoutItemResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;-><init>()V

    .line 36
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;
    sget v4, Lcom/biznessapps/layout/R$id;->rss_title_label:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 37
    sget v4, Lcom/biznessapps/layout/R$id;->rss_summary_label:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->setTextViewSummary(Landroid/widget/TextView;)V

    .line 38
    sget v4, Lcom/biznessapps/layout/R$id;->rss_date_label:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->setTextViewDate(Landroid/widget/TextView;)V

    .line 39
    sget v4, Lcom/biznessapps/layout/R$id;->rss_item_image:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->setImageView(Landroid/widget/ImageView;)V

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/layout/adapters/RssAdapter;->items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/RssItem;

    .line 46
    .local v1, "item":Lcom/biznessapps/model/RssItem;
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/biznessapps/model/RssItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->getTextViewSummary()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/biznessapps/model/RssItem;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/biznessapps/model/RssItem;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v1}, Lcom/biznessapps/model/RssItem;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v2

    .line 55
    .local v2, "settings":Lcom/biznessapps/model/AppSettings;
    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getRssIconUrl()Ljava/lang/String;

    move-result-object v3

    .line 57
    .end local v2    # "settings":Lcom/biznessapps/model/AppSettings;
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/layout/adapters/RssAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 59
    invoke-virtual {v1}, Lcom/biznessapps/model/RssItem;->hasColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    invoke-virtual {v1}, Lcom/biznessapps/model/RssItem;->getItemColor()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/biznessapps/layout/adapters/RssAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {v1}, Lcom/biznessapps/model/RssItem;->getItemTextColor()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;->getTextViewSummary()Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/biznessapps/layout/adapters/RssAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 64
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    return-object p2

    .line 42
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;
    .end local v1    # "item":Lcom/biznessapps/model/RssItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$RssItem;
    goto/16 :goto_0
.end method
