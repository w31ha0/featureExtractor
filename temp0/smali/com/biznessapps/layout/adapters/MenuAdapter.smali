.class public Lcom/biznessapps/layout/adapters/MenuAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/MenuSection;",
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
            "Lcom/biznessapps/model/MenuSection;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    if-nez p2, :cond_1

    .line 28
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/MenuAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/layout/adapters/MenuAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 29
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;-><init>()V

    .line 31
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;
    sget v2, Lcom/biznessapps/layout/R$id;->menu_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/MenuAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/MenuSection;

    .line 40
    .local v1, "item":Lcom/biznessapps/model/MenuSection;
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSection;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSection;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/layout/adapters/MenuAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSection;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/adapters/MenuAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 48
    :cond_0
    return-object p2

    .line 35
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;
    .end local v1    # "item":Lcom/biznessapps/model/MenuSection;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MenuItem;
    goto :goto_0
.end method
