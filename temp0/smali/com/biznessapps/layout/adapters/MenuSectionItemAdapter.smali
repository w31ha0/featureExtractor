.class public Lcom/biznessapps/layout/adapters/MenuSectionItemAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "MenuSectionItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/MenuSectionItem;",
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
            "Lcom/biznessapps/model/MenuSectionItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MenuSectionItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 24
    if-nez p2, :cond_1

    .line 25
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/MenuSectionItemAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/biznessapps/layout/adapters/MenuSectionItemAdapter;->layoutItemResourceId:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;-><init>()V

    .line 28
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;
    sget v3, Lcom/biznessapps/layout/R$id;->menu_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 29
    sget v3, Lcom/biznessapps/layout/R$id;->menu_price_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->setTextViewPrice(Landroid/widget/TextView;)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/MenuSectionItemAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/MenuSectionItem;

    .line 37
    .local v1, "item":Lcom/biznessapps/model/MenuSectionItem;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSectionItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSectionItem;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "price":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "0.00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 42
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->getTextViewPrice()Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSectionItem;->hasColor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSectionItem;->getItemColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/layout/adapters/MenuSectionItemAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSectionItem;->getItemTextColor()I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->getTextViewPrice()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/layout/adapters/MenuSectionItemAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 52
    .end local v2    # "price":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 32
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;
    .end local v1    # "item":Lcom/biznessapps/model/MenuSectionItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;
    goto :goto_0

    .line 44
    .restart local v1    # "item":Lcom/biznessapps/model/MenuSectionItem;
    .restart local v2    # "price":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->getTextViewPrice()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
