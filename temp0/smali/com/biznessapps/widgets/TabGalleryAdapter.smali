.class public Lcom/biznessapps/widgets/TabGalleryAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "TabGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Landroid/widget/Button;",
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
            "Landroid/widget/Button;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/widget/Button;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 23
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
    iget-object v4, p0, Lcom/biznessapps/widgets/TabGalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/biznessapps/widgets/TabGalleryAdapter;->layoutItemResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 28
    .local v3, "viewItem":Landroid/view/View;
    sget v4, Lcom/biznessapps/layout/R$id;->item_layout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 31
    .local v2, "tabContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/biznessapps/widgets/TabGalleryAdapter;->items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 32
    .local v1, "item":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 40
    .local v0, "childCount":I
    invoke-virtual {v1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 44
    .end local v0    # "childCount":I
    :goto_0
    return-object v4

    .line 42
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    move-object v4, v3

    .line 44
    goto :goto_0
.end method
