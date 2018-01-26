.class public Lcom/biznessapps/layout/adapters/ContactListAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/LocationItem;",
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
            "Lcom/biznessapps/model/LocationItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    if-nez p2, :cond_1

    .line 25
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/ContactListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/layout/adapters/ContactListAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;-><init>()V

    .line 28
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;
    sget v2, Lcom/biznessapps/layout/R$id;->location_city_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->setTextViewCity(Landroid/widget/TextView;)V

    .line 29
    sget v2, Lcom/biznessapps/layout/R$id;->location_address_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->setTextViewAddress(Landroid/widget/TextView;)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/ContactListAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/LocationItem;

    .line 36
    .local v1, "item":Lcom/biznessapps/model/LocationItem;
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->getTextViewCity()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->getTextViewAddress()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getAddress1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/layout/adapters/ContactListAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->getTextViewCity()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->getTextViewAddress()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/adapters/ContactListAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 45
    :cond_0
    return-object p2

    .line 32
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;
    .end local v1    # "item":Lcom/biznessapps/model/LocationItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;
    goto :goto_0
.end method
