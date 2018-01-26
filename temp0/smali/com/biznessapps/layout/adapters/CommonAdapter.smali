.class public Lcom/biznessapps/layout/adapters/CommonAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/biznessapps/model/CommonListEntity;",
        ">",
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<TT;>;"
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/biznessapps/layout/adapters/CommonAdapter;, "Lcom/biznessapps/layout/adapters/CommonAdapter<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->common_row:I

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
    .line 30
    .local p0, "this":Lcom/biznessapps/layout/adapters/CommonAdapter;, "Lcom/biznessapps/layout/adapters/CommonAdapter<TT;>;"
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/CommonAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/CommonListEntity;

    .line 32
    .local v1, "item":Lcom/biznessapps/model/CommonListEntity;, "TT;"
    if-nez p2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/CommonAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/layout/adapters/CommonAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;-><init>()V

    .line 35
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    sget v2, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    :goto_0
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/CommonListEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v1}, Lcom/biznessapps/model/CommonListEntity;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/biznessapps/model/CommonListEntity;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/layout/adapters/CommonAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v1}, Lcom/biznessapps/model/CommonListEntity;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/adapters/CommonAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 49
    :cond_0
    return-object p2

    .line 38
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    goto :goto_0
.end method
