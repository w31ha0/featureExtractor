.class public Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "ShoppingCartProductsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
        ">;"
    }
.end annotation


# instance fields
.field private cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

.field private filter:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;

.field private filteredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private originalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
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
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->shop_product_row:I

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->originalItems:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->mLock:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->cloneItems(Ljava/util/List;)V

    .line 39
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->originalItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->filteredItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->filteredItems:Ljava/util/List;

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
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 51
    .local v1, "productItem":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->getOriginalItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v1    # "productItem":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_0
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->filter:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$1;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->filter:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->filter:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;

    return-object v0
.end method

.method public getFilteredItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->filteredItems:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->originalItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    if-nez p2, :cond_1

    .line 59
    iget-object v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->layoutItemResourceId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v2, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;

    invoke-direct {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;-><init>()V

    .line 62
    .local v2, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;
    sget v9, Lcom/biznessapps/layout/R$id;->product_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->setProductNameView(Landroid/widget/TextView;)V

    .line 63
    sget v9, Lcom/biznessapps/layout/R$id;->product_price:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->setProductPriceView(Landroid/widget/TextView;)V

    .line 64
    sget v9, Lcom/biznessapps/layout/R$id;->product_small_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->setProductSmallImageView(Landroid/widget/ImageView;)V

    .line 65
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->items:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 71
    .local v3, "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "productName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->getProductNameView()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v9}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 75
    .local v4, "p":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v5

    .line 77
    .local v5, "price":F
    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->getProductPriceView()Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getSmallImageUrl()Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 83
    :try_start_0
    new-instance v7, Ljava/net/URI;

    const-string v9, " "

    const-string v10, "%20"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 84
    .local v7, "uri":Ljava/net/URI;
    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    iget-object v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v9}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Volusion"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 86
    iget-object v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->getProductSmallImageView()Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v4    # "p":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .end local v5    # "price":F
    .end local v6    # "productName":Ljava/lang/String;
    .end local v7    # "uri":Ljava/net/URI;
    .end local v8    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 67
    .end local v2    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;
    .end local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;

    .restart local v2    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;
    goto/16 :goto_0

    .line 87
    .restart local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v4    # "p":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v5    # "price":F
    .restart local v6    # "productName":Ljava/lang/String;
    .restart local v7    # "uri":Ljava/net/URI;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v9}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MyCart"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 88
    iget-object v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->getProductSmallImageView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 90
    .end local v7    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_3
    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartProductItem;->getProductSmallImageView()Landroid/widget/ImageView;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$drawable;->product_default:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public sortListDataByName()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$1;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)V

    .line 196
    .local v0, "nameComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->sort(Ljava/util/Comparator;)V

    .line 197
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method

.method public sortListDataByPrice()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$2;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)V

    .line 216
    .local v0, "priceComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->sort(Ljava/util/Comparator;)V

    .line 217
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->notifyDataSetChanged()V

    .line 218
    return-void
.end method
