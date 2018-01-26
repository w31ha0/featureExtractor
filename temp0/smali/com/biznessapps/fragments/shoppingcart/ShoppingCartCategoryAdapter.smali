.class public Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "ShoppingCartCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$1;,
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
        ">;"
    }
.end annotation


# instance fields
.field private filter:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;

.field private filteredItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private originalItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation
.end field


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
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->shop_category_row:I

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->originalItems:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->mLock:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, p2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->cloneItems(Ljava/util/List;)V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->originalItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->filteredItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->filteredItems:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method protected cloneItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    .line 46
    .local v0, "categoryItem":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->originalItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->originalItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v0    # "categoryItem":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :cond_1
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->filter:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$1;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->filter:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->filter:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;

    return-object v0
.end method

.method public getFilteredItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->filteredItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOriginalItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->originalItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;-><init>()V

    .line 58
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;
    sget v2, Lcom/biznessapps/layout/R$id;->category_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;->setCatNameView(Landroid/widget/TextView;)V

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    .line 65
    .local v1, "item":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;->getCatNameView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->getCatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;->getCatNameView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 72
    :cond_1
    return-object p2

    .line 61
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;
    .end local v1    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCategoryItem;
    goto :goto_0
.end method
