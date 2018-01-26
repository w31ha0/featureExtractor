.class public Lcom/biznessapps/layout/adapters/InfoItemAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "InfoItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/InfoItem;",
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
            "Lcom/biznessapps/model/InfoItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/InfoItemAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/layout/adapters/InfoItemAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 28
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;-><init>()V

    .line 30
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;
    sget v2, Lcom/biznessapps/layout/R$id;->info_item_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 31
    sget v2, Lcom/biznessapps/layout/R$id;->info_item_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->setImageView(Landroid/widget/ImageView;)V

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/InfoItemAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/InfoItem;

    .line 39
    .local v1, "item":Lcom/biznessapps/model/InfoItem;
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/InfoItemAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 43
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/layout/adapters/InfoItemAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/adapters/InfoItemAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 52
    :cond_0
    return-object p2

    .line 34
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;
    .end local v1    # "item":Lcom/biznessapps/model/InfoItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;
    goto :goto_0

    .line 45
    .restart local v1    # "item":Lcom/biznessapps/model/InfoItem;
    :cond_2
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
