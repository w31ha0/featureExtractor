.class public Lcom/biznessapps/layout/adapters/MoreTabAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "MoreTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/TabButton;",
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
            "Lcom/biznessapps/model/TabButton;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v5, p0, Lcom/biznessapps/layout/adapters/MoreTabAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/layout/adapters/MoreTabAdapter;->layoutItemResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 28
    new-instance v1, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;

    invoke-direct {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;-><init>()V

    .line 30
    .local v1, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;
    sget v5, Lcom/biznessapps/layout/R$id;->info_item_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 31
    sget v5, Lcom/biznessapps/layout/R$id;->info_item_image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->setImageView(Landroid/widget/ImageView;)V

    .line 32
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/layout/adapters/MoreTabAdapter;->items:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/model/TabButton;

    .line 39
    .local v4, "item":Lcom/biznessapps/model/TabButton;
    if-eqz v4, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "draw":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Lcom/biznessapps/model/TabButton;->getIconId()I

    move-result v2

    .line 42
    .local v2, "iconId":I
    if-lez v2, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/layout/adapters/MoreTabAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/model/Tab;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v4}, Lcom/biznessapps/model/TabButton;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v4}, Lcom/biznessapps/model/TabButton;->getItemColor()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/biznessapps/layout/adapters/MoreTabAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {v4}, Lcom/biznessapps/model/TabButton;->getItemTextColor()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/layout/adapters/MoreTabAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 56
    .end local v0    # "draw":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconId":I
    :cond_0
    return-object p2

    .line 34
    .end local v1    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;
    .end local v4    # "item":Lcom/biznessapps/model/TabButton;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;

    .restart local v1    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;
    goto :goto_0

    .line 46
    .restart local v0    # "draw":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "iconId":I
    .restart local v4    # "item":Lcom/biznessapps/model/TabButton;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/model/AppSettings;->getTabIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/model/Tab;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "imageUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/biznessapps/layout/adapters/MoreTabAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$InfoItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method
