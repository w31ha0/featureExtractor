.class public Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "TwitterTagsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/CommonListEntity;",
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
            "Lcom/biznessapps/model/CommonListEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CommonListEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->twitter_tags_row:I

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/CommonListEntity;

    .line 29
    .local v2, "item":Lcom/biznessapps/model/CommonListEntity;
    if-nez p2, :cond_2

    .line 30
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;->layoutItemResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v1, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;

    invoke-direct {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;-><init>()V

    .line 32
    .local v1, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    sget v3, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 33
    sget v3, Lcom/biznessapps/layout/R$id;->simple_check_box:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 34
    .local v0, "cb":Landroid/widget/CheckBox;
    new-instance v3, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter$1;

    invoke-direct {v3, p0, v2}, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter$1;-><init>(Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;Lcom/biznessapps/model/CommonListEntity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->setCheckbox(Landroid/widget/CheckBox;)V

    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    .end local v0    # "cb":Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/biznessapps/model/CommonListEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2}, Lcom/biznessapps/model/CommonListEntity;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 55
    invoke-virtual {v2}, Lcom/biznessapps/model/CommonListEntity;->hasColor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v2}, Lcom/biznessapps/model/CommonListEntity;->getItemColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v2}, Lcom/biznessapps/model/CommonListEntity;->getItemTextColor()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 60
    :cond_1
    return-object p2

    .line 45
    .end local v1    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;

    .line 46
    .restart local v1    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/model/CommonListEntity;->setSelected(Z)V

    goto :goto_0
.end method
